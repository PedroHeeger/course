Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\outros\fabricio_veronez\devops\curso_116\automation\variable.ps1"

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ETAPA 1 (AULAS 1, 2 E 3)"
$resposta = Read-Host "Deseja executar esta etapa? (y/n) "
if ($resposta.ToLower() -ne 'y') {
    Write-Host "Bloco de código não executado. Pulando para o próximo..."
} else {

# Write-Output "***********************************************"
# Write-Output "SERVIÇO: AWS EC2-VPC"
# Write-Output "SECURITY GROUP RULE EXCLUSION"

# Write-Output "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "Verificando se existe a VPC padrão"
# if ((aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[].VpcId").Count -gt 1) {
#     Write-Output "-----//-----//-----//-----//-----//-----//-----"
#     Write-Output "Extraindo o Id da VPC padrão"
#     $vpcDefaultId = aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[].VpcId" --output text

#     Write-Output "-----//-----//-----//-----//-----//-----//-----"
#     Write-Output "Verificando se existe o Security Group padrão da VPC padrão"
#     if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values='$vpcDefaultId'" --query "SecurityGroups[?GroupName=='$groupName'].GroupId").Count -gt 1) {
#         Write-Output "-----//-----//-----//-----//-----//-----//-----"
#         Write-Output "Extraindo o Id do Security Group padrão"
#         $sgDefaultId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$groupName'].GroupId" --output text

#         Write-Output "-----//-----//-----//-----//-----//-----//-----"
#         Write-Output "Verificando se existe uma regra liberando a porta $port1 no Security Group padrão"
#         $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgDefaultId' && !IsEgress && IpProtocol=='$protocolo' && to_string(FromPort)=='$port1' && to_string(ToPort)=='$port1' && CidrIpv4=='$cidrIpv4']"
#         if (($existRule).Count -gt 1) {
#             Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group padrão"
#             aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgDefaultId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text

#             Write-Output "Removendo a regra de entrada do Security Group padrão para liberação da porta $port1"
#             aws ec2 revoke-security-group-ingress --group-id $sgDefaultId --protocol $protocolo --port $port1 --cidr $cidrIpv4

#             Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group padrão"
#             aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgDefaultId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
#         } else {Write-Output "Não existe a regra de entrada liberando a porta $port1 no Security Group padrão"}

#         Write-Output "-----//-----//-----//-----//-----//-----//-----"
#         Write-Output "Verificando se existe uma regra liberando a porta $port2 no Security Group padrão"
#         $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgDefaultId' && !IsEgress && IpProtocol=='$protocolo' && to_string(FromPort)=='$port2' && to_string(ToPort)=='$port2' && CidrIpv4=='$cidrIpv4']"
#         if (($existRule).Count -gt 1) {
#             Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group padrão"
#             aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgDefaultId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text

#             Write-Output "Removendo a regra de entrada do Security Group padrão para liberação da porta $port2"
#             aws ec2 revoke-security-group-ingress --group-id $sgDefaultId --protocol $protocolo --port $port2 --cidr $cidrIpv4

#             Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group padrão"
#             aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgDefaultId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
#         } else {Write-Output "Não existe a regra de entrada liberando a porta $port2 no Security Group padrão"}
#     }
# }




Write-Output "***********************************************"
Write-Output "SERVIÇO: AWS EC2"
Write-Output "EC2 EXCLUSION"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Verificando se existe a instância $tagNameInstance"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[]").Count -gt 1) {
    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text
    
    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Extraindo o Id da instância de nome de tag $tagNameInstance"
    $instanceId1 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].InstanceId" --output text

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Removendo a instância de nome de tag $tagNameInstance"
    aws ec2 terminate-instances --instance-ids $instanceId1 --no-dry-run --no-cli-pager
    
    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text
} else {Write-Output "Não existe instâncias com o nome de tag $tagNameInstance"}




# Write-Output "***********************************************"
# Write-Output "SERVIÇO: AWS EC2"
# Write-Output "KEY PAIR EXCLUSION"

# Write-Output "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "Verificando se existe o par de chaves $keyPairName"
# if ((aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$keyPairName']").Count -gt 1) {
#     Write-Output "-----//-----//-----//-----//-----//-----//-----"
#     Write-Output "Listando todos os pares de chaves criados"
#     aws ec2 describe-key-pairs --query "KeyPairs[].KeyName" --output text

#     Write-Output "-----//-----//-----//-----//-----//-----//-----"
#     Write-Output "Removendo o par de chaves criado de nome $keyPairName e os arquivos pem e ppk"
#     aws ec2 delete-key-pair --key-name $keyPairName

#     Write-Output "-----//-----//-----//-----//-----//-----//-----"
#     Write-Output "Verificando se existe o arquivo de par de chaves $keyPairName.pem"
#     if (Test-Path "$keyPairPath\$keyPairName.pem" -PathType Leaf) {
#         Write-Output "-----//-----//-----//-----//-----//-----//-----"
#         Write-Host "Removendo o arquivo de par de chave $keyPairName.pem"
#         Remove-Item "$keyPairPath\$keyPairName.pem"
#     } else {Write-Host "Não existe o arquivo de par de chave $keyPairName.pem"}

#     Write-Output "-----//-----//-----//-----//-----//-----//-----"
#     Write-Output "Verificando se existe o arquivo de par de chaves $keyPairName.ppk"
#     if (Test-Path "$keyPairPath\$keyPairName.ppk" -PathType Leaf) {
#         Write-Output "-----//-----//-----//-----//-----//-----//-----"
#         Write-Host "Removendo o arquivo de par de chave $keyPairName.ppk"
#         Remove-Item "$keyPairPath\$keyPairName.ppk"
#     } else {Write-Host "Não existe o arquivo de par de chave $keyPairName.ppk"}

#     Write-Output "-----//-----//-----//-----//-----//-----//-----"
#     Write-Output "Listando todos os pares de chaves criados"
#     aws ec2 describe-key-pairs --query "KeyPairs[].KeyName" --output text
# } else {Write-Output "Não existe o par de chaves de nome $keyPairName!"}

}