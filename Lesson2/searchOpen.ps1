<#
.SYNOPSIS
    Script to search for a file in a targeted drive.
.DESCRIPTION
    Blank
.PARAMETER drive
    Parameter for the targeted drive to be searched
.PARAMETER targetFile 
    Parameter for the file to be searched.
.EXAMPLE   
    search(C, hey.txt)

#>

function search{
    param($drive,$targetFile)
    
    $item = Get-ChildItem -Path $drive -Recurse |
            Select-Object -ExpandProperty FullName |
            Where-Object -Property {$_.BaseName -eq $targetFile } 

    $path = $item.PSpath

    explorer $path
    
}