$AuthorizedUsers= Get-Content \\ FileServer\HRShare\UserList.txt
$CurrentUsers=Get-ADGroupMember "Expenses Claimants"
 
Foreach($User in $CurrentUsers)
{
    If($AuthroizedUsers -notcontains $User)
    {
        Remove-ADGroupMember -Identity "Expenses Claimants" -User $User
    }
}