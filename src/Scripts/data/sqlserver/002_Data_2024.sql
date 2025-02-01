USE [DotNetStats]
GO
SET IDENTITY_INSERT [dbo].[Project] ON 
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (1, N'DocFX', N'https://github.com/dotnet/DocFX/', N'DocFX is a cross-platform, flexible, and customizable static site generator capable of creating documentation pages from Markdown and YAML complete with different layouts, a TOC, and reference APIs created from various languages. This project has been used to create several websites including the original docs.microsoft.com.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (2, N'MvvmCross', N'https://github.com/MvvmCross/MvvmCross', N'MvvmCross is a cross platform MVVM framework which lets you, build clean, pixel perfect, native UIs. Share behavior and business logic in a single codebase across supported platforms, using the Model-View-ViewModel (MVVM) design pattern. MvvmCross is a framework specifically developed for Xamarin and the mobile ecosystem. It supports Xamarin.iOS, Xamarin.Android, Xamarin.Mac, Xamarin.Forms, Universal Windows Platform (UWP) and Windows Presentation Framework (WPF)')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (3, N'SignService', N'https://github.com/dotnet/sign', N'SignService aims to make it easier to integrate code signing into a CI process by providing a secured API for submitting artifacts to be signed by a code signing cert held on the server. It uses Azure AD and Azure Key Vault''s HSM for security.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (4, N'Roslynator', N'https://github.com/dotnet/roslynator/issues', N'Roslynator is a set of code analysis tools for C#, powered by Roslyn.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (5, N'PInvoke', N'https://github.com/dotnet/pinvoke', N'A repo containing all P/Invoke code so you don''t have to import it every time. Ready in consumable NuGet packages. Maintained and updated to support the latest Windows OS.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (6, N'FlubuCore', N'https://github.com/dotnetcore/FlubuCore', N'FlubuCore - Fluent Builder Core" is a cross platform build and deployment automation system. ')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (7, N'Salesforce Toolkits for .NET', N'https://github.com/developerforce/Force.com-Toolkit-for-NET', N'The Salesforce Toolkits for .NET provide an easy way for .NET developers to interact with the Force.com & Chatter REST APIs using native libraries.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (8, N'Xamarin.Auth', N'https://github.com/xamarin/Xamarin.Auth', N'Xamarin.Auth is a cross-platform API for authenticating users and storing their accounts.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (9, N'AspNet Boilerplate', N'https://github.com/aspnetboilerplate/aspnetboilerplate', N'ASP.NET Boilerplate is a general purpose application framework specially designed for new modern web applications. It uses already familiar tools and implements best practices around them to provide you a SOLID development experience.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (10, N'Akka.NET', N'https://github.com/akkadotnet/akka.net', N'Akka.NET is a set of open-source libraries for designing scalable, resilient systems that span processor cores and networks. Akka allows you to focus on meeting business needs instead of writing low-level code to provide reliable behavior, fault tolerance, and high performance.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (11, N'xUnit.net', N'https://github.com/xunit/xunit', N'xUnit.net is a free, open source, community-focused unit testing tool for the .NET Framework. Written by the original inventor of NUnit v2, xUnit.net is the latest technology for unit testing C#, F#, VB.NET and other .NET languages.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (12, N'Python.NET', N'https://github.com/pythonnet/pythonnet', N'Python.NET is a package that gives Python programmers nearly seamless integration with the .NET 4.0+ Common Language Runtime (CLR) on Windows and Mono runtime on Linux and OSX. Python for .NET provides a powerful application scripting tool for .NET developers. Using this package you can script .NET applications or build entire applications in Python, using .NET services and components written in any language that targets the CLR (C#, VB.NET, F#, C++/CLI).')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (13, N'MailKit', N'https://github.com/jstedfast/MailKit', N'MailKit is a cross-platform .NET mail client library with support for IMAP, POP3, and SMTP.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (14, N'Telerik UI for UWP', N'https://github.com/telerik/UI-For-UWP', N'This is an open-source version of Telerik UI for Universal Windows Platform (UWP) by Progress')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (15, N'json-everything', N'https://github.com/json-everything/json-everything/issues', N'This project aims to ensure high-quality support for JSON-based technologies in .Net.  Supports JSON Schema, JSON Path, JSON Patch, and more.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (16, N'WCF', N'https://github.com/dotnet/wcf', N'WCF includes a collection of client-oriented libraries from the Windows Communication Foundation that enable WCF applications built on .NET Core to communicate with WCF services.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (17, N'AutoMapper', N'https://github.com/automapper/automapper', N'AutoMapper is a convention-based, object-to-object mapper. It replaces that boring object value copying code that''s both tedious to write and test.

With straightforward conventions, AutoMapper removes hundreds or thousands of lines of code, enforcing a policy on your DTO design and making it simple to test your mappings.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (18, N'NuGet Trends', N'https://github.com/dotnet/nuget-trends', N'NuGet Trends holds historical data of NuGet packages download numbers. It''s a useful tool for package maintainers to see the download rate of their packages and also for people interested in packages popularity over time. The database has the complete nuget.org catalog which include target framework information. That means that there''s a lot more features we can add, like TFM adoption overtime, dependency graphs etc.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (19, N'Microsoft Azure WebJobs SDK', N'https://github.com/Azure/azure-webjobs-sdk', N'The Azure WebJobs SDK is a framework that simplifies the task of writing background processing code that runs in Azure WebJobs. It includes a declarative binding and trigger system that works with Azure Storage Blobs, Queues and Tables as well as Service Bus. The binding system makes it incredibly easy to write code that reads or writes Azure Storage objects. The trigger system automatically invokes a function in your code whenever any new data is received in a queue or blob. The SDK also provides an integrated Dashboard experience in the Azure management portal, with rich monitoring and diagnostics information for your WebJob runs.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (20, N'NuGet', N'https://github.com/nuget/home', N'NuGet is the package manager for the Microsoft development platform including .NET. The NuGet client tools provide the ability to produce and consume packages. The NuGet Gallery (nuget.org) is the central package repository used by all package authors and consumers.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (21, N'Mono', N'https://github.com/mono/mono', N'Mono is a cross-platform and open source implementation of the .NET framework that was started independently in 2001. The technology was originally developed by Ximian, which was acquired by Novell, then at Novell, then at Xamarin and now Microsoft.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (22, N'Humanizer', N'https://github.com/Humanizr/Humanizer', N'Humanizer meets all your .NET needs for manipulating and displaying strings, enums, dates, times, timespans, numbers and quantities. It is licensed under the MIT (an OSI approved license).')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (23, N'BenchmarkDotNet', N'https://github.com/dotnet/BenchmarkDotNet', N'BenchmarkDotNet is a powerful .NET library for benchmarking.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (24, N''';--have i been pwned? (HIBP)', N'https://github.com/HaveIBeenPwned/PwnedPasswordsAzureFunction', N''';--have i been pwned? (HIBP) is a a free online resource for anyone to quickly assess if they may have been put at risk due to an online account of theirs having been compromised or "pwned" in a data breach.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (25, N'Xamarin.Forms', N'https://github.com/xamarin/Xamarin.Forms', N'Xamarin.Forms provides a way to quickly build native apps for iOS, Android, Windows and macOS, completely in C#.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (26, N'Xamarin Components for Facebook', N'https://github.com/xamarin/facebookcomponents', N'Xamarin Components for Facebook are Xamarin.Android and Xamarin.iOS bindings for Facebook SDKs.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (27, N'TerraFX', N'https://github.com/terrafx', N'A framework for developing multimedia-based applications.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (28, N'.NET Compiler Platform ("Roslyn")', N'https://github.com/dotnet/docs https://github.com/dotnet/roslyn-api-docs', N'The .NET Compiler Platform ("Roslyn") provides open-source C# and Visual Basic compilers with rich code analysis APIs. You can build code analysis tools with the same APIs that Microsoft is using to implement Visual Studio!')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (29, N'std.uritemplate', N'https://github.com/std-uritemplate/std-uritemplate/issues', N'A complete and maintained cross-language implementation of the Uri Template specification RFC 6570 Level 4')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (30, N'Verify', N'https://github.com/VerifyTests/Verify', N'Verify is a snapshot tool that simplifies the assertion of complex data models and documents.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (31, N'LLVMSharp', N'https://github.com/dotnet/llvmsharp', N'LLVMSharp is a multi-platform .NET Standard library for accessing the LLVM infrastructure. The bindings are auto-generated using ClangSharp parsing LLVM-C header files.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (32, N'MiniExcel', N'https://github.com/mini-software/MiniExcel/issues', N'MiniExcel is simple and efficient to avoid OOM''s .NET processing Excel tool.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (33, N'.NET MAUI', N'https://github.com/dotnet/maui', N'.NET Multi-platform App UI (.NET MAUI) lets you build native apps using a .NET cross-platform UI toolkit that targets the mobile and desktop form factors on Android, iOS, macOS, Windows, and Tizen.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (34, N'Bootstrap Blazor', N'https://github.com/dotnetcore/BootstrapBlazor/issues ', N'Bootstrap Blazor is an enterprise-level UI component library based on Bootstrap and Blazor')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (35, N'ASP.NET API Versioning', N'https://github.com/dotnet/aspnet-api-versioning', N'The "Asp" project, more formally known as ASP.NET API Versioning, gives you a powerful, but easy-to-use method for adding API versioning semantics to your new and existing REST services built with ASP.NET. The API versioning extensions
define simple metadata attributes and conventions that you use to describe which API versions are implemented by your services. You don''t need to learn any new routing concepts or change the way you implement your services in ASP.NET today.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (36, N'ML.NET', N'https://github.com/dotnet/machinelearning', N'ML.NET is a cross-platform open-source machine learning framework which makes machine learning accessible to .NET developers.

ML.NET allows .NET developers to develop their own models and infuse custom ML into their applications without prior expertise in developing or tuning machine learning models, all in .NET.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (37, N'.NET nanoFramework', N'https://github.com/nanoframework', N'.NET nanoFramework is a free and open-source platform that enables the writing of managed code applications for constrained embedded devices. It is suitable for many types of projects including IoT sensors, wearables, academic proof of concept, robotics, hobbyist/makers creations or even complex industrial equipment. It makes the development for such platforms easier, faster and less costly by giving embedded developers access to modern technologies and tools used by desktop application developers.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (38, N'OpenMod', N'https://github.com/openmod/openmod/issues', N'OpenMod .NET Plugin Framework')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (39, N'TorchSharp', N'https://github.com/dotnet/TorchSharp/blob/main/README.md', N'A .NET library that provides access to the library that powers PyTorch.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (40, N'Polly', N'https://github.com/App-vNext/Polly', N'Polly is a .NET resilience and transient-fault-handling library that allows developers to express policies such as Retry, Circuit Breaker, Timeout, Bulkhead Isolation, and Fallback in a fluent and thread-safe manner. From version 6.0.1, Polly targets .NET Standard 1.1 and 2.0+.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (41, N'Docker-DotNet', N'https://github.com/dotnet/Docker.DotNet', N'Docker.DotNet allows you to interact with Docker Remote API endpoints in your .NET applications.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (42, N'ClangSharp', N'https://github.com/dotnet/clangsharp', N'ClangSharp provides Clang bindings written in C#. It is self-hosted and auto-generates itself by parsing the Clang C header files using ClangSharpPInvokeGenerator.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (43, N'MahApps.Metro', N'https://github.com/MahApps/MahApps.Metro', N'MahApps.Metro is a framework that allows developers to cobble together a better UI for their own WPF applications with minimal effort, supporting .NET Framework and .NET Core.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (44, N'Android Support for Xamarin.Android', N'https://github.com/xamarin/AndroidSupportComponents', N'Android Support for Xamarin.Android are Xamarin.Android bindings for the Google Android Support Libraries')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (45, N'Stride', N'https://github.com/stride3d/stride', N'Stride is an open-source C# game engine for realistic rendering and VR.

The engine is highly modular and aims at giving game makers more flexibility in their development. It can be used to create not only games but can also serve as a foundation for apps and tools.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (46, N'Unity Container (Unity)', N'https://github.com/unitycontainer/unity', N'Unity Container is a full featured, general-purpose IoC container for use in any type of .NET application.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (47, N'CoreWCF', N'https://github.com/CoreWCF/CoreWCF', N'CoreWCF is a port of Windows Communication Framework (WCF) to .NET Core. The goal of this project is to enable existing WCF projects to move to .NET Core.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (48, N'Ant Design Blazor', N'https://github.com/ant-design-blazor/ant-design-blazor', N'Ant Design Blazor is a set of enterprise-class UI components based on Ant Design and Blazor.

Following the Ant Design specification, we developed this Blazor Components library that contains a set of high quality components and demos for building rich, interactive user interfaces.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (49, N'.NET Bio', N'https://github.com/dotnetbio/bio', N'.NET Bio is an open source library of common bioinformatics functions, intended to simplify the creation of life science applications.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (50, N'Orleans', N'https://github.com/dotnet/orleans', N'Orleans is a framework that provides a straight-forward approach to building distributed high-scale computing applications, without the need to learn and apply complex concurrency or other scaling patterns. It was created by Microsoft Research and designed for use in the cloud. Orleans has been used extensively running in Microsoft Azure by several Microsoft product groups, most notably by 343 Industries as a platform for all of Halo 4 and Halo 5 cloud services, as well as by a number of other projects and companies.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (51, N'NEO Project', N'https://github.com/neo-project', N'The NEO Project is a modern distributed network for the Smart Economy.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (52, N'Watson Webserver', N'https://github.com/dotnet/watsonwebserver/issues ', N' Watson is the fastest, easiest way to build scalable RESTful web servers and services in C#.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (53, N'WorldWide Telescope', N'https://github.com/worldwidetelescope', N'WorldWide Telescope is a visualization environment that enables a computer to function as a virtual telescope — bringing together archival imagery from the world''s best ground- and space-based telescopes for the exploration of the Universe. ')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (54, N'NuGet Package Explorer', N'https://github.com/NuGetPackageExplorer/NuGetPackageExplorer', N'NuGet Package Explorer (NPE) is an application that makes it easy to create and explore NuGet packages. You can load a .nupkg or .snupkg file from disk or directly from a feed such as nuget.org.

')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (55, N'linq2db', N'https://github.com/linq2db/linq2db', N'linq2db - LINQ to DB is the fastest LINQ database access library offering a simple, light, fast, and type-safe layer between your POCO objects and your database.

Architecturally it is one step above micro-ORMs like Dapper, Massive, or PetaPoco, in that you work with LINQ expressions, not with magic strings, while maintaining a thin abstraction layer between your code and the database. Your queries are checked by the C# compiler and allow for easy refactoring.

However, it''s not as heavy as LINQ to SQL or Entity Framework. There is no change-tracking, so you have to manage that yourself, but on the positive side you get more control and faster access to your data.

In other words LINQ to DB is type-safe SQL..')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (56, N'C# language standard', N'https://github.com/dotnet/csharpstandard', N'TC49-TG2 writes the official C# standard. The scope is to standardize the syntax and semantics of a modern, component-based, general purpose, object oriented, and type-safe programming language called C# (pronounced C sharp).')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (57, N'DLR/IronPython2/IronPython3', N'https://github.com/IronLanguages/ironpython3', N'DLR is a framework for implementing dynamic languages on top of the .NET Framework.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (58, N'Open RIA Services', N'https://github.com/OpenRiaServices/OpenRiaServices', N'Open RIA Services is a framework for helping with the development of rich internet connected native "n-tier" applications. It is the evolved Open Source version of WCF RIA Services.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (59, N'Peachpie Compiler Platform', N'https://github.com/peachpiecompiler/peachpie', N'Peachpie is a modern compiler and runtime of PHP for .NET and .NET Core, built on top of Roslyn. It aims to be fully compatible with the PHP language, including PHP 7.1 and any newly released versions.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (60, N'Open Live Writer', N'https://github.com/openlivewriter', N'Open Live Writer makes it easy to write, preview, and post to your blog.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (61, N'.NEXT', N'https://github.com/dotnet/dotNext', N'.NEXT is a family of libraries aimed to extend core .NET functionality with fast Reflection, synchronization primitives for asynchronous code, metaprogramming, async support and other extensions for Expression Trees, dynamic buffer types for efficient I/O, extensions for parsing and encoding data using System.IO.Pipelines, a framework for programming clusters using Raft consensus algorithm. Cluster programming framework includes fully-featured Raft implementation, persistent Write-Ahead Log, replication leader election, and tight integration with ASP.NET Core.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (62, N'.NET MAUI Community Toolkit', N'https://github.com/CommunityToolkit/Maui/issues', N'The .NET MAUI Community Toolkit is a collection of reusable elements for application development with .NET MAUI, including animations, behaviors, converters, effects, and helpers. It simplifies and demonstrates common developer tasks when building iOS, Android, macOS and WinUI applications using .NET MAUI.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (63, N'Elsa Workflows', N'https://github.com/elsa-workflows/elsa-core', N'Elsa Workflows is a set of workflows libraries that enable workflow execution in any .NET Standard application. Workflows can be defined using C# code or using JSON. A workflow designer is provided in the form of an HTML5 web component.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (64, N'NUnit Test Framework', N'https://github.com/nunit/nunit', N'NUnit is a unit testing framework for C#, F#, VB.NET and other .NET languages.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (65, N'ASP.NET Core', N'https://github.com/aspnet/home', N'ASP.NET Core is the next generation of ASP.NET that provides a familiar and modern framework for web and cloud scenarios. It includes the next versions of ASP.NET MVC, Web API, Web Pages and SignalR. It is a high-performance and modular design, and supports full side by side to make it seamless to migrate from on premise to the cloud. These products are actively developed by the ASP.NET team in collaboration with a community of open source developers. Together we are dedicated to creating the best possible platform for web development.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (66, N'Cake', N'https://github.com/cake-build', N'Cake is a cross platform build automation system, built on top of Roslyn and the Mono Compiler, which uses C# as the scripting language.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (67, N'RestSharp', N'https://github.com/restsharp/RestSharp', N'The main purpose of RestSharp is to make synchronous and asynchronous calls to remote resources over HTTP. As the name suggests, the main audience of RestSharp are developers who use REST APIs.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (68, N'DotVVM, Component-based MVVM framework for ASP.NET', N'https://github.com/riganti/dotvvm', N'DotVVM lets you build interactive web UIs with just C# and HTML using the MVVM approach.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (69, N'Piranha CMS', N'https://github.com/PiranhaCMS/piranha.core', N'Piranha CMS is a lightweight and unobtrusive CMS Library for .NET 6. It can be used to add CMS functionality to your existing application or to build a new website from scratch. Piranha CMS is built on a modern and future proof technology stack that ensures that both developers and content editors will get the best experience possible.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (70, N'FluentValidation', N'https://github.com/fluentvalidation/fluentvalidation', N'FluentValidation is a popular .NET library for creating strongly-typed validation rules for objects using a fluent interface.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (71, N'Esquio', N'https://github.com/xabaril/esquio', N'Esquio is a Feature Toggles (aka Feature Flags) and A/B testing framework for .NET Core.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (72, N'React Native for Windows', N'https://github.com/microsoft/react-native-windows', N'React Native for Windows is a framework developed by Facebook that enables you to build world-class application experiences on native platforms using a consistent developer experience based on JavaScript and React. The focus of React Native is on developer efficiency across all the platforms you care about - learn once, write anywhere.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (73, N'.NET API Reference Docs', N'https://github.com/dotnet/dotnet-api-docs', N'This repo contains documentation for the .NET API Reference.

')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (74, N'Xamarin Component for Google Play Services Client Library', N'https://github.com/xamarin/GooglePlayServicesComponents', N'Xamarin Component for Google Play Services Client Library are Xamarin.Android bindings for the Google Play Services Client Library')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (75, N'Orchard Core', N'https://github.com/OrchardCMS/OrchardCore', N'Orchard Core Orchard Core is an open-source modular and multi-tenant application framework built with ASP.NET Core, and a content management system (CMS) built on top of that application framework. All components in Orchard Core can be replaced or extended. Content is built from easily composable building blocks. Modules extend the system in a very decoupled fashion, where a commenting module for example can as easily apply to pages, blog posts, photos or products. A rich UI composition system completes the picture and ensures that you can get the exact presentation that you need for your content.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (76, N'WatsonTCP', N'https://github.com/dotnet/WatsonTcp/issues ', N'WatsonTcp is the easiest way to build TCP-based clients and servers in C#.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (77, N'MSBuild', N'https://github.com/microsoft/msbuild', N'The Microsoft Build Engine, also known as MSBuild, is a platform for building applications.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (78, N'Entity Framework', N'https://github.com/dotnet/efcore', N'Entity Framework is the recommend data access technology for new applications in .NET.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (79, N'Cecil', N'https://github.com/jbevain/cecil', N'Cecil is a library to generate and inspect programs and libraries in the ECMA CIL form.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (80, N'AngleSharp', N'https://github.com/AngleSharp/AngleSharp/issues', N'AngleSharp is a .NET Browser Engine Core, which represents the basis for modern web tooling available to .NET applications in form of a .NET Standard library. The library contains a fully implemented HTML5 parser and a dynamic DOM implementation that can be traversed using L4 query selectors. AngleSharp fully follows the W3C specification and WHATWG references to ensure a maximum compatibility with evergreen browsers.

AngleSharp''s eco-system also features extension libraries such as an integrated CSS3 parser, XPath support, or an experimental JavaScript engine.

The long term vision for AngleSharp is provide all the building blocks for downloading, inspecting, running, and rendering standard web assets within .NET applications.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (81, N'ASP.NET', N'https://github.com/aspnet', N'ASP.NET is an open source web framework, created by Microsoft, for building modern web apps and services with .NET. ASP.NET is cross platform and runs on Windows, Linux, macOS, and Docker.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (82, N'bUnit', N'https://github.com/bUnit-dev/bUnit', N'bUnit is a testing library for Blazor components that make tests look, feel, and runs like regular unit tests. bUnit makes it easy to render and control a component under test''s life-cycle, pass parameter and inject services into it, trigger event handlers, and verify the rendered markup from the component using a built-in semantic HTML comparer.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (83, N'Oqtane', N'https://github.com/oqtane/oqtane.framework', N'Oqtane is a modular application framework built natively on .NET Core and Blazor. It supports multi-tenancy, a fully dynamic page compositing model, designer friendly themes, extensibility via third party modules, and an intuitive relational data model.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (84, N'Spectre.Console', N'https://github.com/spectreconsole', N'Spectre.Console is a .NET 6/.NET Standard 2.0 library that makes it easier to create beautiful, cross platform, console applications.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (85, N'Windows Template Studio', N'https://github.com/Microsoft/WindowsTemplateStudio/', N'Windows Template Studio is a Visual Studio 2017 Extension that accelerates the creation of new Universal Windows Platform (UWP) apps using a wizard-based experience. The resulting UWP project is well-formed, readable code that incorporates the latest Windows 10 features while implementing proven patterns and best practices. Sprinkled throughout the generated code we have links Docs, Stack Overflow and blogs to provide useful insights.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (86, N'WiX Toolset', N'https://github.com/wixtoolset', N'WiX Toolset provides the most powerful set of tools available to create your Windows installation experience.

Seamlessly integrate installation package creation into your development process with text based source code compiled and linked with tasks for MSBuild and Visual Studio integration.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (87, N'MQTTnet', N'https://github.com/dotnet/MQTTnet', N'MQTTnet is a high performance .NET library for MQTT based communication. It provides a MQTT client and a MQTT server (broker) and supports the MQTT protocol up to version 5.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (88, N'Nerdbank.GitVersioning', N'https://github.com/dotnet/Nerdbank.GitVersioning', N'Nerdbank.GitVersioning adds precise, semver-compatible git commit information to every assembly, VSIX, NuGet and NPM package, and more. It implicitly supports all cloud build services and CI server software because it simply uses git itself and integrates naturally in MSBuild, gulp and other build scripts.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (89, N'Orchard', N'https://github.com/OrchardCMS/Orchard', N'Orchard is a free, open source, community-focused Content Management System built on the ASP.NET MVC platform.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (90, N'Silk.NET', N'https://github.com/dotnet/Silk.NET', N'Silk.NET is your one-stop-shop for high-speed .NET multimedia, graphics, and compute; providing bindings to popular low-level APIs such as OpenGL, OpenCL, OpenAL, OpenXR, GLFW, SDL, Vulkan, Assimp, and DirectX. Use Silk.NET to spruce up your games and applications with cross-platform 3D graphics, audio, compute and haptics.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (91, N'Open XML SDK', N'https://github.com/officedev/open-xml-sdk', N'The Open XML SDK provides .NET developers with a set of strongly typed classes that make it easy to read, write and manipulate the parts and content in an Open XML document such as the DOCX, XLSX or PPTX files created by Microsoft Office. It can be used in any .NET solution, and work is underway to enable use of it from Mono as well.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (92, N'Reactive Extensions for .NET - ReactiveX', N'https://github.com/dotnet/reactive', N'Reactive Extensions is a library for composing asynchronous and event-based programs using observable sequences and LINQ-style query operators. Using Rx, developers represent asynchronous data streams with Observables, query asynchronous data streams using LINQ operators, and parameterize the concurrency in the asynchronous data streams using Schedulers. Simply put, Rx = Observables + LINQ + Schedulers.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (93, N'Xamarin Components for Google APIs for iOS', N'https://github.com/xamarin/GoogleApisForiOSComponents', N'Xamarin Components for Google APIs for iOS are Xamarin.iOS bindings for the Google APIs for iOS Libraries')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (94, N'Windows Community Toolkit', N'https://github.com/CommunityToolkit/Windows', N'The Windows Community Toolkit is a collection of controls for WinUI 2, WinUI 3, and Uno Platform developers. It simplifies and demonstrates common developer tasks building experiences for Windows with .NET.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (95, N'ReactiveUI', N'https://github.com/reactiveui/reactiveui', N'An advanced, composable, functional reactive model-view-viewmodel framework for all .NET platforms that is inspired by functional reactive programming. ReactiveUI allows you to abstract mutable state away from your user interfaces, express the idea around a feature in one readable place and improve the testability of your application.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (96, N'Xamarin iOS & Mac', N'https://github.com/xamarin/xamarin-macios', N'These SDKs allow us to create native iOS, tvOS, watchOS and macOS applications using the same UI controls we would in Objective-C and Xcode')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (97, N'Xamarin Android', N'https://github.com/xamarin/xamarin-android', N'Xamarin.Android provides open-source bindings of the Android SDK for use with .NET managed languages such as C#.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (98, N'OmniSharp', N'https://github.com/omnisharp', N'OmniSharp is a family of Open Source projects, each with one goal: To enable a great .NET experience in YOUR editor of choice.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (99, N'.NET Community Toolkit', N'https://github.com/CommunityToolkit/dotnet/issues', N' .NET Community Toolkit is a collection of helpers and APIs that work for all .NET developers and are agnostic of any specific UI platform. The toolkit is maintained and published by Microsoft, and part of the .NET Foundation.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (100, N'Infer.NET', N'https://github.com/dotnet/infer', N'Infer.NET is a framework for running Bayesian inference in graphical models. It can also be used for probabilistic programming.')
GO
INSERT [dbo].[Project] ([ID], [Name], [SourceCodeUrl], [Description]) VALUES (101, N'Finbuckle.MultiTenant', N'https://github.com/Finbuckle/Finbuckle.MultiTenant', N'Finbuckle.MultiTenant is open source multitenancy middleware for .NET.')
GO
SET IDENTITY_INSERT [dbo].[Project] OFF
GO
SET IDENTITY_INSERT [dbo].[Stars] ON 
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (7998, 55, 185, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (7999, 31, 77, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8000, 57, 224, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8001, 7, 13, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8002, 14, 16, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8003, 15, 145, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8004, 23, 195, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8005, 49, 18, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8006, 1, 400, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8007, 12, 177, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8008, 30, 151, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8009, 57, 272, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8010, 58, 6, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8011, 13, 711, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8012, 39, 379, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8013, 55, 352, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8014, 13, 647, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8015, 21, 704, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8016, 31, 62, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8017, 44, 6, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8018, 42, 89, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8019, 63, 1, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8020, 49, 14, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8021, 7, 50, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8022, 38, 21, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8023, 45, 945, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8024, 43, 950, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8025, 3, 31, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8026, 6, 161, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8027, 17, 589, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8028, 13, 759, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8029, 26, 2, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8030, 36, 1914, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8031, 2, 176, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8032, 21, 498, CAST(N'2010-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8033, 61, 129, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8034, 17, 930, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8035, 43, 519, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8036, 59, 185, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8037, 19, 36, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8038, 20, 185, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8039, 11, 415, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8040, 12, 606, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8041, 52, 85, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8042, 12, 758, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8043, 18, 22, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8044, 44, 1, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8045, 50, 1581, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8046, 5, 187, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8047, 18, 14, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8048, 26, 11, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8049, 39, 184, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8050, 58, 9, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8051, 31, 27, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8052, 54, 8, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8053, 1, 504, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8054, 33, 4880, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8055, 55, 81, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8056, 4, 475, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8057, 19, 124, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8058, 44, 8, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8059, 50, 973, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8060, 11, 394, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8061, 12, 35, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8062, 43, 1129, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8063, 55, 12, CAST(N'2011-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8064, 63, 1010, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8065, 5, 183, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8066, 8, 20, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8067, 31, 124, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8068, 57, 345, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8069, 6, 220, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8070, 25, 503, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8071, 32, 809, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8072, 50, 920, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8073, 39, 55, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8074, 22, 644, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8075, 46, 88, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8076, 14, 56, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8077, 25, 1013, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8078, 7, 31, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8079, 16, 466, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8080, 7, 14, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8081, 23, 1277, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8082, 45, 746, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8083, 10, 352, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8084, 13, 519, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8085, 23, 19, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8086, 31, 88, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8087, 34, 509, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8088, 21, 171, CAST(N'2012-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8089, 42, 32, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8090, 63, 1378, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8091, 57, 252, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8092, 6, 71, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8093, 17, 906, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8094, 38, 39, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8095, 20, 62, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8096, 45, 746, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8097, 49, 13, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8098, 50, 972, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8099, 10, 549, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8100, 26, 14, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8101, 52, 53, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8102, 11, 404, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8103, 12, 582, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8104, 19, 21, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8105, 20, 134, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8106, 2, 50, CAST(N'2012-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8107, 5, 156, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8108, 44, 26, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8109, 6, 111, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8110, 17, 320, CAST(N'2011-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8111, 25, 1019, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8112, 43, 1156, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8113, 19, 102, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8114, 46, 110, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8115, 59, 158, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8116, 63, 1426, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8117, 8, 6, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8118, 18, 3, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8119, 26, 11, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8120, 58, 5, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8121, 41, 132, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8122, 11, 27, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8123, 12, 489, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8124, 50, 643, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8125, 33, 2542, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8126, 25, 139, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8127, 40, 1507, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8128, 1, 539, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8129, 22, 823, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8130, 32, 358, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8131, 61, 184, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8132, 11, 389, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8133, 21, 1155, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8134, 47, 393, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8135, 22, 85, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8136, 22, 863, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8137, 40, 1392, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8138, 55, 285, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8139, 62, 662, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8140, 10, 297, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8141, 36, 565, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8142, 54, 341, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8143, 4, 352, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8144, 14, 653, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8145, 41, 286, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8146, 54, 154, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8147, 35, 441, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8148, 46, 172, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8149, 61, 373, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8150, 3, 44, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8151, 13, 8, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8152, 24, 723, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8153, 22, 701, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8154, 26, 14, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8155, 47, 445, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8156, 18, 16, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8157, 40, 110, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8158, 28, 357, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8159, 46, 237, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8160, 10, 323, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8161, 4, 448, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8162, 35, 320, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8163, 39, 66, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8164, 57, 29, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8165, 28, 448, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8166, 40, 644, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8167, 58, 5, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8168, 16, 198, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8169, 42, 169, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8170, 52, 15, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8171, 1, 486, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8172, 9, 163, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8173, 9, 574, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8174, 10, 323, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8175, 35, 355, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8176, 8, 37, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8177, 41, 287, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8178, 50, 1000, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8179, 57, 121, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8180, 15, 30, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8181, 41, 242, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8182, 9, 1569, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8183, 36, 555, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8184, 49, 10, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8185, 24, 37, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8186, 56, 111, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8187, 8, 73, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8188, 16, 80, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8189, 42, 90, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8190, 2, 320, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8191, 40, 1001, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8192, 20, 187, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8193, 23, 1073, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8194, 62, 278, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8195, 15, 226, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8196, 59, 269, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8197, 30, 908, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8198, 55, 338, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8199, 22, 1329, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8200, 23, 865, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8201, 61, 297, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8202, 21, 925, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8203, 21, 591, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8204, 4, 286, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8205, 5, 460, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8206, 13, 299, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8207, 46, 203, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8208, 2, 379, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8209, 20, 133, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8210, 28, 599, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8211, 54, 168, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8212, 4, 392, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8213, 22, 689, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8214, 47, 137, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8215, 48, 1183, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8216, 59, 175, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8217, 3, 44, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8218, 19, 91, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8219, 29, 6, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8220, 3, 106, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8221, 11, 460, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8222, 21, 912, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8223, 43, 575, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8224, 28, 631, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8225, 35, 226, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8226, 43, 166, CAST(N'2011-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8227, 54, 339, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8228, 14, 115, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8229, 7, 63, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8230, 17, 717, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8231, 48, 2465, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8232, 3, 54, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8233, 16, 74, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8234, 42, 41, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8235, 17, 581, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8236, 19, 3, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8237, 7, 38, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8238, 23, 1284, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8239, 49, 12, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8240, 59, 556, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8241, 9, 854, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8242, 10, 483, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8243, 1, 60, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8244, 2, 532, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8245, 42, 216, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8246, 43, 700, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8247, 2, 109, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8248, 8, 49, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8249, 34, 424, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8250, 40, 1671, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8251, 8, 27, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8252, 16, 172, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8253, 48, 750, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8254, 21, 953, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8255, 52, 29, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8256, 23, 1400, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8257, 30, 798, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8258, 41, 258, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8259, 5, 235, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8260, 9, 1886, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8261, 34, 283, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8262, 2, 425, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8263, 17, 168, CAST(N'2012-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8264, 35, 230, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8265, 43, 656, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8266, 59, 162, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8267, 11, 300, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8268, 2, 140, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8269, 20, 230, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8270, 36, 721, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8271, 2, 106, CAST(N'2011-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8272, 18, 32, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8273, 44, 5, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8274, 21, 658, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8275, 50, 993, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8276, 12, 413, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8277, 38, 59, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8278, 49, 24, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8279, 9, 977, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8280, 19, 34, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8281, 1, 403, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8282, 11, 352, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8283, 12, 65, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8284, 33, 2756, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8285, 43, 1135, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8286, 8, 20, CAST(N'2012-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8287, 58, 15, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8288, 25, 58, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8289, 8, 1, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8290, 26, 13, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8291, 23, 1197, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8292, 44, 50, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8293, 55, 165, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8294, 19, 72, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8295, 50, 688, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8296, 7, 14, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8297, 38, 50, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8298, 46, 53, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8299, 6, 29, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8300, 7, 13, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8301, 13, 709, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8302, 21, 582, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8303, 23, 12, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8304, 39, 294, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8305, 49, 21, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8306, 55, 457, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8307, 17, 881, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8308, 32, 677, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8309, 33, 7043, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8310, 54, 271, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8311, 30, 17, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8312, 31, 79, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8313, 57, 277, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8314, 6, 3, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8315, 19, 60, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8316, 7, 28, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8317, 17, 751, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8318, 38, 103, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8319, 59, 237, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8320, 11, 332, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8321, 45, 1225, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8322, 13, 669, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8323, 20, 43, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8324, 31, 110, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8325, 28, 253, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8326, 21, 358, CAST(N'2011-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8327, 2, 215, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8328, 63, 1408, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8329, 43, 957, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8330, 1, 434, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8331, 11, 377, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8332, 12, 2, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8333, 12, 715, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8334, 19, 143, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8335, 26, 7, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8336, 42, 30, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8337, 45, 668, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8338, 52, 105, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8339, 26, 4, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8340, 44, 21, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8341, 5, 155, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8342, 31, 95, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8343, 44, 1, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8344, 55, 40, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8345, 25, 1058, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8346, 1, 368, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8347, 14, 79, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8348, 12, 488, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8349, 22, 621, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8350, 43, 246, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8351, 16, 194, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8352, 50, 1157, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8353, 8, 10, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8354, 5, 22, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8355, 18, 23, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8356, 36, 4293, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8357, 57, 398, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8358, 25, 249, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8359, 40, 1321, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8360, 58, 3, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8361, 22, 16, CAST(N'2012-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8362, 56, 86, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8363, 6, 254, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8364, 32, 992, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8365, 17, 450, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8366, 25, 650, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8367, 31, 97, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8368, 40, 1537, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8369, 57, 339, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8370, 63, 253, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8371, 5, 337, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8372, 31, 99, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8373, 26, 11, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8374, 39, 379, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8375, 45, 716, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8376, 7, 61, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8377, 4, 71, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8378, 14, 23, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8379, 41, 58, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8380, 46, 61, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8381, 6, 59, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8382, 17, 470, CAST(N'2010-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8383, 17, 911, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8384, 55, 328, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8385, 57, 231, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8386, 63, 1180, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8387, 10, 929, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8388, 13, 604, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8389, 52, 78, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8390, 49, 9, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8391, 50, 1245, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8392, 20, 98, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8393, 45, 1662, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8394, 12, 509, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8395, 13, 592, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8396, 33, 5082, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8397, 41, 316, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8398, 1, 536, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8399, 17, 1018, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8400, 2, 293, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8401, 9, 2020, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8402, 16, 138, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8403, 35, 286, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8404, 42, 152, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8405, 58, 11, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8406, 8, 64, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8407, 16, 73, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8408, 24, 38, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8409, 34, 1283, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8410, 56, 110, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8411, 17, 473, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8412, 18, 46, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8413, 41, 272, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8414, 52, 15, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8415, 4, 306, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8416, 2, 357, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8417, 23, 1005, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8418, 46, 240, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8419, 62, 518, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8420, 9, 700, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8421, 40, 1802, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8422, 61, 284, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8423, 5, 123, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8424, 47, 299, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8425, 55, 286, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8426, 15, 183, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8427, 30, 466, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8428, 8, 84, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8429, 48, 622, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8430, 59, 315, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8431, 20, 263, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8432, 28, 32, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8433, 54, 375, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8434, 62, 869, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8435, 22, 856, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8436, 14, 143, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8437, 21, 733, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8438, 30, 628, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8439, 47, 184, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8440, 16, 113, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8441, 29, 30, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8442, 35, 351, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8443, 61, 401, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8444, 4, 350, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8445, 10, 405, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8446, 36, 538, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8447, 28, 662, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8448, 22, 805, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8449, 47, 218, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8450, 56, 418, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8451, 43, 92, CAST(N'2012-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8452, 46, 255, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8453, 3, 101, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8454, 21, 480, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8455, 42, 127, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8456, 8, 76, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8457, 39, 94, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8458, 40, 924, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8459, 10, 262, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8460, 35, 433, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8461, 57, 48, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8462, 3, 16, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8463, 43, 468, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8464, 25, 918, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8465, 41, 29, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8466, 41, 229, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8467, 49, 13, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8468, 59, 329, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8469, 17, 801, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8470, 10, 534, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8471, 48, 33, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8472, 8, 73, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8473, 34, 376, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8474, 11, 403, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8475, 24, 9, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8476, 40, 1575, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8477, 2, 417, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8478, 28, 509, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8479, 9, 710, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8480, 42, 72, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8481, 2, 347, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8482, 23, 1255, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8483, 54, 249, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8484, 19, 54, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8485, 48, 809, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8486, 52, 45, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8487, 55, 255, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8488, 15, 411, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8489, 41, 174, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8490, 16, 209, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8491, 13, 426, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8492, 55, 230, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8493, 5, 270, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8494, 9, 1378, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8495, 9, 5, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8496, 28, 390, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8497, 36, 487, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8498, 46, 245, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8499, 54, 179, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8500, 22, 611, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8501, 4, 445, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8502, 3, 58, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8503, 11, 403, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8504, 13, 323, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8505, 22, 679, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8506, 23, 1100, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8507, 40, 20, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8508, 44, 28, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8509, 20, 162, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8510, 21, 1145, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8511, 9, 1002, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8512, 7, 49, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8513, 28, 420, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8514, 49, 12, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8515, 1, 385, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8516, 35, 441, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8517, 43, 606, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8518, 3, 37, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8519, 10, 292, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8520, 21, 1305, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8521, 14, 69, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8522, 54, 323, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8523, 64, 18, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8524, 64, 108, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8525, 64, 281, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8526, 64, 318, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8527, 64, 338, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8528, 64, 325, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8529, 64, 259, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8530, 64, 217, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8531, 64, 183, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8532, 64, 146, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8533, 64, 156, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8534, 64, 187, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8535, 65, 1428, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8536, 65, 2045, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8537, 65, 1440, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8538, 65, 1079, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8539, 65, 1792, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8540, 65, 6462, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8541, 65, 5039, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8542, 65, 6388, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8543, 65, 3854, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8544, 65, 3254, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8545, 65, 2909, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8546, 67, 249, CAST(N'2009-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8547, 67, 269, CAST(N'2010-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8548, 67, 253, CAST(N'2011-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8549, 67, 141, CAST(N'2012-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8550, 67, 499, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8551, 67, 499, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8552, 67, 786, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8553, 67, 846, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8554, 67, 960, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8555, 67, 1049, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8556, 67, 997, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8557, 67, 740, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8558, 67, 603, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8559, 67, 730, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8560, 67, 604, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8561, 67, 421, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8562, 68, 2, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8563, 68, 21, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8564, 68, 56, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8565, 68, 113, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8566, 68, 117, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8567, 68, 104, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8568, 68, 77, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8569, 68, 80, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8570, 68, 60, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8571, 68, 70, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8572, 68, 53, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8573, 69, 38, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8574, 69, 44, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8575, 69, 231, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8576, 69, 337, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8577, 69, 432, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8578, 69, 302, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8579, 69, 255, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8580, 69, 185, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8581, 69, 216, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8582, 70, 66, CAST(N'2009-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8583, 70, 70, CAST(N'2010-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8584, 70, 43, CAST(N'2011-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8585, 70, 26, CAST(N'2012-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8586, 70, 91, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8587, 70, 150, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8588, 70, 506, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8589, 70, 727, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8590, 70, 929, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8591, 70, 1105, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8592, 70, 1000, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8593, 70, 919, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8594, 70, 996, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8595, 70, 988, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8596, 70, 858, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8597, 70, 686, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8598, 71, 130, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8599, 71, 120, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8600, 71, 72, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8601, 71, 42, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8602, 71, 55, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8603, 71, 10, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8604, 72, 1197, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8605, 72, 1770, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8606, 72, 2264, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8607, 72, 4616, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8608, 72, 2480, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8609, 72, 1379, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8610, 72, 1017, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8611, 72, 811, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8612, 72, 979, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8613, 73, 45, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8614, 73, 71, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8615, 73, 87, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8616, 73, 118, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8617, 73, 149, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8618, 73, 130, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8619, 73, 146, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8620, 74, 28, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8621, 74, 36, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8622, 74, 37, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8623, 74, 55, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8624, 74, 39, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8625, 74, 36, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8626, 74, 32, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8627, 74, 30, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8628, 74, 21, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8629, 75, 14, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8630, 75, 151, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8631, 75, 384, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8632, 75, 667, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8633, 75, 936, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8634, 75, 1039, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8635, 75, 1258, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8636, 75, 932, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8637, 75, 727, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8638, 75, 720, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8639, 75, 660, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8640, 76, 1, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8641, 76, 4, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8642, 76, 28, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8643, 76, 51, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8644, 76, 91, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8645, 76, 98, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8646, 76, 74, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8647, 76, 155, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8648, 76, 100, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8649, 77, 2127, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8650, 77, 416, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8651, 77, 465, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8652, 77, 456, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8653, 77, 420, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8654, 77, 321, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8655, 77, 278, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8656, 77, 275, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8657, 77, 235, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8658, 77, 269, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8659, 78, 931, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8660, 78, 1316, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8661, 78, 1260, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8662, 78, 1258, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8663, 78, 1522, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8664, 78, 1660, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8665, 78, 1347, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8666, 78, 1159, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8667, 78, 1258, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8668, 78, 1134, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8669, 78, 994, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8670, 79, 138, CAST(N'2010-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8671, 79, 51, CAST(N'2011-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8672, 79, 17, CAST(N'2012-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8673, 79, 75, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8674, 79, 95, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8675, 79, 153, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8676, 79, 189, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8677, 79, 257, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8678, 79, 257, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8679, 79, 352, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8680, 79, 243, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8681, 79, 220, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8682, 79, 286, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8683, 79, 240, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8684, 79, 212, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8685, 80, 54, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8686, 80, 73, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8687, 80, 394, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8688, 80, 500, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8689, 80, 554, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8690, 80, 577, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8691, 80, 660, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8692, 80, 582, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8693, 80, 481, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8694, 80, 414, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8695, 80, 525, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8696, 80, 381, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8697, 82, 31, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8698, 82, 320, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8699, 82, 241, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8700, 82, 188, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8701, 82, 225, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8702, 82, 156, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8703, 83, 249, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8704, 83, 389, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8705, 83, 319, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8706, 83, 244, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8707, 83, 350, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8708, 83, 379, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8709, 85, 1, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8710, 85, 741, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8711, 85, 436, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8712, 85, 356, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8713, 85, 232, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8714, 85, 230, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8715, 85, 294, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8716, 85, 235, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8717, 85, 196, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8718, 87, 140, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8719, 87, 403, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8720, 87, 596, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8721, 87, 617, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8722, 87, 649, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8723, 87, 804, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8724, 87, 741, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8725, 87, 586, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8726, 88, 9, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8727, 88, 18, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8728, 88, 29, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8729, 88, 144, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8730, 88, 173, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8731, 88, 264, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8732, 88, 203, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8733, 88, 225, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8734, 88, 163, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8735, 88, 179, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8736, 89, 533, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8737, 89, 496, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8738, 89, 398, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8739, 89, 362, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8740, 89, 188, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8741, 89, 135, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8742, 89, 82, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8743, 89, 73, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8744, 89, 65, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8745, 89, 53, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8746, 90, 74, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8747, 90, 326, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8748, 90, 881, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8749, 90, 956, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8750, 90, 1074, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8751, 90, 929, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8752, 91, 589, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8753, 91, 166, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8754, 91, 234, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8755, 91, 357, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8756, 91, 380, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8757, 91, 362, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8758, 91, 394, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8759, 91, 427, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8760, 91, 388, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8761, 91, 409, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8762, 91, 370, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8763, 92, 17, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8764, 92, 183, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8765, 92, 395, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8766, 92, 771, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8767, 92, 802, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8768, 92, 901, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8769, 92, 826, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8770, 92, 631, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8771, 92, 566, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8772, 92, 500, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8773, 92, 626, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8774, 92, 547, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8775, 93, 33, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8776, 93, 22, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8777, 93, 27, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8778, 93, 40, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8779, 93, 33, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8780, 93, 23, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8781, 93, 21, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8782, 93, 18, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8783, 93, 8, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8784, 94, 227, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8785, 94, 394, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8786, 95, 202, CAST(N'2010-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8787, 95, 138, CAST(N'2011-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8788, 95, 79, CAST(N'2012-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8789, 95, 237, CAST(N'2013-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8790, 95, 450, CAST(N'2014-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8791, 95, 601, CAST(N'2015-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8792, 95, 763, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8793, 95, 675, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8794, 95, 712, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8795, 95, 966, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8796, 95, 843, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8797, 95, 767, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8798, 95, 657, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8799, 95, 571, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8800, 95, 475, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8801, 96, 604, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8802, 96, 136, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8803, 96, 575, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8804, 96, 327, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8805, 96, 223, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8806, 96, 170, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8807, 96, 119, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8808, 96, 147, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8809, 96, 192, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8810, 97, 573, CAST(N'2016-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8811, 97, 196, CAST(N'2017-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8812, 97, 274, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8813, 97, 216, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8814, 97, 180, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8815, 97, 145, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8816, 97, 117, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8817, 97, 120, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8818, 97, 118, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8819, 99, 301, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8820, 99, 1310, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8821, 99, 858, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8822, 99, 680, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8823, 100, 877, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8824, 100, 246, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8825, 100, 144, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8826, 100, 93, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8827, 100, 87, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8828, 100, 54, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8829, 100, 59, CAST(N'2024-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8830, 101, 55, CAST(N'2018-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8831, 101, 133, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8832, 101, 218, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8833, 101, 235, CAST(N'2021-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8834, 101, 245, CAST(N'2022-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8835, 101, 243, CAST(N'2023-01-01' AS Date))
GO
INSERT [dbo].[Stars] ([ID], [IDProject], [Count], [DateRecording]) VALUES (8836, 101, 225, CAST(N'2024-01-01' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Stars] OFF
GO
