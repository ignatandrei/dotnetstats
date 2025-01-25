
namespace StatsInterfaces;
[ToNullObject]
public interface IStatsData
{
    IAsyncEnumerable<IStars> GetStarsData(int year);
}
