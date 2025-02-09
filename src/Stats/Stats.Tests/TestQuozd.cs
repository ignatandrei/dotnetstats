

namespace Stats.Tests;
[TestClass]
public class TestQuozd
{
    [TestMethod]
    public async Task TestDeserialize()
    {
        var data = await File.ReadAllTextAsync(Path.Combine("data", "quozd.md"));
        var s = new StatsServiceQuozd(new HttpClient());
        var projects = await s.GetProjectsAsyncFromString(data).ToArrayAsync();
        Assert.AreEqual(projects.Length, 757);
        var one = projects.FirstOrDefault(it => it.Name == "OneOf");
        Assert.IsNotNull(one);
    }

    [TestMethod]
    public async Task TestThangChung()
    {
        var data = await File.ReadAllTextAsync(Path.Combine("data", "thangchung.md"));
        var s = new StatsServicethangchung(new HttpClient());
        var projects = await s.GetProjectsAsyncFromString(data).ToArrayAsync();
        Assert.AreEqual(projects.Length, 667);
        var one = projects.FirstOrDefault(it => it.Name == "autorest");
        Assert.IsNotNull(one);
    }

}
