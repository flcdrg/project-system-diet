# Portable PDBs and including them in NuGet packages and SourceLink

Portable PDBs were first introduced to support .NET Core and are the default format when using the new project system (even when targetting .NET Framework)

They are much smaller than the traditional PDB format, so you can include them in NuGet packages alongside the assembly without being too concerned about package bloat.

Currently, they are not copied to the output directory for .NET Framework targetted projects. Work around this limitation by adding the `SourceLink.Copy.PdbFiles` package to the consuming project.

SourceLink adds information to the PDB so that debuggers can download the original source code for that package, allowing you to F11/Step Into the source code for an assembly.

SourceLink support for a NuGet package can be enabled by adding the appropriate SourceLink NuGet package to your package project. There are different packages for difference source repository providers. eg. For a package on Github, you'd use the `Microsoft.SourceLink.GitHub` package. See https://github.com/dotnet/sourcelink/ for a list of all the current supported providers.

## References

- https://github.com/dotnet/core/blob/master/Documentation/diagnostics/portable_pdb.md
- https://github.com/ctaggart/SourceLink
- https://github.com/dotnet/core/blob/master/Documentation/diagnostics/source_link.md
- https://github.com/dotnet/sourcelink/