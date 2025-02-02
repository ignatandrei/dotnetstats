using StatsInterfaces.UI;
using System.Threading.Tasks;

namespace StatsObjects;

public class StatsData : IStatsData
{
    private readonly IProjectService statsService;
    private readonly IProjectsData crudProjects;
    private readonly IStarsData crudStars;
    private readonly IStarsService starsService;

    public StatsData(IProjectService statsService,IProjectsData crudProjects,IStarsData crudStars, IStarsService starsService)
    {
        this.statsService = statsService;
        this.crudProjects = crudProjects;
        this.crudStars = crudStars;
        this.starsService = starsService;
    }
    public async IAsyncEnumerable<IProject> RefreshProjects()
    {
        var projects = await statsService.GetProjectsAsync().ToArrayAsync();
        ArgumentNullException.ThrowIfNull(projects);
        var save = await crudProjects.SaveProjects(projects);
        await foreach(var project in crudProjects.GetProjectsAsync())
        {
            yield return project;
        }
    }

    public async IAsyncEnumerable<IStars> RefreshStarsData(IProject project)
    {
        var lst= new List<IStars>();
        await foreach (var star in starsService.GetStarsAsync(project))
        {
            lst.Add(star);
            yield return star;
        }
        if (lst.Count > 0)
        {
            var currentYear = DateTime.UtcNow.Year;
            var arr = lst.Where(s => s.DateRecording.Year != currentYear).ToArray();
            var saveStar = await crudStars.SaveStars(arr);
        }
    }


    public async IAsyncEnumerable<IStars> GetStarsData(int year)
    {

        var projects = await crudProjects.GetProjectsAsync().ToArrayAsync();
        if (projects.Length == 0)
        {
            projects = await RefreshProjects().ToArrayAsync();
        }
        foreach (var item in projects)
        {
            bool foundStars = false;
            Console.WriteLine("getting stars for " + item.Name);
            await foreach (var star in crudStars.GetStarsAsync(item))
            {
                if (star.DateRecording.Year == year)
                {
                    //Console.WriteLine(star.Count);
                    yield return star;
                    foundStars = true;
                    break;
                }
            }
            if (!foundStars)
            {
                Console.WriteLine("No stars found for " + item.Name);
                await foreach (var star in RefreshStarsData(item))
                {
                    if (star.DateRecording.Year == year)
                    {
                        yield return star;
                        break;
                    }
                }
            }

        }
    }

    public async IAsyncEnumerable<IStars> RefreshStars()
    {

        await foreach (var project in crudProjects.GetProjectsAsync())
        {
            var nrStars = await crudStars.GetStarsCount(project);
            Console.WriteLine("!!!!!project:" + project.Name +" stars" + nrStars);
            if (nrStars == 0)
            {
                await foreach (var star in RefreshStarsData(project))
                {
                    yield return star;
                }
            }
        }

    }

    public IAsyncEnumerable<IProject> GetProjects()
    {
        return crudProjects.GetProjectsAsync();
    }

    public async IAsyncEnumerable<IProjectWithStars> GetProjectsWithStars()
    {
        await foreach (var project in GetProjects())
        {
            var stars = await crudStars.GetStarsAsync(project).ToArrayAsync();
            var ret = new ProjectWithStars_null();
            ret.Project = project;
            ret.Stars = stars;
            if(stars?.Length>0)
            {
                ret.TotalStars = stars.Sum(s => s.Count);
                ret.LastYear = stars.Max(s => s.DateRecording.Year);
                ret.LastYearStars = stars.Where(s => s.DateRecording.Year == ret.LastYear).Sum(s => s.Count);
            }
            yield return ret;
        }
    }
}
