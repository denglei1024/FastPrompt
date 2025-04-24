@{
    ModuleManifestVersion = '1.0'
    RootModule = 'FastPrompt.psm1'
    ModuleVersion = '0.1.0'
    PowerShellVersion = '7.0'
    Author = '邓磊'
    CompanyName = 'Self'
    Copyright = '(c) 2025 邓磊. All rights reserved.'
    Description = 'A clean, fast, git-aware custom PowerShell prompt with .NET SDK display.'
    FunctionsToExport = '*'
    CmdletsToExport   = @()
    VariablesToExport = @()
    AliasesToExport   = @()
    CompatiblePSEditions = @('Core', 'Desktop')
    RequiredModules = @()
    RequiredAssemblies = @()
    FileList = @('FastPrompt.psm1', 'FastPrompt.psd1')
    DefaultCommandPrefix = ''
    PrivateData = @{
        PSData = @{
            Tags = @('Prompt', 'Git', 'Dotnet', 'Productivity')
            ProjectUri = 'https://github.com/denglei1024/FastPrompt'
            LicenseUri = 'https://opensource.org/licenses/MIT'
            IconUri    = ''
            ReleaseNotes = 'Initial release with Git + .NET SDK support.'
        }
    }
}
