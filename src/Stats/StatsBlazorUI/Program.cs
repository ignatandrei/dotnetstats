using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using StatsBlazorUI;
using Radzen;
using StatsObjectsFromAPI;



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

builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(hostApi) });
builder.Services.AddScoped<StatsDataFromAPI>();
builder.Services.AddSingleton<AllDataProjectsWithStars>();
await builder.Build().RunAsync();
