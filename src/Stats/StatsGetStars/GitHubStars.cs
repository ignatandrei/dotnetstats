
namespace StatsGetStars;
public class GitHubStars: IStarsService
{
    private readonly HttpClient client;

    public GitHubStars(HttpClient client)
    {
        this.client = client;
    }

    public  async IAsyncEnumerable<IStars> GetStarsAsync(IProject prj)
   {
        await Task.Yield();
        if(string.IsNullOrWhiteSpace(prj.SourceCodeUrl))
        {
            yield break;
        }
        var sourceCodeUrl = prj.SourceCodeUrl;
        string owner = sourceCodeUrl.Split('/')[3]; // Replace with the repository owner
        string repo = sourceCodeUrl.Split('/')[4];   // Replace with the repository name
        string url = $"https://api.github.com/repos/{owner}/{repo}/stargazers";
        if (client.DefaultRequestHeaders.Count() == 0)
        {
            client.DefaultRequestHeaders.Add("User-Agent", "C# App");
            client.DefaultRequestHeaders.Add("Accept", "application/vnd.github.v3.star+json");
            //figure a way to hide the token
            string token = "Andrei";

            client.DefaultRequestHeaders.Add("Authorization", $"token {token}");
        }
        var response = await client.GetStringAsync(url);
        await foreach (var star in GetStarsAsyncFromString(response))
        {
            star.Project = prj;
            yield return star;
        }
    }


    internal async IAsyncEnumerable<Stars_null> GetStarsAsyncFromString(string data)
    {
        await Task.Yield();
        var stargazers = JsonDocument.Parse(data).RootElement;
        Dictionary<int, int> starsPerYear = new();
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
