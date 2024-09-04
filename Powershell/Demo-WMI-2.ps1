Get-WmiObject Win32_NetworkAdapterConfiguration | Get-Member -MemberType Methods | Format-List

$NICs = Get-WMIObject Win32_NetworkAdapterConfiguration `
| where{$_.IPEnabled -eq “TRUE”}
Foreach($NIC in $NICs) {
$NIC.EnableStatic(“192.168.171.42″, “255.255.255.0″)
$NIC.SetGateways(“192.168.171.1″)
$DNSServers = “198.102.234.125″,”198.102.234.126″
$NIC.SetDNSServerSearchOrder($DNSServers)
$NIC.SetDynamicDNSRegistration(“TRUE”)
$NIC.SetWINSServer(“198.102.234.125″, “198.102.234.126″)
}