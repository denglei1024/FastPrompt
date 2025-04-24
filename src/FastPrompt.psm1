$OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

function Get-GitInfo {
    try {
        if (-not (Test-Path .git)) { return "" }

        $branch = git rev-parse --abbrev-ref HEAD 2>$null
        $status = git status --porcelain=2 --branch 2>$null
        $ahead = 0; $behind = 0; $dirty = $false

        foreach ($line in $status) {
            if ($line -match "^# branch.ab \+(\d+) -(\d+)") {
                $ahead = [int]$matches[1]
                $behind = [int]$matches[2]
            } elseif ($line -match "^[1?] ") {
                $dirty = $true
            }
        }

        $gitInfo = "`e[36m $branch`e[0m"
        if ($ahead -gt 0)  { $gitInfo += " `e[93m⇡$ahead`e[0m" }
        if ($behind -gt 0) { $gitInfo += " `e[91m⇣$behind`e[0m" }
        if ($dirty)        { $gitInfo += " `e[91m✗`e[0m" }

        return $gitInfo
    } catch { return "" }
}

function Get-UserHost {
    return "`e[32m$env:USERNAME`e[32m@`e[32m$env:COMPUTERNAME`e[0m"
}

function Get-Path {
    return "`e[33m$((Get-Location).Path.Replace($HOME, "~"))`e[0m"
}

function Get-PromptChar {
    return "`e[92m❯`e[0m"
}

function global:Prompt {
    $userHost = Get-UserHost
    $mingw = "`e[35mMINGW64`e[0m"
    $path = Get-Path
    $git = Get-GitInfo
    $promptChar = Get-PromptChar

    $line = "$userHost $mingw $path"
    if ($git)    { $line += " $git" }

    return "$line`n$promptChar "
}
