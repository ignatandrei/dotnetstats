
var builder = WebApplication.CreateBuilder(args);
builder.KeyToKey();
builder.AddServiceDefaults();
builder.Services.AddProblemDetails();
// Add services to the container.
// Learn more about configuring OpenAPI at https://aka.ms/aspnet/openapi
builder.Services.AddOpenApi();
//string nullObject = "null";
builder.Services.AddTransient<IProjectService, ProjectService_null>();
builder.Services.AddTransient<IProject, Project_null>();
builder.Services.AddTransient<IStars, Stars_null>();
builder.Services.AddTransient<IProjectsData, ProjectsData_null>();
builder.Services.AddTransient<IStarsData, StarsData_null>();
builder.Services.AddTransient<IStatsData, StatsData_null>();
builder.Services.AddTransient<IStarsService,StarsService_null>();
var con = builder.Configuration.GetConnectionString("DotNetStats");
con += ";MultipleActiveResultSets=True";
builder.Services
    .AddDbContext<DotNetStatsContext>(
                opt => opt.UseSqlServer(con)
    );


builder.Services.AddKeyedScoped<IStatsData, StatsData>(DotNetFoundation);
builder.Services.AddKeyedScoped<IProjectService, StatsServiceDotNetFoundation>(DotNetFoundation);
builder.Services.AddKeyedScoped<IProjectsData, ProjectsDataDB>(DotNetFoundation);
builder.Services.AddKeyedScoped<IStarsService, GitHubStars>(DotNetFoundation);
builder.Services.AddKeyedScoped<IStarsData, StarsDataDB>(DotNetFoundation);
var app = builder.Build();
app.UseExceptionHandler();
app.UseStatusCodePages();
app.MapDefaultEndpoints();

// Configure the HTTP request pipeline.
//if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
    app.UseOpenAPISwaggerUI();

}
Original = app.Services;
var s = app.Services.GetRequiredKeyedService<IStatsData>(DotNetFoundation);

app.MapApis();
var yearStars= DateTime.Now.Year;

//var data= app.Services.GetRequiredService<IStatsData>();
////https://okankaradag.com/en/net-6-0/streaming-json-response-with-iasyncenumerable-in-net-6-0-and-example-fetch-in-javascript
//app.MapGet("/stars", ([FromServices] IStatsData data, [FromRoute] int yearStars) =>
//{
//    return TypedResults.Ok(data.GetStarsData(yearStars));

//});

//app.MapGet("/starsProduction",  ([FromKeyedServices(myKey)] IStatsData data, [FromRoute] int yearStars) =>
//{
//    return TypedResults.Ok(data.GetStarsData(yearStars));

//});

app.Run();

public partial class Program
{
    public const string DotNetFoundation = KeyedServiceProviderFactory.PrefixKey + "DotNetFoundation";
    public static IServiceProvider? Original;
}