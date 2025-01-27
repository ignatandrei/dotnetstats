
namespace StatsConsole;
public class ObtainDataProd: IApi
{
    public virtual void Register(IEndpointRouteBuilder builder)
    {
        var grp = builder.MapGroup($"/api/{Program.DotNetFoundation}/ObtainData");
        //does not work with [FromKeyedServices(Program.DotNetFoundation)]
        //Microsoft.Extensions.DependencyInjection.ServiceLookup.ServiceProviderEngineScope
        grp.MapGet("/stars", (int yearStars) =>
        {
            var data= Program.Original!.GetRequiredKeyedService<IStatsData>(Program.DotNetFoundation);
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
