$directory = "HKLM:\software\wow6432node\microsoft\windows\currentversion\uninstall\*"
Get-ItemProperty $directory | 
    Select-Object -Property DisplayName,DisplayVersion,Publisher,InstallDate |
    Format-Table -AutoSize  