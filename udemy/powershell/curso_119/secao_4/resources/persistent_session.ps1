Write-Output "***********************************************"
Write-Output "Persistent Session"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exemplo 01"
Write-Output "Criando uma sessão persistente com um job"
$s = New-PSSession -ComputerName 3.91.32.47 -Credential administrator 
# $s = Get-PSSession -Id 5

Invoke-Command -Session $s -ScriptBlock {
    $i = 0
    while($true)
    {
        $i++
        Write-Output "Vou contar até $i"
        Start-Sleep 1
        if ($i -ge 1000) {break}
    }
} -AsJob -JobName LongoTrabalho

Start-Sleep 3
Get-PSSession

Start-Sleep 3
Get-Job -Name LongoTrabalho
Get-Job -Name LongoTrabalho | Receive-Job -Keep

Start-Sleep 3
Disconnect-PSSession $s

Start-Sleep 3
Receive-PSSession -Session $s

Start-Sleep 3
Get-Job -Name LongoTrabalho | Stop-Job
Remove-Job -Name LongoTrabalho
Get-Job

Start-Sleep 3
Disconnect-PSSession $s
Remove-PSSession $s