Write-Output "***********************************************"
Write-Output "Arrays"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
$GoogleDNS = @("8.8.8.8", "8.8.4.4")
$TotalDNS = $GoogleDNS.Count
Write-Host "Pingando todos os $TotalDNS DNS do Google"
Test-Connection $GoogleDNS -Count 1