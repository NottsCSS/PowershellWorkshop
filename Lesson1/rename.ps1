<#
.SYNOPSIS
Renames all text files ending with .txt extension to new_filename0 where each number increases.
#>

$objects = Get-ChildItem .\*.txt 
$objectsCount = $objects | Measure-Object;  

For ($i = 0 ; $i -lt $objectsCount.Count; $i++) {
    Rename-Item $objects[$i] -NewName "new_filename_$i.txt"
}

# OR
# Get-ChildItem .\*.txt | 
# ForEach-Object { Rename-Item $_ -NewName ("new_filename{0}.txt" -f $l++) } 



