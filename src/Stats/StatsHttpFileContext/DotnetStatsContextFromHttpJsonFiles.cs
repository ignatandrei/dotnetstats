using kDg.FileBaseContext.Extensions;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyInjection.Extensions;
using Stats.Database;
using System.IO.Abstractions;

namespace StatsHttpFileContext;
public class DataToTransmit
{
    public string BaseDir { get; set; }
    public Func<string, FileSystemStream>? func { get; set; }
    public string Name { get; set; }
}
public class DotnetStatsContextFromHttpJsonFiles : DotNetStatsContext
{
    private readonly DataToTransmit data;

    public DotnetStatsContextFromHttpJsonFiles(DataToTransmit data) :base()
    {
        this.data = data;
    }
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseFileBaseContextDatabase(data.Name,data.BaseDir, services =>
        {
            services.RemoveAll<IFileSystem>();
            services.AddSingleton<IFileSystem>(new HttpFileSystem(data));
        });
        base.OnConfiguring(optionsBuilder);
    }

}