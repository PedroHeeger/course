Write-Output "***********************************************"
Write-Output "Expressão Regular (Regex)"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
Write-Output "Utilizando o Regex em uma condicional para verificar o email"
$email = Read-Host "Qual seu email? "
$regex = "^[a-z]+\.[a-z]+@contoso.com$"

If ($email -notmatch $regex) {
    Write-Host "Errou o endereço de email $email"
    Exit
}
Write-Host "Acertou!"