Get-ChildItem .\*.txt | 
ForEach-Object { Rename-Item $_ -NewName ("hi{0}.txt" -f $l++) } 