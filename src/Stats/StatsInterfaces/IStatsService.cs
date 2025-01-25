namespace StatsInterfaces;
[ToNullObject]
public interface IStatsService
{
    public IAsyncEnumerable<IProject> GetProjectsAsync();

    public IAsyncEnumerable<IStars> GetStarsAsync(IProject project);
}
