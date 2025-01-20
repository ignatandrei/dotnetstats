namespace StatsInterfaces;
[ToNullObject]
public interface IStars
{
    public int Count { get; }
    public DateOnly DateRecording { get; }
    public IProject? Project { get; }
}
