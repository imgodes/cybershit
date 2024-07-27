$web = Invoke-WebRequest -uri "http://www.businesscorp.com.br" -Method Options
Write-Host "O servidor roda: "
$web.headers.server
Write-Host ""
Write-Host "O Servidor aceita os metodos:"
$web.headers.allow
Write-Host ""
$web2 = Invoke-WebRequest -uri "http://www.businesscorp.com.br"
Write-Host "Links:"
$web2.links.href | Select-String ://