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

# $wfjob = workflowDemorado -AsJob
$wfjob = Start-Job -ScriptBlock { workflowDemorado } -Name MeuJob

Get-Job
Receive-Job $wfjob
# Get-Job
# Stop-Job $wfjob
# Get-Job
# Remove-Job $wfjob
# Get-Job

# Write-Output "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "Exemplo 02"
# Write-Output "Criando um Scheduled Job"
# Get-Command -Module PSScheduledJob | Sort-Object Noun
# $diario = New-JobTrigger -Daily -at 3am
# $umavez = New-JobTrigger -Once -At (Get-Date).AddHours(1)
# $semanal = New-JobTrigger -Weekly -DaysOfWeek Monday -At 6pm

# Register-ScheduledJob -Name Backup -Trigger $diario -ScriptBlock {
#     Copy-Item "C:\Users\pedro\Downloads\teste\*.*" "C:\Users\pedro\Downloads" -Recurse -Force
# }

# Get-ScheduledJob