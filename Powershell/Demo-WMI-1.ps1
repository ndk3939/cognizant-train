Get-WmiObject Win32_NetworkAdapterConfiguration | Get-Member -MemberType Methods | Format-List

$NICs = Get-WMIObject Win32_NetworkAdapterConfiguration `
| where{$_.IPEnabled -eq “TRUE”}
Foreach($NIC in $NICs) {
$NIC.EnableDHCP()
$NIC.SetDNSServerSearchOrder()
}