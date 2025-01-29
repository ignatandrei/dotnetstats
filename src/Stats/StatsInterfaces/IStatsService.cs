namespace StatsInterfaces;
[ToNullObject]
public interface IProjectService
{
    public IAsyncEnumerable<IProject> GetProjectsAsync();

}
