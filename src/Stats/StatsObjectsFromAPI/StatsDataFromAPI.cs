
namespace StatsObjectsFromAPI;

public class StatsDataFromAPI : IStatsData
{
    private readonly HttpClient httpApi;
    

    public StatsDataFromAPI(HttpClient httpApi)
    {
        this.httpApi = httpApi;
        
    }
    public IAsyncEnumerable<IProject> GetProjects()
    {
        throw new NotImplementedException();
    }

    public async IAsyncEnumerable<IProjectWithStars> GetProjectsWithStars()
    {
        //TODO: change the url to have in both api and here , not hardcoded
        HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Get, "api/StandAlone_DotNetFoundation/ObtainData/projects/withStars");
        request.SetBrowserResponseStreamingEnabled(true);


        using HttpResponseMessage response = await httpApi.SendAsync(request, HttpCompletionOption.ResponseHeadersRead);

        response.EnsureSuccessStatusCode();
        var options = new JsonSerializerOptions
        {
            PropertyNameCaseInsensitive = true,
            DefaultBufferSize = 128
        };
        options.Converters.Add(new IProjectWithStarsConverter());
        options.Converters.Add(new IProjectConverter());
        options.Converters.Add(new IStarsConverter());
        using Stream responseStream = await response.Content.ReadAsStreamAsync();

        await foreach (IProjectWithStars? prj in JsonSerializer.DeserializeAsyncEnumerable<IProjectWithStars>(
            responseStream, options))
        {
            if (prj == null) continue;

            yield return prj;
            
        }
    }

    public IAsyncEnumerable<IStars> GetStarsData(int year)
    {
        throw new NotImplementedException();
    }

    public IAsyncEnumerable<IProject> RefreshProjects()
    {
        throw new NotImplementedException();
    }

    public IAsyncEnumerable<IStars> RefreshStars()
    {
        throw new NotImplementedException();
    }

    public IAsyncEnumerable<IStars> RefreshStarsData(IProject project)
    {
        throw new NotImplementedException();
    }
}

public record DataForAPI(string url);
