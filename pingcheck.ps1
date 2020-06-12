::pingcheck.ps1
$ServerName = Get-Content "servers.txt"
foreach ($Server in $ServerName){
if(test-Connection-ComputerName $Server -Count 2 -Quiet) {
"$Server in pinging"
} else
{"$Server not pinging"
}
}
