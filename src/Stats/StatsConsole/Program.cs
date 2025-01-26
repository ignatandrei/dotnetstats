using KeyToKey;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.DependencyInjection;
using StatsInterfaces;
using StatsInterfaces.Data;
using StatsObjects;
using System.Diagnostics;

var builder = WebApplication.CreateBuilder(args);
builder.KeyToKey();
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

const string myKey = KeyedServiceProviderFactory.PrefixKey + "Production";
builder.Services.AddKeyedScoped<IStatsData, StatsData>(myKey);

var app = builder.Build();

app.MapDefaultEndpoints();

// Configure the HTTP request pipeline.
//if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}

var yearStars= DateTime.Now.Year;

var data= app.Services.GetRequiredService<IStatsData>();
//https://okankaradag.com/en/net-6-0/streaming-json-response-with-iasyncenumerable-in-net-6-0-and-example-fetch-in-javascript
app.MapGet("/stars", ([FromServices] IStatsData data, [FromRoute] int yearStars) =>
{
    return TypedResults.Ok(data.GetStarsData(yearStars));

});

app.MapGet("/starsProduction",  ([FromKeyedServices(myKey)] IStatsData data, [FromRoute] int yearStars) =>
{
    return TypedResults.Ok(data.GetStarsData(yearStars));

});

app.Run();

