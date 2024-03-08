Write-Output "***********************************************"
Write-Output "Variáveis"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
# Clear-Host
$nome = "Daniel Donda"
Write-Host "Hello $nome"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 02"
$nome = Read-Host "Qual o seu nome? "
$saudacao = "Olá"
$frase = "$saudacao, $nome"
Write-Host "$frase"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 03"
$nome = "Daniel"
$saudacao = "Olá"
$frase = "$saudacao, $nome"
Write-Host $frase.Length
Write-Host $frase.ToUpper()