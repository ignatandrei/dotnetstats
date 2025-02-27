using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using StatsBlazorUI;
using Radzen;
using StatsObjectsFromAPI;
using StatsHttpFileContext;
using System.IO.Abstractions;
using StatsInterfaces;
using StatsObjects;
using StatsInterfaces.Data;
using Stats.Database;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore;
using System.Runtime.Intrinsics.X86;
using Microsoft.EntityFrameworkCore.Scaffolding.Internal;



var builder = WebAssemblyHostBuilder.CreateDefault(args);
builder.RootComponents.Add<App>("#app");
builder.RootComponents.Add<HeadOutlet>("head::after");
builder.Services.AddRadzenComponents();
builder.Services.AddSingleton<AllDataProjectsWithStars>();

var hostApi = builder.Configuration["statsconsole_host"];
if (string.IsNullOrEmpty(hostApi))
{
    hostApi = builder.HostEnvironment.BaseAddress;
    if (!hostApi.EndsWith("/"))
    {
        hostApi += "/";
    }
    var dict = new Dictionary<string, string?> { { "statsconsole_host", hostApi } };
    builder.Configuration.AddInMemoryCollection(dict.ToArray());
}
//builder.Services.AddSingleton<DotNetStatsContext>(sp =>
//{
//    return new DotnetStatsContextFromHttpJsonFiles(sp.GetRequiredService<DataToTransmit>());
//});

builder.Services.AddKeyedScoped("statsconsole_host", (sp, _) => new HttpClient { BaseAddress = new Uri(hostApi) });
builder.Services.AddKeyedScoped("local_host", (sp, _) => new HttpClient { BaseAddress = new Uri(builder.HostEnvironment.BaseAddress) });

builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(hostApi) });
builder.Services.AddKeyedScoped<IStatsData>("statsconsole_host", (sp, obj) =>
{
    var http = sp.GetRequiredKeyedService<HttpClient>("statsconsole_host");
    return new StatsDataFromAPI(http);
});
builder.Services.AddKeyedScoped<IStatsData>("local_host", (sp, obj) =>
{
    IProjectService projectService = new ProjectService_null();
    IStarsService starsService = new StarsService_null();
    IProjectsData projectData = new ProjectsDataDB(sp.GetRequiredService<DotNetStatsContext>());
    IStarsData starsData = new StarsDataDB(sp.GetRequiredService<DotNetStatsContext>());
    StatsData st = new(projectService, projectData, starsData, starsService);
    return st;
});

builder.Services.AddKeyedScoped<IStatsData>("both", (sp, obj) =>
{
    var statsDataLocal = sp.GetRequiredKeyedService<IStatsData>("local_host");
    var statsDataAPI = sp.GetRequiredKeyedService<IStatsData>("statsconsole_host");
    StatsData_CP composite = new(statsDataAPI, statsDataLocal);
    composite.UseFirstTheLastOneThatWorks = false;
    return composite;
});

builder.Services.AddSingleton<DotNetStatsContext>(sp =>
{
    DbContextOptionsBuilder<DotNetStatsContext> optionsBuilder = new();
    optionsBuilder.UseInMemoryDatabase("StatsDatabase");
    var cnt = new DotNetStatsContext(optionsBuilder.Options);
    return cnt;
});

builder.Services.AddSingleton<AllDataProjectsWithStars>();


builder.Services.AddSingleton<DataToTransmit>(it =>
{
    var data = new DataToTransmit
    {
        BaseDir = builder.HostEnvironment.BaseAddress,
        Name = "StatsDatabase",
        func = null
    };
    return data;
});


var wah= builder.Build();
//var dataToTransmit = wah.Services.GetRequiredService<DataToTransmit>();
HttpClient client = wah.Services.GetRequiredKeyedService<HttpClient>("local_host");
var context =wah.Services.GetRequiredService<DotNetStatsContext>();
context.Database.EnsureCreated();
foreach (var item in Stats.Database.DotNetStatsContext_Properties.PropNames)
{
    string url = item;
    url += ".json";
    var bytes = await client.GetByteArrayAsync(url);
    var memoryStream = new MemoryStream(bytes);
    memoryStream.Position = 0;
    context.Deserialize(item, memoryStream);
    context.SaveChanges();

    //var stream = new HttpFileStream(memoryStream, item + ".json", false);
    //files.Add(url, stream);
}
Console.WriteLine(context.Projects.OrderDescending().First().Id);

Console.WriteLine(context.Stars.OrderDescending().First().Id);
//dataToTransmit.func = (url) =>
//{
//    var key = files.Keys.ToArray().FirstOrDefault(it => url.EndsWith(it));
//    if (key == null)
//    {
//        throw new Exception($"Key not found for {url}");
//    }
//    ;
//    return files[key];

//};

await wah.RunAsync();
