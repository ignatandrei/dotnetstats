namespace StatsInterfaces.UI;
[ToNullObject]
public interface IProjectWithStars
{
    public IProject Project { get; }
    public IStars[] Stars { get; }
    public int TotalStars { get; }
    public int LastYearStars { get; }
    public int LastYear { get; }
}
