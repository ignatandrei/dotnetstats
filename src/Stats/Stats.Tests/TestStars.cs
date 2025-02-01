namespace Stats.Tests;

[TestClass]
public sealed class TestStars
{
    [TestMethod]
    public async Task TestDeserialize()
    {
        var data = await File.ReadAllTextAsync(Path.Combine("data", "stargazers.json"));
        var s = new GitHubStars(new HttpClient(),null);
        var stars = await s.GetStarsAsyncFromString(data).ToArrayAsync();
        stars=stars.OrderBy(it => it.DateRecording).ToArray();
        Assert.AreEqual(stars.Length, 2);
        Assert.AreEqual(stars[0].DateRecording.Year, 2020);
        Assert.AreEqual(stars[0].Count, 22);
        Assert.AreEqual(stars[1].DateRecording.Year, 2021);
        Assert.AreEqual(stars[1].Count, 8);

    }

    [TestMethod]
    [TestCategory("Real")]
    public async Task TestReal()
    {
        var data = await File.ReadAllTextAsync(Path.Combine("data", "netfoundation.json"));
        IStarsService s = new GitHubStars(new HttpClient(),null);
        Project_null project = new ();
        project.SourceCodeUrl = "https://github.com/ignatandrei/rscg_examples";
        project.Name = "rscg_examples";
        project.Description = "examples for Roslyn Code Generators";
        
        var stars = await s.GetStarsAsync(project).ToArrayAsync();
        stars.Length.ShouldBeGreaterThanOrEqualTo(3);
        foreach (var star in stars)
        {
            star.Count.ShouldBeGreaterThan(0);
        }
    }
    

}
