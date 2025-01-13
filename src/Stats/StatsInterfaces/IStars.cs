namespace StatsInterfaces;

public interface IStars
{
    public int Count { get; }
    public DateOnly DateRecording { get; }
    public IProject? Project { get; }
}
