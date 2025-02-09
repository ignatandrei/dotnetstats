using System.Net.Http;

namespace StatsLoadquozd;

public class StatsServicethangchung : IProjectService
{
    private readonly HttpClient httpClient;
    public StatsServicethangchung(HttpClient httpClient)
    {
        this.httpClient = httpClient;

    }
    public async IAsyncEnumerable<IProject> GetProjectsAsync()
    {
        var url = "https://raw.githubusercontent.com/thangchung/awesome-dotnet-core/refs/heads/master/README.md";
        var data = await httpClient.GetStringAsync(url);
        await foreach (var item in GetProjectsAsyncFromString(data))
        {
            yield return item;
        }
    }

    internal async IAsyncEnumerable<IProject> GetProjectsAsyncFromString(string data)
    {
        await Task.Yield();
        var findUrl = "(https://github.com/";
        var findStart = "* [";
        var findEnd = ")";
        var index = 0;
        var newIndex = data.IndexOf(findStart);
        while ((newIndex = data.IndexOf(findStart, index)) > 0)
        {
            var urlWith = data.Substring(newIndex, data.IndexOf(findEnd, newIndex) - newIndex);
            if (!urlWith.Contains(findUrl))
            {
                index = newIndex + 1;
                continue;
            }
            var newStart = data.IndexOf(findStart, newIndex + 1);
            if (newStart == -1) newStart = data.Length;
            urlWith = data.Substring(newIndex, newStart - newIndex);
            //* [OneOf](https://github.com/mcintyre321/OneOf) - OneOf provides discriminated unions for C# with exhaustive compile time matching.

            var prj = FromString(urlWith);
            yield return prj;
            index = newIndex + 1;
        }

    }
    private IProject FromString(string value)
    {
        var parts = value.Split(']', '(', ')');
        if (parts.Length < 4)
            throw new ArgumentException("this is not correct" + value);
        var url = parts[2];
        var name = parts[0].Replace("* [", "");
        var desc = parts[3].Substring(2).Trim();
        return new Project_null()
        {
            Name = name,
            Description = desc,
            SourceCodeUrl = url
        };
    }
}

