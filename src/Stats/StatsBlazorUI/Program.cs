using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using StatsBlazorUI;
using MudBlazor.Services;



var builder = WebAssemblyHostBuilder.CreateDefault(args);
builder.RootComponents.Add<App>("#app");
builder.RootComponents.Add<HeadOutlet>("head::after");
builder.Services.AddMudServices();

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

builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(builder.HostEnvironment.BaseAddress) });

await builder.Build().RunAsync();
