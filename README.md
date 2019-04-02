# PowershellWorkshop
Powershell Workshop scripts, slides and installation guide

## Windows
#### Windows 8 and 10
- Open powershell and type $PSVersionTable. If your powershell version is less than 3, follow Windows 7 instructions
#### Windows 7

## MacOS
- Open terminal and run the following commands in your terminal.
~~~
# Download the powershell '.tar.gz' archive
curl -L -o /tmp/powershell.tar.gz https://github.com/PowerShell/PowerShell/releases/download/v6.1.0/powershell-6.1.0-osx-x64.tar.gz

# Create the target folder where powershell will be placed
sudo mkdir -p /usr/local/microsoft/powershell/6.1.0

# Expand powershell to the target folder
sudo tar zxf /tmp/powershell.tar.gz -C /usr/local/microsoft/powershell/6.1.0

# Set execute permissions
sudo chmod +x /usr/local/microsoft/powershell/6.1.0/pwsh

# Create the symbolic link that points to pwsh
sudo ln -s /usr/local/microsoft/powershell/6.1.0/pwsh /usr/local/bin/pwsh
~~~
- If you are having problems with your installation, run this command in your terminal and try again
~~~
xcode-select --install
~~~