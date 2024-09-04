For ($file = [system.io.file]::OpenText("D:\Training\ps\testscripts\uptimereport.txt");
!($file.EndOfStream); $line = $file.ReadLine())
{
# Output read line:
$line
}
$file.close()
