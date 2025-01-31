namespace StatsInterfaces.Data;

[ToNullObject]
public interface IStarsData
{

    IAsyncEnumerable<IStars> GetStarsAsync(IProject project);
    Task<int> GetStarsCount(IProject project);
    Task<bool> SaveStars(IStars[] stars);
}
