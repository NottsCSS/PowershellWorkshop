$items1 =  Get-ChildItem "C:\programming\powershell\workshop\scripts\*.ps1"
$items2 =  Get-ChildItem "C:\programming\powershell\workshop\*.txt"
$articles = "https://www.itprotoday.com/powershell/windows-powershell-operators", 
            "https://devblogs.microsoft.com/powershell/exclude-include-filter-parameters-how-to-make-sense-of-these/",
            "https://github.com/Mike-Rotec/PowerShell-Scripts"

# ForEach-Object { code $items }
ForEach-Object { Start-Process Firefox -ArgumentList $articles}
ForEach-Object { Start-Process Code -ArgumentList $items1 }
# ForEach-Object {  C:\"Program Files"\"Mozilla Firefox"\firefox.exe  $articles }

<# 
or using static member operator ::
[Systems.Diagnostics.Process]::Start('firefox','url')

or using start-process 
Start-Process Firefox -ArgumentList "url"
   
#>