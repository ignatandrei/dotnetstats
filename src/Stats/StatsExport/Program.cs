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
IProjectsData projectsData = new ProjectsData_null();
IExportFromDatabase exportFromDatabase = new ExportFromDatabase(projectsData);
var stream = await exportFromDatabase.ExportProjectsJson();
ArgumentNullException.ThrowIfNull(stream);
string fileName = "project.json";
var bytes = stream.ToArray();
await File.WriteAllBytesAsync(fileName, bytes);
Console.WriteLine("exported to " + fileName);