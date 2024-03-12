Write-Output "***********************************************"
Write-Output "Credential"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
Write-Output "Criando uma sessão passando a credencial como variável"
# $cred = Get-Credential administrator
$rede = New-PSSession -ComputerName (Get-Content "G:\Meu Drive\4_PROJ\course\udemy\powershell\curso_119\secao_4\resources\servers.txt") -Credential $cred
Invoke-Command $rede { Get-Service}
Get-PSSession | Format-Table
Remove-PSSession $rede