dotnet new tool-manifest
#dotnet tool install --local coverlet.console
#dotnet tool install --local csharpier
#dotnet tool install --local csharptotypescript.clitool
#dotnet tool install --local docfx
#dotnet tool install --local dotnet-aop
dotnet tool install --local dotnet-depends
dotnet tool install --local dotnet-ef
dotnet tool install --local dotnet-outdated-tool
dotnet tool install --local dotnet-project-licenses
dotnet tool install --local dotnet-property
dotnet tool install --local dotnet-repl
#dotnet tool install --local dotnet-reportgenerator-globaltool
#dotnet tool install --local dotnetsay
#dotnet tool install --local dotnet-sql-cache
dotnet tool install --local dotnetthx
#dotnet tool install --local gitversion.tool
#dotnet tool install --local grate
#dotnet tool install --local mapster.tool
dotnet tool install --local microsoft.dotnet-httprepl
#dotnet tool install --local moniker.cli
dotnet tool install --local netpackageanalyzerconsole
#dotnet tool install --local nswag.consolecore
dotnet tool install --local powershell
dotnet tool install --local run-script
#dotnet tool install --local strawberryshake.tools
dotnet tool install --local watch2
#dotnet tool install --local xunit-cli
# add global json for run script
$file = "global.json"

$multiLineText = @"
{
  `"scripts`": {
    `"build`": `"dotnet build --configuration Release`",
    `"test`": `"dotnet test --configuration Release`",
    `"ci": `"dotnet r build && dotnet r test`"    
  }
}
"@


New-Item $file -ItemType File -Value $multiLineText