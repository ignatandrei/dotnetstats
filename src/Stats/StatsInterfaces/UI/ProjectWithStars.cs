namespace StatsInterfaces.UI;
[ToNullObject]
public interface IProjectWithStars
{
    public IProject Project { get; }
    public IStars[] Stars { get; }
}
