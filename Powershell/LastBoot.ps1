<#
.EXAMPLE
Get-LastBootTime -ComputerName localhost
#>


param(
[string]$ComputerName
)

#To make Parameter mandatory
#[Parameter(Mandatory=$true)][string]$ComputerName

#In PowerShell V2
Get-WmiObject win32_operatingsystem –ComputerName $ComputerName| select csname, @{LABEL='LastBootUpTime';EXPRESSION={$_.ConverttoDateTime($_.lastbootuptime)}}

