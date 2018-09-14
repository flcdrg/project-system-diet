# AppendTargetFrameworkToOutputPath

The output path changes by default with the new project system. One good reason for this is that it allows projects that target multiple frameworks to have separate directories for each target.

When upgrading legacy projects, you may have code that makes assumptions about the directory depth (eg. loading in data files). Rather than having to modify all that code immediately, you can set `AppendTargetFrameworkToOutputPath` to false in the project to revert to the old project system behaviour.

See https://compiledexperience.com/blog/posts/multi-targeting-output-path for more info.
