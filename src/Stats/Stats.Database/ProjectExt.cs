
namespace Stats.Database;

partial class Project: IProject
{
    public Project MaxDimension()
    {
        if (this.Name.Length > 150)
        {
            this.Name = this.Name.Substring(0, 150);
        }
        if(this.SourceCodeUrl.Length > 250)
        {
            this.SourceCodeUrl = this.SourceCodeUrl.Substring(0, 250);
        }
        if(this.Description?.Length > 1500)
        {
            this.Description = this.Description.Substring(0, 250);
        }
        return this;
    }
}
