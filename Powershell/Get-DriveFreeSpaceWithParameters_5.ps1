[CmdletBinding()]
param (
[Parameter(Mandatory=$True)]
[Alias('hostname')]
[string]$computername,
[ValidateSet(2,3)]
[int]$drivetype = 3
)
Get-WmiObject -class Win32_LogicalDisk -computername $computername `
-filter "drivetype=$drivetype" |
Sort-Object -property DeviceID |
Select-Object -property DeviceID,
@{name='FreeSpace(MB)';expression={$_.FreeSpace / 1MB -as [int]}},
@{name='Size(GB';expression={$_.Size / 1GB -as [int]}},
@{name='%Free';expression={$_.FreeSpace / $_.Size * 100 -as [int]}}