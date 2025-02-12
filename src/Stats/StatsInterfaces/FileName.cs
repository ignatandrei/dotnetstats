
namespace StatsInterfaces;

public interface IExportFromDatabase
{
    Task<MemoryStream> ExportProjectsJson();
    Task<MemoryStream> ExportStarsJson();

}
