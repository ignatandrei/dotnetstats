using Microsoft.Extensions.DependencyInjection;
using StatsInterfaces;
using StatsInterfaces.Data;
using System.Diagnostics;

var builder = WebApplication.CreateBuilder(args);

builder.AddServiceDefaults();

// Add services to the container.
// Learn more about configuring OpenAPI at https://aka.ms/aspnet/openapi
builder.Services.AddOpenApi();
//string nullObject = "null";
builder.Services.AddTransient<IStatsService,StatsService_null>();
builder.Services.AddTransient<IProject, Project_null>();
builder.Services.AddTransient<IStars, Stars_null>();
builder.Services.AddTransient<IProjectsData, ProjectsData_null>();
builder.Services.AddTransient<IStarsData, StarsData_null>();
builder.Services.AddTransient<IStatsData, StatsData_null>();


//builder.Services.AddTransient(sp =>
//{
//    return sp.GetRequiredKeyedService<IStatsData>(nullObject);
//});

var app = builder.Build();

app.MapDefaultEndpoints();

// Configure the HTTP request pipeline.
//if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}

var yearStars= DateTime.Now.Year;

var data= app.Services.GetRequiredService<IStatsData>();
await foreach (var item in data.GetStarsData(yearStars) )
{
    Console.WriteLine(item.Count);
}
//app.UseHttpsRedirection();

//var summaries = new[]
//{
//    "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
//};

//app.MapGet("/weatherforecast", () =>
//{
//    var forecast =  Enumerable.Range(1, 5).Select(index =>
//        new WeatherForecast
//        (
//            DateOnly.FromDateTime(DateTime.Now.AddDays(index)),
//            Random.Shared.Next(-20, 55),
//            summaries[Random.Shared.Next(summaries.Length)]
//        ))
//        .ToArray();
//    return forecast;
//})
//.WithName("GetWeatherForecast");

app.Run();

//record WeatherForecast(DateOnly Date, int TemperatureC, string? Summary)
//{
//    public int TemperatureF => 32 + (int)(TemperatureC / 0.5556);
//}
