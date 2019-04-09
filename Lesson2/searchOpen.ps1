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
	   

function search ($targetFile) {
	write-host $targetFile
	$item = Get-ChildItem . -recurse |
            Where-Object {$_.Name -eq $targetFile} |
			Select-Object -ExpandProperty FullName 

	if ($item -ne $null) {
		Invoke-Item $item
	}
}

search($args[0])
