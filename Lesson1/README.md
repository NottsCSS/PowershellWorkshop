# Lesson 1: Syntax 

### Get-Help
~~~ powershell
Get-Help command 
Update-Help # updates the help files 

# additional parameters:
Get-Help command -full # full details of the command including what each parameter 
Get-Help command -ShowWindow # launch help in a separate window
Get-Help command -Online # launch the help file in browser 

# can be run as a shortcut:
help 
~~~
#### *Above and beyond*
- Try out `Get-Help Get-Help`
- `help` is actually not an alias, but a function for `Get-Help | More`
- Try running `Get-Help | More`

Remember to use `Get-Help` extensively to find out how to accomplish a specific task.

### Commonly Used Cmdlets 
~~~ powershell
Set-Location C:\ # change directory 
Get-Location # get current directory location
Get-Process # gets all running processes 
Get-Command command # another cmdlet to find commands, can be used with wildcards
~~~

### Common Verbs used as cmdlets
- `Get-`
- `Set-`
- `New-`
- `Invoke-`
- `Out-`
- `Import-`

### Aliases 
~~~ powershell
Get-Alias # gets all aliases currenly in the session 
Get-Alias -Defintion "Get-*"   # gets all aliases, via the actual cmdlets, that start with Get-

# setting aliases 
New-Alias -Name "Alias" -Value Cmdlet 
~~~
*Note:* 
All aliases saved are only temporary in the **current Powershell session**. Aliases have to be saved with `Export-Alias` to a file and imported into a new Powershell session with `Import-Alias`.

* * *

### Operators
#### 1. Arithmetic Operators

Common arithmetic like `+`, `-`, `/` work perfectly in powershell.
Besides numbers, these operators can be used with strings too.
Example: `+` to append, `*` to repeat strings.

~~~ powershell
'ab' + 'c'  # becomes abc
'ss' * 2    # bcomes ssss
~~~

#### 2. Comparison Operators
`-eq` (equal) , `-ne` (not equal), `-lt` (less than), `le` (less or equal), `gt` (greater than), `ge` (greater or equal)

~~~ powershell
$var -eq 5
# returns $true if $var contains 5 
~~~

#### 3. Replace Operators 
~~~ powershell 
"The rain in Kuching" -replace "rain", "storm"
# Output: The storm in Kuching
~~~ 
#### *Above and beyond*
- `-replace` accepts *regex* (regular expressions) as its first parameter

#### 4. Logical Operators 
You can use logical operators to connect statements together to form a logical expression.
i.e: `-or`, `-not` *(or !)*, `-xor`, `-and`

~~~ powershell
($var + 3 -eq 6) -or ($var2 -3 -eq 0)
# returns $true if $var contains $var contains 3
~~~

Logical operators are evaluated via *short circuit evaluation*.
For more info, check https://en.wikipedia.org/wiki/Short-circuit_evaluation

* * * 
  
### Pipelining
* Objects can be passed from one cmdlet to another. Example:
~~~ powershell
(Get-Process | Sort-Object -desc CPU)[0]
~~~
gets the first object from Get-Process after sorting them.
* $_ is a placeholder for the pipelined object, look at filters for more info.

### Filters

#### Where-Object
Used to filter out objects based on criteria. Example:
~~~ powershell
Get-Command -CommandType cmdlet | `
	Where-Object {$_.Name -like ‘*clear*’}
~~~
will only select objects that names contain clear.

#### Select-Object
Select only specific members from objects. Example:
~~~ powershell
Get-Process | Select-Object Name
~~~
will only extract the Name from the Get-Process cmdlet

#### Select-String
Used to search for a specific string pattern from files. Example:
~~~ powershell
Select-String -Path C:\DataFiles\*.txt  -Pattern ‘error output’
~~~
looks at all .txt files in the DataFiles directory for the pattern 'error output'.

### Formatting, Sorting and Converting to readable files 

~~~ powershell 
# Formatting cmdlets
Format-Table 
Format-List
Format-Wide 

# Sorting cmdlets
Sort-Object

# Converting cmdlets
ConvertTo-Html
ConvertTo-Csv
ConvertTo-Xml
~~~
*Note:* All conversion cmdlets only do **conversion**, their output are **not saved**. Pipe the command to `Out-File` with the first paramater as the name of the file.

*Example:*
~~~ powershell
Get-Process firefox | Format-Table -Autosize | ConvertTo-Html | Out-File .\'Firefox Processes.html'
~~~

* * *

### PSDrives and PSProviders 

`PSProviders` are how Powershell adapts data while `PSDrive` makes it accessible.
To get all PSDrives:
~~~ powershell
Get-PSDrive
~~~

Commands related to `PSDrive` involve the noun `Item`. 

#### Item manipulation cmdlets
~~~ powershell
Get-ChildItem # get all items 
New-Item # Limited (mainly directory and files), read the help files for more info  
Set-ItemProperty 
Copy-Item
Rename-Item
~~~ 

#### Creating a new item
~~~ powershell
# Creating a new folder 
New-Item -ItemType Directory -Path .\FolderName

# Creating a new file 
New-Item -ItemType File -Path .\file_name.txt
~~~

#### Renaming an item 
~~~ powershell
Rename-Item -Path OriginalFileName -NewName NewName 
~~~

#### Setting an item to hidden 
~~~ powershell
Set-ItemProperty -Path filename -Attributes -Value "Hidden"
~~~
