using Microsoft.Extensions.Options;

namespace StatsConsole;
public class ObtainData
{
    private readonly string key;

    public ObtainData(string key)
    {
        this.key = key;
    }
    public virtual void Register(IEndpointRouteBuilder builder)
    {
        string route = key;
        if (string.IsNullOrWhiteSpace(key))
        {
            route = "nullObject";
        }
        IStatsData data;
        if (string.IsNullOrEmpty(key))
        {
            data = Program.Original!.GetRequiredService<IStatsData>();
        }
        else
        {
            data = Program.Original!.GetRequiredKeyedService<IStatsData>(key);
        }
        var grp = builder.MapGroup($"/api/{route}/ObtainData");

        grp.MapGet("/stars/getYear", (int yearStars) => GetAllStars(data,yearStars));
        grp.MapPost("/projects/refresh/", () => RefreshProjects(data));
        grp.MapPost("/stars/refresh", () => RefreshStars(data));
        //grp.MapGet("/test", (ISettingsData data)=> data.Token);


    }

    

    private async IAsyncEnumerable<IStars> RefreshStars(IStatsData data)
    {
        Console.WriteLine("TEWSST");

        await foreach (var star in data.RefreshStars())
        {
            await Task.Delay(TimeSpan.FromMilliseconds(1));
            yield return star;
        }
    }

    public static Results<Ok<IAsyncEnumerable<IProject>>, InternalServerError<string>> RefreshProjects(IStatsData data)
    {
        try
        {
            return TypedResults.Ok(data.RefreshProjects());
        }        
        catch(Exception ex)
        {
            //TODO: until when ?
            //TODO: log exception
            return TypedResults.InternalServerError(ex.Message);
        }
    }
    public static Results<Ok<IAsyncEnumerable<IStars>>,InternalServerError<string>> GetAllStars(IStatsData data,int yearStars)
    {
        try
        {
            
            return TypedResults.Ok(data.GetStarsData(yearStars));
        }
        catch(Exception ex)
        {
            //TODO: until when ?
            //TODO: log exception
            return TypedResults.InternalServerError(ex.Message);
        }
    }

}

