namespace Stats.Tests;

[TestClass]
public sealed class TestNetFoundation
{
    [TestMethod]
    public async Task TestDeserialize()
    {
        var data= await File.ReadAllTextAsync(Path.Combine("data","netfoundation.json"));
        var s = new StatsServiceDotNetFoundation(new HttpClient());
        var projects = await s.GetProjectsAsyncFromString(data).ToArrayAsync();
        Assert.AreEqual(projects.Length, 100);
    }
    [TestMethod]
    [TestCategory("Real")]
    public async Task TestReal()
    {
        var data = await File.ReadAllTextAsync(Path.Combine("data", "netfoundation.json"));
        var s = new StatsServiceDotNetFoundation(new HttpClient());
        var projects = await s.GetProjectsAsync().ToArrayAsync();
        Assert.IsTrue(projects.Length > 100);
    }
}
