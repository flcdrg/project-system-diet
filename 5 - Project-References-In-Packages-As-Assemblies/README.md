# A tools package with project references

An application that you are packaging up as a NuGet package (as a tool for example), that has a project reference to a class library (that is also being packaged).

The problem is that the package for the tool ends up with an unwanted package dependency (on the package from the class library), and the class library assembly is not copied into the tools package.

Use the approach outlined in https://github.com/NuGet/Home/issues/3891#issuecomment-395357038 to include the class library

Set PrivateAssets to stop the package dependency being added.

## References

- https://github.com/NuGet/Home/issues/3891#issuecomment-395357038
- https://docs.microsoft.com/en-us/dotnet/core/tools/csproj
