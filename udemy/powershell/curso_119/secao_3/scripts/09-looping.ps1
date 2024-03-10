Write-Output "***********************************************"
Write-Output "Estrutura de Repetição"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
Write-Output "Criando uma estrutura de repetição do tipo For"
for ($var=1; $var -le 10; $var++) {
    Write-Host "192.168.0.$var"
}

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 02"
Write-Output "Criando uma estrutura de repetição do tipo ForEach"
foreach ($numeros in 1,2,3,4,5,6,7,8) {
    Write-Host $numeros
}

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 03"
Write-Output "Criando uma estrutura de repetição do tipo While"
$i = 0
while ($i -lt 10) {
    Write-Host "Vou contar até $i"
    $i++
}