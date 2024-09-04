$value = 12.234
Switch ($value)
{
50 { "the number 50" }
{$_ -gt 10} {"larger than 10"}
{$_ -is [int]} {"Integer number"}
}
