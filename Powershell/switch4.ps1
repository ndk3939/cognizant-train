$value = 50
Switch ($value)
{
50 { "the number 50"; break }
{$_ -gt 10} {"larger than 10"; break}
{$_ -is [int]} {"Integer number"; break}
}
