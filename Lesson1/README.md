# Lesson 1 

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
- `help` is actually not an alias, but a function name of `Get-Help | More`

Remember to use Get-Help extensively to find out how to accomplish a specific task.

### Commonly Used Cmdlets 
~~~ powershell
Set-Location C:\ # change directory 
Get-Location # get current directory location
Get-Process # gets all running processes 
Get-Command command # another cmdlet to find commands, can be used with wildcards
~~~

### Aliases 
~~~ powershell
Get-Alias # gets all aliases currenly in the session 
Get-Alias -Defintion "Get-*"   # gets all aliases, via the actual cmdlets, that start with Get-

# setting aliases 
New-Alias -Name "Alias" -Value Cmdlet 
~~~
Note: 
All aliases saved are only temporary in the current Powershell session. Aliases have to be saved with `Export-Alias` to a file and imported into a new Powershell session with `Import-Alias`.

