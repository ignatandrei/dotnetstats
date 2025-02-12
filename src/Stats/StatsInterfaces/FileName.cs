
namespace StatsInterfaces;

public interface IExportFromDatabase
{
    Task<MemoryStream> ExportProjectsJson();
}
