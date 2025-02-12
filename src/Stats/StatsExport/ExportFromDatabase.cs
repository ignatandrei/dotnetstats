using Microsoft.EntityFrameworkCore;
using Stats.Database;
using StatsInterfaces;
using StatsInterfaces.Data;
using System.Text;
using System.Text.Json;

namespace StatsExport;

public class ExportFromDatabase : IExportFromDatabase
{
    private readonly DotNetStatsContext dotNetStatsContext;

    public ExportFromDatabase(DotNetStatsContext dotNetStatsContext)
    {
        this.dotNetStatsContext = dotNetStatsContext;
    }
    public async Task<MemoryStream> ExportProjectsJson()
    {
        var ms = new MemoryStream();
        var items = await dotNetStatsContext.Projects.ToArrayAsync();
        JsonSerializer.Serialize(ms,items);
        ms.Position = 0;
        return ms;
    }
    public async Task<MemoryStream> ExportStarsJson()
    {
        var ms = new MemoryStream();
        var items = await dotNetStatsContext.Stars.ToArrayAsync();
        JsonSerializer.Serialize(ms,items);
        ms.Position = 0;
        return ms;
    }
}
