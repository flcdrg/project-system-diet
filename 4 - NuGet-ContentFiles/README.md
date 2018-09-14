# NuGet contentFiles

NuGet packages can have content files. Those files are ignored when the package is added to a project using PackageReference. The solution is to update the package so that it has `contentFiles` as a target.

You also don't need to use a .nuspec file anymore - you can create a NuGet package directly from the project file and set all the metadata using properties.

## References

- https://docs.microsoft.com/en-us/nuget/reference/nuspec#including-content-files
- https://blog.nuget.org/20160126/nuget-contentFiles-demystified.html
- https://docs.microsoft.com/en-us/dotnet/core/tools/csproj#nuget-metadata-properties