# PowerShell cmdlet to interrogate the Network Adapter
$strComputer = "."
$colItems = get-wmiobject -class "Win32_NetworkAdapterConfiguration" `
-computername $strComputer | Where{$_.IpEnabled -Match "True"}
foreach ($objItem in $colItems) {
#   write-host "MAC Address : " $objItem.MACAddress
   write-host "IPAddress : " $objItem.IPAddress
# write-host "IPAddress : " $objItem.IPEnabled
   write-host "Subnet Mask : " $objItem.IPSubnet
#   write-host "DNS Servers : " $objItem.DNSServerSearchOrder
   Write-host ""
}
