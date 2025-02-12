using Microsoft.EntityFrameworkCore;
using Stats.Database;
using StatsExport;
using StatsInterfaces;
using StatsInterfaces.Data;


var pathToWrite = Environment.GetEnvironmentVariable("pathToWrite");
if (string.IsNullOrWhiteSpace(pathToWrite))
{
    Console.WriteLine("please add a path to write");
    return;
}

var dir = Directory.GetDirectories(pathToWrite);

if (dir?.Length > 0)
{
    if (dir.Any(it=>it.EndsWith("wwwroot")))
        pathToWrite = Path.Combine(pathToWrite, "wwwroot");
}

Console.WriteLine($"writing at {pathToWrite}");
var con = Environment.GetEnvironmentVariable("ConnectionStrings__DotNetStats");
con += ";MultipleActiveResultSets=True";

DbContextOptionsBuilder<DotNetStatsContext> opt = new();

opt.UseSqlServer(con);
DotNetStatsContext context = new(opt.Options);

Console.WriteLine("number projects:"+context.Projects.Count());
IProjectsData projectsData = new ProjectsDataDB(context);

IExportFromDatabase exportFromDatabase = new ExportFromDatabase(context);

var stream = await exportFromDatabase.ExportProjectsJson();
ArgumentNullException.ThrowIfNull(stream);
string fileName = Path.Combine(pathToWrite, "projects.json");
var bytes = stream.ToArray();
await File.WriteAllBytesAsync(fileName, bytes);
Console.WriteLine("exported to " + fileName);


stream = await exportFromDatabase.ExportStarsJson( );
ArgumentNullException.ThrowIfNull(stream);
fileName = Path.Combine(pathToWrite, "stars.json");
bytes = stream.ToArray();
await File.WriteAllBytesAsync(fileName, bytes);
Console.WriteLine("exported to " + fileName);

