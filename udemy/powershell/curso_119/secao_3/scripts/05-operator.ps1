Write-Output "***********************************************"
Write-Output "Operator"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
Write-Output "Operador de Atribuição"
$operador1 = 5
$operador2 = "Teste"
Write-Output "Atribuição Simples: $operador1, $operador2"

$operador3 = 2
$operador3 += $operador1
Write-Output "Atribuição com Adição: $operador3"

$operador3 = 2
$operador3 -= $operador1
Write-Output "Atribuição com Subtração: $operador3"

$operador3 = 2
$operador3 *= $operador1
Write-Output "Atribuição com Multiplicação: $operador3"

$operador3 = 2
$operador3 /= $operador1
Write-Output "Atribuição com Divisão: $operador3"

$operador3 = 2
$operador3 %= $operador1
Write-Output "Atribuição com Módulo: $operador3"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 02"
Write-Output "Operadores Matemáticos Aritméticos"
$operador1 = 5
$operador2 = 2

$adicao = $operador1 + $operador2
Write-Output "Adição: $adicao"

$subtracao = $operador1 - $operador2
Write-Output "Subtração: $subtracao"

$multiplicacao = $operador1 * $operador2
Write-Output "Multiplicação: $multiplicacao"

$divisao = $operador1 / $operador2
Write-Output "Divisão: $divisao"

$modulo = $operador1 % $operador2
Write-Output "Módulo: $modulo"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 03"
Write-Output "Operadores Relacionais ou de Comparação"
$operador1 = 2
$operador2 = 2

$comparacao = $operador1 -lt $operador2
Write-Output "$operador1 é menor que $operador2`: $comparacao"

$comparacao = $operador1 -le $operador2
Write-Output "$operador1 é menor ou igual a $operador2`: $comparacao"

$comparacao = $operador1 -gt $operador2
Write-Output "$operador1 é maior que $operador2`: $comparacao"

$comparacao = $operador1 -ge $operador2
Write-Output "$operador1 é maior ou igual a $operador2`: $comparacao"

$comparacao = $operador1 -eq $operador2
Write-Output "$operador1 é igual a $operador2`: $comparacao"

$comparacao = $operador1 -ne $operador2
Write-Output "$operador1 não é igual a $operador2`: $comparacao"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 04"
Write-Output "Operadores Relacionais ou de Comparação 2"
$operador1 = 2
$operador2 = 2

$comparacao = $operador1 -like $operador2
Write-Output "$operador1 é como $operador2`: $comparacao"

$comparacao = $operador1 -notlike $operador2
Write-Output "$operador1 não é como $operador2`: $comparacao"

$comparacao = $operador1 -contains $operador2
Write-Output "$operador1 contém $operador2`: $comparacao"

$comparacao = $operador1 -notcontains $operador2
Write-Output "$operador1 não contém $operador2`: $comparacao"

$comparacao = $operador1 -match $operador2
Write-Output "$operador1 coincide com $operador2`: $comparacao"

$comparacao = $operador1 -notmatch $operador2
Write-Output "$operador1 não coincide com $operador2`: $comparacao"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 05"
Write-Output "Operadores Lógicos ou Booleanos"
$operador1 = $true
$operador2 = $false

$comparacao = $operador1 -AND $operador2
Write-Output "Conjunção: $comparacao"

$comparacao = $operador1 -OR $operador2
Write-Output "Disjunção não exclusiva: $comparacao"

$comparacao = -NOT $operador2
Write-Output "Negação: $comparacao"

$comparacao = $operador1 -XOR $operador2
Write-Output "Disjunção exclusiva: $comparacao"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 06"
Write-Output "Operadores Unários"
$operador1 = 5

$operador1 = +$operador1
Write-Output "Valor Positivo: $operador1"

$operador1 = -$operador1
Write-Output "Valor Negativo: $operador1"

$operador1++
Write-Output "Incrementação: $operador1"

$operador1--
Write-Output "Decrementação: $operador1"

$operador1 = !$true
Write-Output "Lógico ou Negação: $operador1"