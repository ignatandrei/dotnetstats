using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using StatsBlazorUI;
using Radzen;
using StatsObjectsFromAPI;
using StatsHttpFileContext;
using System.IO.Abstractions;



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

builder.Services.AddKeyedScoped("statsconsole_host", (sp, _) => new HttpClient { BaseAddress = new Uri(hostApi) });
builder.Services.AddKeyedScoped("local_host", (sp, _) => new HttpClient { BaseAddress = new Uri(builder.HostEnvironment.BaseAddress) });

builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(hostApi) });
builder.Services.AddKeyedScoped<StatsDataFromAPI>("statsconsole_host", (sp, obj) =>
{
    var http = sp.GetRequiredKeyedService<HttpClient>("statsconsole_host");
    return new StatsDataFromAPI(http);
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

builder.Services.AddSingleton<DotnetStatsContextFromHttpJsonFiles>(sp =>
{
    //var http = new HttpClient { BaseAddress = new Uri(builder.HostEnvironment.BaseAddress) };
    
    return new DotnetStatsContextFromHttpJsonFiles(sp.GetRequiredService<DataToTransmit>());
});

await builder.Build().RunAsync();
