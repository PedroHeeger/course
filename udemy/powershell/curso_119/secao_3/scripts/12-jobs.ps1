Write-Output "***********************************************"
Write-Output "Jobs e Scheduled Jobs"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
Write-Output "Criando um Job a partir de um Workflow"
workflow workflowDemorado {
    while(1) {
        (Get-Date).ToString() + " Script demoradinho"
        Start-Sleep -Seconds 2
    }
}

$wfjob = workflowDemorado -AsJob
#$wfjob = Start-Job -ScriptBlock { workflowDemorado } -Name MeuJob

Get-Job
Start-Sleep -Seconds 5
Receive-Job $wfjob

Suspend-Job $wfjob
# Wait-Job -Job $wfjob
# Resume-Job -Job $wfjob

Stop-Job $wfjob
Get-Job
Remove-Job $wfjob


Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 02"
Write-Output "Criando um Scheduled Job"
Get-Command -Module PSScheduledJob | Sort-Object Noun
$diario = New-JobTrigger -Daily -at 3am
$umavez = New-JobTrigger -Once -At (Get-Date).AddSeconds(5)
$semanal = New-JobTrigger -Weekly -DaysOfWeek Monday -At 6pm

Register-ScheduledJob -Name Backup -Trigger $umavez -ScriptBlock {
    Copy-Item "C:\Users\pedro\Downloads\teste\*.*" "C:\Users\pedro\Downloads\teste2\" -Recurse -Force
}

Get-ScheduledJob
Get-ScheduledJob | Get-JobTrigger
Start-Sleep 25
Get-ScheduledJob | Unregister-ScheduledJob