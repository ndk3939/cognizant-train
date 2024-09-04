'localhost', '127.0.0.1', 'storage1', 'nonexistent', 'offline' |
  ForEach-Object {
    try {
      Get-WmiObject -class Win32_BIOS -computername $_ -ErrorAction Stop | 
        Select-Object __Server, Version
    }
    catch {
      Write-Warning "Error occured: $_"
    }
  }