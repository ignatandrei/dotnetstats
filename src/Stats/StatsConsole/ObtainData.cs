
namespace StatsConsole;
public class ObtainDataProd: IApi
{
    public virtual void Register(IEndpointRouteBuilder builder)
    {
        var grp = builder.MapGroup($"/api/{Program.myKey}/ObtainData");

        grp.MapGet("/stars", ([FromKeyedServices(Program.myKey)] IStatsData data,  int yearStars) =>
        {
            return TypedResults.Ok(data.GetStarsData(yearStars));
        });

    }
}
public class ObtainDataAPI:IApi
{
    public virtual void Register(IEndpointRouteBuilder builder)
    {
        var grp = builder.MapGroup($"/api/empty/ObtainData");
        
        grp.MapGet("/stars", ([FromServices()]IStatsData data, int yearStars) =>
        {
            return TypedResults.Ok(data.GetStarsData(yearStars));
        });

    }
}
