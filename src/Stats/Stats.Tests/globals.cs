global using StatsLoadNetFoundation;
global using Shouldly;
global using StatsGetStars;
global using StatsInterfaces;
global using Microsoft.Extensions.DependencyInjection;
global using Stats.Database;
global using StatsInterfaces.Data;
global using StatsObjects;
global using Microsoft.EntityFrameworkCore;

[assembly: Parallelize(Scope = ExecutionScope.MethodLevel)]
