"hello there" | Out-File .\File1.txt 
"hello there `nDom" | Out-File .\File2.txt 

$f1 = Get-Content .\File1.txt
$f2 = Get-Content .\File2.txt 

Compare-Object -ReferenceObject $f1 -DifferenceObject $f2 
# Or 
# Diff $f1 $f2