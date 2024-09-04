$EventIds = ‘462’,’334’,’123’

$EventLogs = ‘Application’,’System’

$Servers = Get-ADComputer -Filter “OperatingSystem -like ‘*Server*'”

foreach ($Server in $Servers) {

    foreach ($Log in $EventLogs) {

        Get-EventLog -Computername $Server -InstanceId $EventIds -LogName $Log

    }

}