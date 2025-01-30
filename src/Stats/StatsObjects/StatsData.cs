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

        await foreach (var star in starsService.GetStarsAsync(project))
        {
            var saveStar = await crudStars.SaveStars([star]);
            yield return star;
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
            Console.WriteLine("project" + project.Name);
            await foreach (var star in RefreshStarsData(project))
            {
                yield return star;
            }
        }

    }
}
