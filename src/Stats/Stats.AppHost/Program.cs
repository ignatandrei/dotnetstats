using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
//docker network prune -f
var builder = DistributedApplication.CreateBuilder(args);
builder.Services.AddLogging(log=>
{
    log.ClearProviders();
    log.AddConsole();
    log.SetMinimumLevel(LogLevel.Information);
});
var paramPass = builder.AddParameter("password", "P@ssw0rd");

var sqlserver = builder.AddSqlServer("sqlserver",paramPass,1433)
    //.WithArgs("pwd","&","ls")
    // Mount the init scripts directory into the container.
    .WithBindMount("./sqlserverconfig", "/usr/config")
    // Mount the SQL scripts directory into the container so that the init scripts run.
    .WithBindMount("../../Scripts/data/sqlserver", "/docker-entrypoint-initdb.d")
    // Run the custom entrypoint script on startup.
    .WithEntrypoint("/usr/config/entrypoint.sh")
    // Configure the container to store data in a volume so that it persists across instances.
    .WithDataVolume() 
    // Keep the container running between app host sessions.
    .WithLifetime(ContainerLifetime.Persistent)

    ;
var db= sqlserver.AddDatabase("DotNetStats");

var api = builder
    .AddProject<Projects.StatsConsole>("statsconsole")
    .WithReference(db)
    .WaitFor(db)
    ;

var ui= builder.AddWebAssemblyProject<Projects.StatsBlazorUI>("blazorUI", api)
    .WithReference(api)
    .WaitFor(api)
    ;

var exportToJson = builder.AddProject<Projects.StatsExport>("statsExport")
    .WithReference(ui)
    .WaitFor(ui)
    .AddPathToEnvironmment(new Projects.StatsBlazorUI(),"pathToWrite")
    ;

builder.Build().Run();
