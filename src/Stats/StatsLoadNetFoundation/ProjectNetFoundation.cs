

namespace StatsLoadNetFoundation;
class NetFoundationApiResponse
{
    [JsonPropertyName("value")]
    public NetFoundationProject[] value { get; set; } = [];

    [JsonPropertyName("@odata.nextLink")]
    public string NextLink { get; set; }=string.Empty;

}
class NetFoundationProject
{

    public string UrlName { get; set; }= string.Empty;
    public string SiteUrl { get; set; } = string.Empty;
    public string SourceCodeUrl { get; set; } = string.Empty;
    public string Title { get; set; } = string.Empty;   
    public string Summary { get; set; } = string.Empty;
    public string GitHubIssuesUrl { get; set; } = string.Empty;
    
    public string GitHubCode()
    {
        if (!string.IsNullOrWhiteSpace(GitHubIssuesUrl))
            return GitHubIssuesUrl;

        return SourceCodeUrl;
    }
}
