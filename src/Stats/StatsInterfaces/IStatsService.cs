namespace StatsInterfaces;
[ToNullObject]
public interface IProjectService
{
    public IAsyncEnumerable<IProject> GetProjectsAsync();

}

public interface IStarsService
{
    public IAsyncEnumerable<IStars> GetStarsAsync(IProject project);

}