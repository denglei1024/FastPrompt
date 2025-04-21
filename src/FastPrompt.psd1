@{
    # 模块清单版本
    ModuleManifestVersion = '1.0'

    # 模块名称
    RootModule = 'CustomPrompt.psm1'

    # 模块版本
    ModuleVersion = '0.1.0'

    # 支持的 PowerShell 版本
    PowerShellVersion = '5.1'

    # 作者信息
    Author = '邓磊'

    # 公司信息（可选）
    CompanyName = 'Self'

    # 版权声明
    Copyright = '(c) 2025 邓磊. All rights reserved.'

    # 模块说明
    Description = 'A clean, fast, git-aware custom PowerShell prompt with .NET SDK display.'

    # 私有函数导出设置（这里导出所有）
    FunctionsToExport = '*'
    CmdletsToExport   = @()
    VariablesToExport = @()
    AliasesToExport   = @()

    # 模块兼容的平台
    CompatiblePSEditions = @('Core', 'Desktop')

    # 所需外部模块（可为空）
    RequiredModules = @()

    # 依赖的程序集（无）
    RequiredAssemblies = @()

    # 文件包含
    FileList = @('CustomPrompt.psm1', 'CustomPrompt.psd1')

    # 默认命令前缀（无）
    DefaultCommandPrefix = ''

    # 模块预览标记（可选）
    PrivateData = @{
        PSData = @{
            Tags = @('Prompt', 'Git', 'Dotnet', 'Productivity')
            ProjectUri = 'https://github.com/your-repo/CustomPrompt'
            LicenseUri = 'https://opensource.org/licenses/MIT'
            IconUri    = ''
            ReleaseNotes = 'Initial release with Git + .NET SDK support.'
        }
    }
}
