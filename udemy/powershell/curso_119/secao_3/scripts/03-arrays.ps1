Write-Output "***********************************************"
Write-Output "Arrays"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
Write-Output "Criando um Array de dois elementos e testado a conexão desses elementos"
$GoogleDNS = @("8.8.8.8", "8.8.4.4")
$TotalDNS = $GoogleDNS.Count
Write-Host "Pingando todos os $TotalDNS DNS do Google"
Test-Connection $GoogleDNS -Count 1