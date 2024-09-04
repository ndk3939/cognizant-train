$value = 0

Switch ($value)
{
{$_-le 5} { "Number from 0 to 5" }
6 { "Number 6" }
{(($_-gt 6) -and ($_-le 10))} { "Number from 7 to 10" }
{$_-gt 11} { "Number more than 11" }
}
