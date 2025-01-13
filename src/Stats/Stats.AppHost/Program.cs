var builder = DistributedApplication.CreateBuilder(args);

builder.AddProject<Projects.StatsConsole>("statsconsole");

builder.Build().Run();
