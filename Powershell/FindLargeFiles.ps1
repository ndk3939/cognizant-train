###################################################################
# FindLargeFiles.ps1
# Narendra, 5/14/2012
#
# uses get-childItem to get listing
# uses foreach-object to iterate through
# Pipelines the result, and uses write host
#
##################################################################
cls
$intLength = 1000
get-childitem |
 foreach-object `
  { if 
      ($_.length -gt $intLength) 
	  { Write-Host "The following files are over $intLength bytes" `
	    $_.name, $_.length -ForegroundColor Blue
	   }
   }
    
