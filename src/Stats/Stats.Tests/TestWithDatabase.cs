namespace Stats.Tests;

[TestClass]

public class TestWithDatabase
{
    [TestMethod]
    [TestCategory("Database")]
    [TestCategory("Real")]
    public async Task TestRefreshData()
    {
        var dbName = Guid.CreateVersion7(DateTime.UtcNow).ToString();
        string con = "Server=127.0.0.1,1433;User ID=sa;Password=P@ssw0rd;TrustServerCertificate=true;Database=DotNetStats";
        con += ";MultipleActiveResultSets=True";
        ServiceCollection sc = new ();
        sc.AddScoped<IStatsData, StatsData>();
        sc.AddScoped<IProjectService, StatsServiceDotNetFoundation>();
        sc.AddScoped<IProjectsData, ProjectsDataDB>();
        sc.AddScoped<IStarsService, GitHubStars>();
        sc.AddScoped<IStarsData, StarsDataDB>();
        sc.AddSingleton<HttpClient, HttpClient>();
        sc.AddDbContext<DotNetStatsContext>(
                //opt => opt.UseInMemoryDatabase(dbName), contextLifetime: ServiceLifetime.Singleton
                opt=>opt.UseSqlServer(con),contextLifetime: ServiceLifetime.Transient
                );
        var sp = sc.BuildServiceProvider();
        var data = sp.GetRequiredService<IStatsData>();
        await foreach (var project in data.RefreshProjects())
        {
            Console.WriteLine(project.Name);
        }
        await foreach (var star in data.RefreshStars())
        {
            Console.WriteLine(star.Count);
        }
        var prjDB = sp.GetRequiredService<IProjectsData>();
        var prj = await prjDB.GetProjectsAsync().ToArrayAsync();
        prj.ShouldNotBeNull();
        prj.Count().ShouldBeGreaterThan(100);
        var stars= sp.GetRequiredService<IStarsData>();
        

    }

}
