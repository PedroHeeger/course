Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\outros\fabricio_veronez\devops\curso_081\automation\variaveis.ps1"

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS VPC"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "INBOUND AND OUTBOUND RULES"
$security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
$exist_rule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$security_group_id' && !IsEgress && IpProtocol=='tcp' && to_string(FromPort)=='8080' && to_string(ToPort)=='8080' && CidrIpv4=='0.0.0.0/0']"
if (($exist_rule).Count -gt 1) {
    Write-Output "Removendo a regra de entrada determinada no grupo de segurança padrão"
    aws ec2 revoke-security-group-ingress --group-id $security_group_id --protocol tcp --port 8080 --cidr 0.0.0.0/0

    Write-Output "Listando as regras do grupo de segurança padrão"
    aws ec2 describe-security-group-rules --no-cli-pager
} else {
    Write-Output "O grupo de segurança padrão não possui essa regra de entrada!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2)"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[]").Count -gt 1) {
    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "Removendo a instância criada de nome de tag $tagNameInstance"
    $instanceId1 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].InstanceId" --output text
    aws ec2 terminate-instances --instance-ids $instanceId1 --no-dry-run --no-cli-pager

    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text
} else {
    Write-Output "Não existe instâncias com o nome de tag $tagNameInstance!"
}

# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "SERVIÇO: AWS EC2"
# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "KEY PAIR"
# if ((aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$keyPairName']").Count -gt 1) {
#     Write-Output "Removendo o par de chaves criado de nome $keyPairName e os arquivos pem e ppk"
#     aws ec2 delete-key-pair --key-name $keyPairName

#     if (Test-Path "$keyPairPath\$keyPairName.pem" -PathType Leaf) {
#         Write-Host "Removendo o arquivo de par de chave $keyPairName.pem"
#         Remove-Item "$keyPairPath\$keyPairName.pem"
#     } else {
#         Write-Host "Não existe o arquivo de par de chave $keyPairName.pem"
#     }
#     if (Test-Path "$keyPairPath\$keyPairName.ppk" -PathType Leaf) {
#         Write-Host "Removendo o arquivo de par de chave $keyPairName.ppk"
#         Remove-Item "$keyPairPath\$keyPairName.ppk"
#     } else {
#         Write-Host "Não existe o arquivo de par de chave $keyPairName.ppk"
#     }
# } else {
#     Write-Output "Não existe o par de chaves de $keyPairName!"
# }