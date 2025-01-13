namespace StatsInterfaces;

public interface IStatsService
{
    public IAsyncEnumerable<IProject> GetProjectsAsync();

    public IAsyncEnumerable<IStars> GetStarsAsync(IProject project);
}

public interface IStatsDefinitions
{
    public IStatsService[] statsServices { get; }
    public IAsyncEnumerable<IStars> GetStars();

}