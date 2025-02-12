using Microsoft.CodeAnalysis;

namespace Stats.Database;

public class StarsDataDB : IStarsData
{
    private readonly DotNetStatsContext context;

    public StarsDataDB(DotNetStatsContext context)
    {
        this.context = context;
    }

    public async IAsyncEnumerable<IStars> GetAllStarsAsync()
    {
        await foreach(var star in  context.Stars.ToAsyncEnumerable())
        {
            Stars_null starRet = new()
            {
                Count = star.Count,
                DateRecording = star.DateRecording,
                //Project = project
            };
            yield return starRet;
        }
    }

    public async IAsyncEnumerable<IStars> GetStarsAsync(IProject project)
    {
        if(string.IsNullOrEmpty(project.SourceCodeUrl)) yield break;

        var projects = await context.Projects.Where(p => p.SourceCodeUrl == project.SourceCodeUrl).ToArrayAsync();
        if (projects.Length != 1)
        {
            throw new InvalidOperationException($"Project not found or more : {projects.Length} for {project.SourceCodeUrl}" );
        }
        var prj = projects[0];
        var stars = await context.Stars.Where(s => s.Idproject == prj.Id).ToArrayAsync();
        foreach (var star in stars)
        {
            Stars_null starRet = new()
            {
                Count = star.Count,
                DateRecording = star.DateRecording,
                Project = project
            };
            yield return starRet;
        }
    }

    public async Task<int> GetStarsCount(IProject project)
    {
        var prj = await context.Projects.FirstOrDefaultAsync(p => p.SourceCodeUrl == project.SourceCodeUrl);
        ArgumentNullException.ThrowIfNull(prj);
        return await context.Stars.Where(s => s.Idproject == prj.Id).SumAsync(s => s.Count);
    }

    public async Task<bool> SaveStars(IStars[] stars)
    {
        if((stars?.Length??0) == 0) return false;
        ArgumentNullException.ThrowIfNull(stars);
        //consolidate the stars
        var consolidate= stars.GroupBy(stars => new { stars.Project?.SourceCodeUrl, stars.DateRecording })            
            .Select(star => new Stars_null
            {
                Count = star.Sum(s => s.Count),
                DateRecording = star.Key.DateRecording,
                Project = star.First().Project
            }).ToArray();

        bool exists = false;
        foreach (var item in consolidate)
        {
            ArgumentNullException.ThrowIfNull(item?.Project);
            var projects = await context.Projects.Where(p => p.SourceCodeUrl == item.Project.SourceCodeUrl).ToArrayAsync();
            if (projects.Length != 1)
            {
                throw new InvalidOperationException($"Project not found or more : {projects.Length} for {item.Project.SourceCodeUrl}");
            }
            var prj = projects[0];
            var existStar = await context.Stars.FirstOrDefaultAsync(s => s.Idproject == prj.Id && s.DateRecording == item.DateRecording);
            if (existStar != null) continue;
            exists = true;
            var star = new Star
            {
                Count = item.Count,
                DateRecording = item.DateRecording,
                Idproject = prj.Id
            };
            context.Stars.Add(star);

        }
        if(!exists) return false;
        await context.SaveChangesAsync();
        return true;
    }
}
