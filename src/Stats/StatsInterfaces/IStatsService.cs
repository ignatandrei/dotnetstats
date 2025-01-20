namespace StatsInterfaces;
[ToNullObject]
public interface IStatsService
{
    public IAsyncEnumerable<IProject> GetProjectsAsync();

    public IAsyncEnumerable<IStars> GetStarsAsync(IProject project);
}
[ToNullObject]
public interface IStatsDefinitions
{
    public IStatsService[] statsServices { get; }
    public IAsyncEnumerable<IStars> GetStars();

}