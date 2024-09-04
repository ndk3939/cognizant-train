$filename = "\Windows\System32\browser.dll" 
$obj = New-Object System.Collections.ArrayList 
$computernames = Get-Content C:\Computer.csv 
foreach ($server in $computernames) 
{ 
$filepath = Test-Path "\\$server\c$\$filename" 
 
if ($filepath -eq "True") { 
    $file = Get-Item "\\$server\c$\$filename" 
    $obj += New-Object psObject -Property @{'Computer'=$server;'FileVersion'=$file.VersionInfo|Select FileVersion;'LastAccessTime'=$file.LastWriteTime} 
    } 
} 
     
$obj | select computer, FileVersion, lastaccesstime | Export-Csv -Path 'c:\File_Results.csv' -NoTypeInformation 