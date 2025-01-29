namespace StatsLoadNetFoundation;

public class StatsServiceDotNetFoundation : IProjectService
{
    private readonly HttpClient httpClient;

    public StatsServiceDotNetFoundation(HttpClient httpClient)
    {
        this.httpClient = httpClient;

    }
    public async  IAsyncEnumerable<IProject> GetProjectsAsync()
    {
        var url = "https://dotnetfoundation.org/api/projects/projects?$select=Title,GitHubIssuesUrl,SourceCodeUrl,UrlName,Summary,SiteUrl";
        var data = await httpClient.GetStringAsync(url);
        await foreach(var item in GetProjectsAsyncFromString(data))
        {
            yield return item;
        }
    }
    internal async IAsyncEnumerable<IProject> GetProjectsAsyncFromString(string data)
    {
        await Task.Yield();
        var api = JsonSerializer.Deserialize<NetFoundationApiResponse>(data);
        ArgumentNullException.ThrowIfNull(api);
        foreach (var item in api.value)
        {
            if (item == null) continue;
            var prj = new Project_null();
            prj.Name = item.Title;
            prj.SourceCodeUrl = item.GitHubCode();
            prj.Description = item.Summary;
            yield return prj;
        }
        if(!string.IsNullOrWhiteSpace(api.NextLink))
        {
            var data2 = await httpClient.GetStringAsync(api.NextLink);
            await foreach (var item in GetProjectsAsyncFromString(data2))
            {
                yield return item;
            }
        }
    }

    
    
}
