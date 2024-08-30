Get-WmiObject Win32_NetworkAdapterConfiguration | Get-Member -MemberType Methods | Format-List
$strComputer = Read-Host “Enter Computer Name”
$colItems = Get-WmiObject Win32_OperatingSystem -ComputerName “$strComputer”
Foreach($Item in $colItems) {
$Item.Reboot()
}