# Slides
https://docs.google.com/presentation/d/19A09AGKRqSgnneysq4NTXiyDnD9nRMaPUwaR-Lyu0Wg/edit?usp=sharing

# Lesson 2: Scripting and Automation

#### .ps1 files
- ps1 files are basically text files to store powershell code.
- They can be reused to automate tasks.

## Execution Policy
- `Get-ExecutionPolicy` to get current execution policy
- `Set-ExecutionPolicy unrestricted` to allow scripts to run
- Use Unblock-File to tell the computer you trust this file
#### Scripting

- Scripting is a program written in a scripting lanugage such as powershell to do one thing
- Can be used along some task scheduler such as Windows Task Scheduler to automate tasks

#### Windows task scheduler
- Window's version of a task scheduler
- Basically helps you do something at certain events

#### Create basic task
- give it a name 
- give it a `trigger`:
    - **trigger**: an event/time that activates the task
- add action: Start a Program
  - Program/Script: `Powershell`
  - Add arguments: `C:\path\to\script\hello_world.ps1`
- Finish
- Wait for script to run 

