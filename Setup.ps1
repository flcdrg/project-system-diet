
# chocolatey
if (Test-Path "..\choco") {
    Push-Location ..\choco
    git checkout -- *
    git clean -xdf

    nuget restore src
    
    & .\build.debug.bat

    Invoke-Item src\chocolatey.sln
    
    code .

    Pop-Location
}

$projects = (Get-ChildItem -Depth 0 -Directory).Name

git checkout -- *
git clean -xdf

# Remove any existing versions of this package
if (Test-Path "$env:USERPROFILE\.nuget\packages\classlibrarywithpdbs\") {
    Remove-Item "$env:USERPROFILE\.nuget\packages\classlibrarywithpdbs\" -Recurse -Force
}

# This one is special
dotnet build "6 - PDBs-From-Referenced-Packages\ClassLibraryWithPdbs"

$projects | ForEach-Object { 
    nuget restore $_
    msbuild /v:m $_

    # Launch VS
    Get-ChildItem $_ -Filter *.sln | Invoke-Item
}

[Diagnostics.Process]::Start('https://github.com/dotnet/project-system')
[Diagnostics.Process]::Start('https://github.com/onovotny/MSBuildSdkExtras')
[Diagnostics.Process]::Start('https://github.com/davkean/maket')
[Diagnostics.Process]::Start('https://docs.microsoft.com/en-us/dotnet/core/tools/csproj#nuget-metadata-properties')

code .