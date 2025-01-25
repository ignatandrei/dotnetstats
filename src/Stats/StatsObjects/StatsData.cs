namespace StatsObjects;

public class StatsData : IStatsData
{
    private readonly IStatsService statsService;
    private readonly IProjectsData crudProjects;
    private readonly IStarsData crudStars;

    public StatsData(IStatsService statsService,IProjectsData crudProjects,IStarsData crudStars)
    {
        this.statsService = statsService;
        this.crudProjects = crudProjects;
        this.crudStars = crudStars;
    }
    public async IAsyncEnumerable<IStars> GetStarsData(int year)
    {
        
        var projects = await crudProjects.GetProjectsAsync().ToArrayAsync();
        if (projects.Length == 0)
        {
            projects = await statsService.GetProjectsAsync().ToArrayAsync();
            ArgumentNullException.ThrowIfNull(projects);
            var save = await crudProjects.SaveProjects(projects);
            Debug.Assert(save);
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
                await foreach (var star in statsService.GetStarsAsync(item))
                {
                    var saveStar = await crudStars.SaveStars([star]);
                    Debug.Assert(saveStar);
                    if (star.DateRecording.Year == year)
                    {
                        //Console.WriteLine(star.Count);
                        yield return star;
                        break;
                    }
                }
            }
        }

    }
}
