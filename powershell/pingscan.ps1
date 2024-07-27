param($rede)
if(!$rede) {
    write-host "informe a rede, exemplo: 192.168.0"
} else {
    foreach ($final in 1..254) {
    try { 
    $resp=ping -n 1 "$rede.$final" | Select-string bytes=32 
    $resp.Line.split(' ')[2] -replace ":",""
    }
    catch{}
    }
}