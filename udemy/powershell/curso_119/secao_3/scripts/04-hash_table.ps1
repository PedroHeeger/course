Write-Output "***********************************************"
Write-Output "Hash Table"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
Write-Output "Criando um Hash Table"
$servidores = @{Server1="127.0.0.1";Server2="127.0.0.2";Server3="127.0.0.3"}
$servidores

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 02"
Write-Output "Criando um Hash Table ordenado"
$servidores = [ordered] @{Server1="127.0.0.1";Server2="127.0.0.2";Server3="127.0.0.3"}
$servidores

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 03"
Write-Output "Adicionando um elemento ao Hash Table"
$servidores["Server4"]="127.0.0.4"
$servidores

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 04"
Write-Output "Removendo um elemento ao Hash Table"
$servidores.Remove("Server4")
$servidores

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 05"
Write-Output "Contando quantos elementos tem o Hash Table e mostrando os valores desses elementos"
$servidores.Count
$servidores.Values

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 06"
Write-Output "Acessando os elementos do Hash Table e testando a conexão"
Test-Connection $servidores.Server1