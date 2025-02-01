
namespace StatsGetStars;
public class GitHubStars: IStarsService
{
    private readonly HttpClient client;
    private readonly ISettingsData? data;

    public GitHubStars(HttpClient client, ISettingsData? data)
    {
        this.client = client;
        this.data = data;
    }

    public  async IAsyncEnumerable<IStars> GetStarsAsync(IProject prj)
   {
        await Task.Yield();
        if(string.IsNullOrWhiteSpace(prj.SourceCodeUrl))
        {
            yield break;
        }
        var sourceCodeUrl = prj.SourceCodeUrl;
        var spit = sourceCodeUrl.Split('/');
        if(spit.Length < 5)
        {
            yield break;
        }
        string owner = spit[3]; // Replace with the repository owner
        string repo = spit[4];   // Replace with the repository name
        if(repo.Contains(" "))
        {
            repo = repo.Split(" ")[0].Trim();
        }
        string url = $"https://api.github.com/repos/{owner}/{repo}/stargazers";
        if (client.DefaultRequestHeaders.Count() == 0)
        {
            client.DefaultRequestHeaders.Add("User-Agent", "C# App for stars");
            client.DefaultRequestHeaders.Add("Accept", "application/vnd.github.v3.star+json");
            //figure a way to hide the token
            var token = data?.Token;
            if(!string.IsNullOrWhiteSpace(token))
                client.DefaultRequestHeaders.Add("Authorization", $"token {token}");
        }
        string response= "";
        List<string> responses = [];
        try {
            //response = await client.GetStringAsync(url);
            while (!string.IsNullOrWhiteSpace(url))
            {
                var httpResponse = await client.GetAsync(url);
                response = await httpResponse.Content.ReadAsStringAsync();
                responses.Add(response);

                if (httpResponse.Headers.TryGetValues("Link", out var linkHeaders))
                {
                    url = ParseNextPageUrl(linkHeaders.FirstOrDefault());
                }
                else
                {
                    url = null;
                }
            }
        }
        catch(Exception ex)
        {
            //TODO : until when ?
            //TODO: add logging
            Console.WriteLine($"for {url } - {ex.Message}");
            yield break;
        }
        foreach(var content in responses)
        {
            await foreach (var star in GetStarsAsyncFromString(content))
            {
                star.Project = prj;
                yield return star;
            }
        }
        
    }

    private string? ParseNextPageUrl(string? linkHeader)
    {
        if (string.IsNullOrWhiteSpace(linkHeader))
        {
            return null;
        }

        var links = linkHeader.Split(',');
        foreach (var link in links)
        {
            var segments = link.Split(';');
            if (segments.Length == 2 && segments[1].Contains("rel=\"next\""))
            {
                var url = segments[0].Trim().Trim('<', '>');
                return url;
            }
        }

        return null;
    }

    internal async IAsyncEnumerable<Stars_null> GetStarsAsyncFromString(string data)
    {
        
        await Task.Yield();
        Dictionary<int, int> starsPerYear = new();
        try
        {
            var stargazers = JsonDocument.Parse(data).RootElement;
            try
            {
                var nr = stargazers.GetArrayLength();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"{ex.Message} {data}");
                throw;
            }
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
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            throw;
        }
        foreach (var star in starsPerYear)
        {
            var stars = new Stars_null();
            stars.Count = star.Value;
            stars.DateRecording = new DateOnly(star.Key, 1, 1);
            yield return stars;
        }
    }

    
}
