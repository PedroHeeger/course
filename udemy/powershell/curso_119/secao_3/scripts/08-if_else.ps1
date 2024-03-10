Write-Output "***********************************************"
Write-Output "Estrutura Condicional If Else"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
Write-Output "Criando uma estrutura de condição com uma condição"

$serv = Get-Service -Name EFS
if ($serv.Status -eq "Running") {Write-Host "Em execução"}

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 02"
Write-Output "Criando uma estrutura de condição com duas condições"

$serv = Get-Service -Name Spooler
if ($serv.Status -ne "Stopped") {
    Write-Host "Serviço em execução"
} else {
    Write-Host "Serviço Parado"
}

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 03"
Write-Output "Criando uma estrutura de condição com uma condição"

$conn = (Test-Connection www.google.com -Count 1 -Quiet)
if ($conn -eq "true") {
    Write-Host "Internet Funcionando" -ForegroundColor Yellow
}

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 04"
Write-Output "Criando uma estrutura de condição com mais de duas condições"

$numero = 42
if ($numero -eq 0) {
    Write-Output "O número é igual a zero"
}
elseif ($numero -gt 0) {
    Write-Output "O número é maior que zero"
}
else {
    Write-Output "O número é menor que zero"
}