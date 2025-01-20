namespace StatsInterfaces;

[ToNullObject]
public interface IProject
{
    public string Name { get; }
    public string Description { get; }
    public string SourceCodeUrl { get; }

    
}
