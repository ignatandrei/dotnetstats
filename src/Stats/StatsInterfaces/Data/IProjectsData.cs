namespace StatsInterfaces.Data;
[ToNullObject]
public interface IProjectsData
{
    IAsyncEnumerable<IProject> GetProjectsAsync();
    Task<bool> SaveProjects(IProject[] projects);

}
