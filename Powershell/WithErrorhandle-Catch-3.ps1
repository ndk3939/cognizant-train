'localhost', '127.0.0.1', 'storage1', 'nonexistent', 'offline' |
  ForEach-Object {
    try {
      $ErrorActionPreference = 'Stop'
      $currentcomputer = $_
      Get-WmiObject -class Win32_BIOS -computername $currentcomputer  | 
        Select-Object __Server, Version
    }
    catch {
      Write-Warning ('Failed to access "{0}" : {1} in "{2}"' -f $currentcomputer, `
      $_.Exception.Message, $_.InvocationInfo.ScriptName)
    }
  }