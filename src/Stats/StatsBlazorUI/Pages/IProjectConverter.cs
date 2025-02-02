namespace StatsBlazorUI.Pages;

using System;
using System.Text.Json;
using System.Text.Json.Serialization;
using StatsInterfaces;

public class IProjectConverter : JsonConverter<IProject>
{
    public override IProject Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
    {
        // Deserialize the JSON to the concrete type Project
        return JsonSerializer.Deserialize<Project_null>(ref reader, options);
    }

    public override void Write(Utf8JsonWriter writer, IProject value, JsonSerializerOptions options)
    {
        // Serialize the concrete type Project
        JsonSerializer.Serialize(writer, (Project_null)value, options);
    }
}

public class IStarsConverter : JsonConverter<IStars>
{
    public override IStars Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
    {
        // Deserialize the JSON to the concrete type Project
        return JsonSerializer.Deserialize<Stars_null>(ref reader, options);
    }

    public override void Write(Utf8JsonWriter writer, IStars value, JsonSerializerOptions options)
    {
        // Serialize the concrete type Project
        JsonSerializer.Serialize(writer, (Stars_null)value, options);
    }
}

