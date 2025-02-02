using System.Text.Json;

namespace Aspire.Hosting;
public static class BlazorWebAssemblyProjectExtensions
{
    public static IResourceBuilder<ProjectResource> AddWebAssemblyProject<TProject>(
        this IDistributedApplicationBuilder builder, string name,
        IResourceBuilder<ProjectResource> api)
        where TProject : Aspire.Hosting.IProjectMetadata, new()
    {
        var nameOfParameter = api.Resource.Name + "_host";
        var projectBuilder = builder.AddProject<TProject>(name);
        var p = new TProject();
        string hostApi = p.ProjectPath;
        var dir = Path.GetDirectoryName(hostApi);
        ArgumentNullException.ThrowIfNull(dir);
        var wwwroot = Path.Combine(dir, "wwwroot");
        if (!Directory.Exists(wwwroot))
        {
            Directory.CreateDirectory(wwwroot);
        }
        var file = Path.Combine(wwwroot, "appsettings.json");
        if (!File.Exists(file))
            File.WriteAllText(file, "{}");
        projectBuilder = projectBuilder.WithEnvironment(ctx =>
        {
            if (api.Resource.TryGetEndpoints(out var end))
            {
                if (end.Any())
                {

                    var fileContent = File.ReadAllText(file);

                    Dictionary<string, object>? dict;
                    if (!string.IsNullOrWhiteSpace(fileContent))
                        dict = new Dictionary<string, object>();
                    else
                        dict = JsonSerializer.Deserialize<Dictionary<string, object>>(fileContent!);

                    ArgumentNullException.ThrowIfNull(dict);
                    var val = end.FirstOrDefault()?.AllocatedEndpoint?.UriString??"";
                    if (!val.EndsWith("/"))
                        val += "/";
                    dict[nameOfParameter] = val;
                    JsonSerializerOptions opt = new JsonSerializerOptions(JsonSerializerOptions.Default)
                    { WriteIndented = true };
                    File.WriteAllText(file, JsonSerializer.Serialize(dict, opt));
                    ctx.EnvironmentVariables[nameOfParameter] = val;

                }

            }

        });
        return projectBuilder;

    }
}
