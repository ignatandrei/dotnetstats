﻿

namespace StatsInterfaces;
[ToNullObject]
[CompositeProvider]
public interface IStatsData
{
    IAsyncEnumerable<IStars> GetStarsData(int year);
    IAsyncEnumerable<IStars> RefreshStarsData(IProject project);
    IAsyncEnumerable<IProject> RefreshProjects();

    IAsyncEnumerable<IStars> RefreshStars();

    IAsyncEnumerable<IProject> GetProjects();

    IAsyncEnumerable<IProjectWithStars> GetProjectsWithStars();
}
