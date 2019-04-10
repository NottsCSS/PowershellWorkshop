<#
.SYNOPSIS
    Script to get all installed program.
.DESCRIPTION
    Reads from the registry and returns all installed programs on this computer.
.EXAMPLE    
    ./getInstalledPrograms
#>

$directory = "HKLM:\software\wow6432node\microsoft\windows\currentversion\uninstall\*"
Get-ItemProperty $directory | 
    Select-Object -Property DisplayName,DisplayVersion,Publisher,InstallDate |
    Format-Table -AutoSize  