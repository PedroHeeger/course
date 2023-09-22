"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\automation\variaveis.ps1"

Write-Output "Importe o módulo Selenium"
Import-Module Selenium

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Extraindo as informações da cloud AWS"
$dnsLoadBalancer = aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='curso080lb'].DNSName" --output text

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Configurando o ChromeDriver"
$chromeDriverPath = "C:\zProgramsTI\chromedriver\chromedriver-win64"
$driver = New-Object OpenQA.Selenium.Chrome.ChromeDriver($chromeDriverPath)
$driver.Manage().Window.Maximize()




"-----//-----//-----//-----//-----//-----//-----"
# Write-Output "SERVIÇO: AWS RDS"
# Write-Output "Acessando a aplicação na aba Banco de Dados"
# $driver.Navigate().GoToUrl("https://web.whatsapp.com/")




# Write-Output "Aguardando a execução da vinculação do serviço EC2 com o serviço de Banco de Dados RDS de nome $db_instance_identifier"
# Start-Sleep -Seconds 10

Write-Output "Acessando a aplicação com o DNS do Load Balancer"
$driver.Navigate().GoToUrl("http://$dnsLoadBalancer")








# try {
#     $null = $driver.FindElementByClassName("btn-primary") 2>$null
#     $consultaBemSucedida = 1
# }
# catch {
#     $consultaBemSucedida = 0
# }
# if ($consultaBemSucedida -gt 0) { 
#     Write-Output "Localizando o formulário usando seletor de classe"
#     $form = $driver.FindElementByClassName("btn-primary")

#     Write-Output "Localizando os campos do formulário usando seletor de nome"
#     $endpointInput = $driver.FindElementByName("endpoint")
#     $databaseInput = $driver.FindElementByName("database")
#     $usuarioInput = $driver.FindElementByName("username")
#     $senhaInput = $driver.FindElementByName("password")

#     Write-Output "Preenchendo os campos do formulário da aba Banco de Dados"
#     $endpointInput.SendKeys("$rds_endpoint")
#     $databaseInput.SendKeys("$db_instance_identifier")
#     $usuarioInput.SendKeys("$db_master_username")
#     $senhaInput.SendKeys("$db_master_user_password")

#     Write-Output "Enviando o formulário da aba Banco de Dados"
#     $form.Submit()

#     Write-Output "Aguardando a execução da vinculação do serviço EC2 com o serviço de Banco de Dados RDS de nome $db_instance_identifier"
#     Start-Sleep -Seconds 20


#     "-----//-----//-----//-----//-----//-----//-----"
#     Write-Output "Abrindo o formulário para adicionar um contato ao banco de dados"
#     $driver.Navigate().GoToUrl("http://$ip_vm1/rds.php?mode=add")
    
#     try {
#         $null = $driver.FindElementByClassName("btn-primary") 2>$null
#         $consultaBemSucedida = 1
#     }
#     catch {
#         $consultaBemSucedida = 0
#     }
#     if ($consultaBemSucedida -gt 0) { 
#         Write-Output "Localizando o formulário usando seletor de classe"
#         $form = $driver.FindElementByClassName("btn-primary")
    
#         Write-Output "Localizando os campos do formulário usando seletor de nome"
#         $firstname = $driver.FindElementByName("firstname")
#         $lastname = $driver.FindElementByName("lastname")
#         $phone = $driver.FindElementByName("phone")
#         $email = $driver.FindElementByName("email")
    
#         Write-Output "Preenchendo os campos do formulário da aba Banco de Dados"
#         $firstname.SendKeys("Joao")
#         $lastname.SendKeys("Ninguem")
#         $phone.SendKeys("1198874-2235")
#         $email.SendKeys("joaonobody@gmail.com")
    
#         Write-Output "Enviando o formulário da aba Banco de Dados"
#         $form.Submit()

#         Write-Output "Aguardando a adição do contato $iam_username ao Banco de Dados RDS de nome $db_instance_identifier"
#         Start-Sleep -Seconds 10
#     } else {
#         Write-Host "Nenhum formulário foi encontrado nesta aba do site."
#     }
# } else {
#     Write-Host "Nenhum formulário foi encontrado nesta aba do site."
# }





# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "Fechando o navegador"
# $driver.Quit()