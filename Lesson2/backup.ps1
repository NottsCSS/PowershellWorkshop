<#
.SYNOPSIS
    Script to backup text files modified today.
.DESCRIPTION
    Reads the directory of the source directory and gets the LastWriteTime property and compares it to the current day,
    midnight time. If it's greater than the current day, the files are copied into the destination folder. 

.EXAMPLE    
    ./backup.ps1
#>

$directory = "C:\programming\powershell\workshop\*.txt"
$destination = "C:\programming\powershell\workshop\backup"

Get-ChildItem $directory | 
    Where-Object {($_ | Select-Object LastWriteTime | Get-Date) -gt (Get-Date -hour 0 -minute 00 -second 00 )} |
     Foreach-Object { Copy-Item $_.FullName $destination } 

