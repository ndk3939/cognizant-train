

$srvList = @("Server1","Server2","Server3")

foreach($server in $Srvlist)
{
$x = get-wmiObject -Class Win32_OperatingSystem -Computername $server
$x | Select csname, @{label=’MyLastBootUpTime’;Expression={$_.ConvertToDateTime($_.LastBootUpTime)};} | format-table -autosize;
};

## OR

#$srvList = @("Server1","Server2","Server3")

#[array] $myUpTimeList = foreach($server in $Srvlist)
#{
#$x = get-wmiObject -Class Win32_OperatingSystem -Computername $server;
#$x | Select csname, @{label=’MyLastBootUpTime’;Expression={$_.ConvertToDateTime($_.LastBootUpTime)};}
#}

#$myUpTimelist | ft -auto;
