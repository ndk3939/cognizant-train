Function GetOldFile
{
$Days = "2" 
$TargetFolder = "C:\inetpub\logs\LogFiles" #Enter full Target folder path
if (Test-Path $TargetFolder)
{
    $Now = Get-Date
    $LastWrite = $Now.AddDays(-$days)
    $Files = get-childitem $TargetFolder -include *.log -recurse |Where {$_.LastWriteTime -le "$LastWrite"}
        foreach ($File in $Files)
        {
         write-host "Deleting file $File" -foregroundcolor "Red"; Remove-Item $File | out-null
        }
}
    Else
    {
        Write-Host "The folder $TargetFolder doesn't exist! Check the folder path!" -foregroundcolor "red"}
       }
GetOldFile
