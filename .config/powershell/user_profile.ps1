# Prompt
oh-my-posh init pwsh --config $HOME\.config\powershell\hriphaestus.omp.json | Invoke-Expression

# Modules
Import-Module Terminal-Icons

# Aliases
Set-Alias vim nvim
Set-Alias ll Get-ChildItem
Set-Alias grep findstr
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Functions
function rmr {
    param (
        $Directory
    )
    if ($Directory) {
        Remove-Item -Recurse $Directory
    } else {
        Write-Output 'You need to provide a directory'
    }
}

