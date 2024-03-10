Write-Output "***********************************************"
Write-Output "WScript Shell (WShell)"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
Write-Output "Criando uma instância do objeto WScript.Shell e manipulando ela"
$wshell = New-Object -ComObject WScript.Shell
$wshell | Get-Member

$wshell.Popup("Esse curso eh muito legal")
$wshell.Run("Notepad")
$wshell.AppActivate("Notepad")
Start-Sleep 2
$wshell.SendKeys("Esse curso eh muito legal")