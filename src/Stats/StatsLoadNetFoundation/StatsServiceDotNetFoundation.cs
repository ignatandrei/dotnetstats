namespace StatsLoadNetFoundation;

public class StatsServiceDotNetFoundation : IStatsService
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

    
    public async IAsyncEnumerable<IStars> GetStarsAsync(IProject prj)
    {
        await Task.Yield();
        HttpClient client = new HttpClient();
        var sourceCodeUrl = prj.SourceCodeUrl;
        string owner = sourceCodeUrl.Split('/')[3]; // Replace with the repository owner
        string repo = sourceCodeUrl.Split('/')[4];   // Replace with the repository name
        string url = $"https://api.github.com/repos/{owner}/{repo}/stargazers";

        client.DefaultRequestHeaders.Add("User-Agent", "C# App");
        client.DefaultRequestHeaders.Add("Accept", "application/vnd.github.v3.star+json");

        var response = await client.GetStringAsync(url);
        await foreach(var star in GetStarsAsyncFromString(response))
        {
            star.Project = prj;
            yield return star;
        }
    }
    internal async IAsyncEnumerable<Stars_null> GetStarsAsyncFromString(string data)
    {
        await Task.Yield();
        var stargazers = JsonDocument.Parse(data).RootElement;
        Dictionary<int,int> starsPerYear = new();
        foreach (var stargazer in stargazers.EnumerateArray())
        {
            var user = stargazer.GetProperty("user").GetProperty("login").GetString();
            
            var date = stargazer.GetProperty("starred_at");
            var dt = date.GetDateTime().Year;
            if (starsPerYear.ContainsKey(dt))
            {
                starsPerYear[dt]++;
            }
            else
            {
                starsPerYear[dt] = 1;
            }
        }
        foreach (var item in starsPerYear)
        {
            var stars = new Stars_null();
            stars.Count = item.Value;
            stars.DateRecording = new DateOnly(item.Key, 1, 1);
            yield return stars;
        }
    }
}
