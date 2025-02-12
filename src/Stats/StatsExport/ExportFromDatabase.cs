using StatsInterfaces;
using StatsInterfaces.Data;
using System.Text;
using System.Text.Json;

namespace StatsExport;

public class ExportFromDatabase : IExportFromDatabase
{
    private readonly IProjectsData projectsData;

    public ExportFromDatabase(IProjectsData projectsData)
    {
        this.projectsData = projectsData;
    }
    public async Task<MemoryStream> ExportProjectsJson()
    {
        var ms = new MemoryStream();
        ms.WriteByte(((byte)'['));
        await foreach (var item in projectsData.GetProjectsAsync())
        {
            if (item == null) continue;
            var data = JsonSerializer.Serialize(item);
            if (data == null) continue;
            ms.Write(Encoding.UTF8.GetBytes(data));
        }
        ms.WriteByte((byte)']');
        ms.Position = 0;
        return ms;
    }
}
