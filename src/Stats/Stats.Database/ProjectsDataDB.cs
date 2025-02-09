namespace Stats.Database;
public class ProjectsDataDB : IProjectsData
{
    private readonly DotNetStatsContext context;

    public ProjectsDataDB(DotNetStatsContext context)
    {
        this.context = context;
    }
    public async IAsyncEnumerable<IProject> GetProjectsAsync()
    {
        await foreach(var p in context.Projects.OrderBy(it=>it.Name).AsAsyncEnumerable())
        {
            yield return p; 
        }
    }

    public async Task<bool> SaveProjects(IProject[] projects)
    {
        if ((projects?.Length ?? 0) == 0) return false;
        bool exists = false;
        ArgumentNullException.ThrowIfNull(projects);
        
        projects = projects
            .Where(p => p != null)
            .Where(it => !string.IsNullOrWhiteSpace(it.SourceCodeUrl))
            .DistinctBy(p=>p.SourceCodeUrl)
            .ToArray();
        foreach (var project in projects!)
        {
            var url = project.SourceCodeUrl;
            if(url.EndsWith("/"))url= url.Substring(0, url.Length - 1);
            var existingProject = await context.Projects.FirstOrDefaultAsync(p => p.SourceCodeUrl == url);
            if (existingProject != null) continue;
            exists = true;
            var p = new Project
            {
                Name = project.Name,
                Description = project.Description,
                SourceCodeUrl = url
            };
            context.Projects.Add(p.MaxDimension());
        }
        if(!exists) return false;
        await context.SaveChangesAsync();
        return exists;
    }
}
