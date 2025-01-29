namespace StatsInterfaces;

[ToNullObject]
public interface IStarsService
{
    public IAsyncEnumerable<IStars> GetStarsAsync(IProject project);

}