# Load functions from module subfolder
$ModuleRoot = Split-Path -Path $MyInvocation.MyCommand.Path

Get-ChildItem -Path $ModuleRoot\Functions -Include *.ps1 -Recurse -Exclude *.Tests.ps1 | ForEach-Object -Process {

. $_.FullName

}