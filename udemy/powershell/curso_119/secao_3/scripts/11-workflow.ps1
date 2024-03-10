Write-Output "***********************************************"
Write-Output "Workflow"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
Write-Output "Criando um workflow"
workflow tipo-cmdlet {
    Write-Output "Hello World"
}
tipo-cmdlet

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 02"
Write-Output "Criando um workflow com execuções paralelas"
workflow start-editores {
Parallel {
    Start-Process Notepad
    Start-Process Wordpad
}}
start-editores