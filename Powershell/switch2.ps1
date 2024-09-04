$value = 50

Switch ($value)
{
{$_ -le 5} 
{ "$_is a number from 1 to 5" }
6 { "Number 6" }
{(($_ -gt 6) -and ($_ -le 10))}
{ "$_ is a number from 7 to 10" }
default 
{"$_ is a number outside the range from 1 to 10" }
}
