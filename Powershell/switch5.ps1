$action = "new"
Switch -case ($action)
{
"save" { "I save..." }
"open" { "I open..." }
"print" { "I print..." }
Default { "Unknown command" }
}
