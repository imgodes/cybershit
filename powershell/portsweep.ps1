param($target)
if(!$target) {
    Write-Host "Insira o target"
    } else {
    foreach($port in 21,22,25,80,443) {
        if(Test-NetConnection -Port $port $target -WarningAction Continue -InformationLevel Quiet){
            Write-Host "Porta $port aberta"
        } else {
            Write-Host "Porta $port fechada"
        }
    }
}