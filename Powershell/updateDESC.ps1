

Import-Module ActiveDirectory  
  
$Userstodatabase = import-csv C:\AdditionalSoftware\Exchange-Reports\conferenceroom\sunder\user.csv  
   
 ForEach($record in $Userstodatabase)  
  {  
	$cf=$record.user
	$desc=$record.desc
    Set-ADUser -Identity $user -Description $desc -domaincontroller aoldtcmdc02.ad.office.aol.com
      
 
 }  


