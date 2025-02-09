
var builder = WebApplication.CreateBuilder(args);
builder.KeyToKey();
builder.AddServiceDefaults();
builder.Services.AddProblemDetails();
string allowAllCors = "AllowAll";
builder.Services.AddCors(options =>
{
    options.AddPolicy(name: allowAllCors,
                      policy =>
                      {
                          policy
                          .AllowAnyHeader()
                          .SetIsOriginAllowed((host) => true)
                          .AllowAnyMethod()
                          .AllowCredentials()                          
                          ;
                      });
});

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
builder.Services.Configure<SettingsData_null>(builder.Configuration.GetSection("SettingsData"));
builder.Services.AddTransient<ISettingsData, SettingsData_null>(sp=>sp.GetRequiredService<IOptionsMonitor<SettingsData_null>>().CurrentValue);
var con = builder.Configuration.GetConnectionString("DotNetStats");
con += ";MultipleActiveResultSets=True";
builder.Services
    .AddDbContext<DotNetStatsContext>(
                opt => opt.UseSqlServer(con),contextLifetime: ServiceLifetime.Transient
    );


builder.Services.AddKeyedScoped<IStatsData, StatsData>(DotNetFoundation);
builder.Services.AddKeyedScoped<IProjectService, StatsServiceDotNetFoundation>(DotNetFoundation);
builder.Services.AddKeyedScoped<IProjectsData, ProjectsDataDB>(DotNetFoundation);
builder.Services.AddKeyedScoped<IStarsService, GitHubStars>(DotNetFoundation);
builder.Services.AddKeyedScoped<IStarsData, StarsDataDB>(DotNetFoundation);

builder.Services.AddKeyedScoped<IStatsData, StatsData>(Quozd);
builder.Services.AddKeyedScoped<IProjectService, StatsServiceQuozd>(Quozd);
builder.Services.AddKeyedScoped<IProjectsData, ProjectsDataDB>(Quozd);
builder.Services.AddKeyedScoped<IStarsService, GitHubStars>(Quozd);
builder.Services.AddKeyedScoped<IStarsData, StarsDataDB>(Quozd);


var app = builder.Build();
app.UseExceptionHandler();
app.UseStatusCodePages();
app.UseCors(allowAllCors);
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
    public const string Quozd = KeyedServiceProviderFactory.PrefixKey + "Quozd";
    public static IServiceProvider? Original;
}