Write-Output "***********************************************"
Write-Output "Functions"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
Write-Output "Executando um comando"
Get-WmiObject Win32_LogicalDisk -Filter DriveType=3 | Select-Object DeviceID, @{'Name'='Tamanho (GB)'; 'Expression'={[math]::truncate($_.size / 1GB)}}

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 02"
Write-Output "Criando uma função para o comando anterior"
function Meu-HD {
    Get-WmiObject Win32_LogicalDisk -Filter DriveType=3 | Select-Object DeviceID, @{'Name'='Tamanho (GB)'; 'Expression'={[math]::truncate($_.size / 1GB)}} 
}
Meu-HD

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 03"
Write-Output "Criando uma função com uso de parâmetros"

function somar {
    param ($a, $b) 
    $resultado = $a + $b
    Write-Output "A resposta é $resultado"
}
somar 5 3