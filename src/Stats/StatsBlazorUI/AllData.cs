using StatsInterfaces.UI;

namespace StatsBlazorUI;
public class AllDataProjectsWithStars
{
    private List<IProjectWithStars> projectWithStarsData = [];
    public bool FinishStreaming { get; set; }
    public IProjectWithStars[] projectWithStars() {
        return projectWithStarsData.ToArray();
    }
    public int Length => projectWithStarsData.Count;
    public void AddProjectWithStars(params IProjectWithStars[] items)
    {
        projectWithStarsData.AddRange(items);
    }


}
