Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\outros\fabricio_veronez\devops\curso_081\automation\variaveis.ps1"

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS EC2"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "KEY PAIR"
if ((aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$keyPairName']").Count -gt 1) {
    Write-Output "O par de chaves $keyPairName já foi criado!"
    aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$keyPairName'].KeyName" --output text
} else {
    Write-Output "Listando todos os pares de chaves criados"
    aws ec2 describe-key-pairs --query "KeyPairs[*].KeyName" --output text

    Write-Output "Criando o par de chaves $keyPairName"
    aws ec2 create-key-pair --key-name $keyPairName --query 'KeyMaterial' --output text > "$keyPairPath\$keyPairName.pem"

    Write-Output "Listando apenas o par de chave $keyPairName"
    aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$keyPairName'].KeyName" --output text
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2)"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[]").Count -gt 1) {
    Write-Output "Já existe uma instância EC2 com esse nome de tag $tagNameInstance!"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name' && Value=='$tagNameInstance'].Value" --output text

    Write-Output "Listando o IP público de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text

    Write-Output "Exibindo o comando com endereço completo para acesso remoto via OpenSSH"
    $ipEc2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
    $ipEc2 = $ipEc2.Replace(".", "-")
    Write-Output "ssh -i `"$keyPairPath\$keyPairName.pem`" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com"

    Write-Output "Exibindo o endereço para acesso da aplicação que está rodando no container Docker"
    Write-Output "${ipEc2}:8080"
} else {
    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "Criando a instância EC2 de nome de tag $tagNameInstance"
    $securityGroupId = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
    $subnetId = aws ec2 describe-subnets --query "Subnets[?AvailabilityZone=='$availabilityZone'].SubnetId" --output text
    aws ec2 run-instances --image-id $imageId --instance-type t2.micro --key-name $keyPairName --security-group-ids $securityGroupId --subnet-id $subnetId --count 1 --user-data "file://$userDataPath\$userDataFile" --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$tagNameInstance}]" --no-cli-pager

    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "Listando o IP público de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text

    Write-Output "Exibindo o comando com endereço completo para acesso remoto via OpenSSH"
    $ipEc2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
    $ipEc2 = $ipEc2.Replace(".", "-")
    Write-Output "ssh -i `"$keyPairPath\$keyPairName.pem`" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com"

    Write-Output "Exibindo o endereço para acesso da aplicação que está rodando no container Docker"
    Write-Output "${ipEc2}:8080"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS VPC"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "INBOUND AND OUTBOUND RULES"
$security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
$exist_rule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$security_group_id' && !IsEgress && IpProtocol=='tcp' && to_string(FromPort)=='8080' && to_string(ToPort)=='8080' && CidrIpv4=='0.0.0.0/0']"

if (($exist_rule).Count -gt 1) {
    Write-Output "Já existe a regra de entrada determinada no grupo de segurança padrão!"
    $exist_rule
} else {
    Write-Output "Listando o Id de todas as regras de entrada e saída do grupo de segurança padrão"
    aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$security_group_id" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text

    Write-Output "Adicionando uma regra de entrada ao grupo de segurança para liberação do protocolo TCP"
    aws ec2 authorize-security-group-ingress --group-id $security_group_id --protocol tcp --port 8080 --cidr 0.0.0.0/0
}


# Write-Output "No PuTTYgen, gere a chave privada .ppk a partir da chave pública .pem fornecida"
Write-Output "Aguardando 120 segundos para garantir que todos os programas já foram instalados pelo script Bash $userDataFile!"
Start-Sleep -Seconds 120

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SCP / PSCP (FILE TRANSFER)"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp").Count -gt 1) {
    Write-Output "Extraindo o IP público da instância de nome de tag $tagNameInstance"
    $ipEc2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
    $ipEc2 = $ipEc2.Replace(".", "-")

    # Write-Output "Transferindo os arquivos para a instância de nome de tag $tagNameInstance"
    # scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$dockerHub" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com:/home/ubuntu/

    Write-Output "Verificando se a pasta já existe na instância de nome de tag $tagNameInstance"
    $folderExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@ec2-$ipEc2.compute-1.amazonaws.com "test -d \"/home/ubuntu/$dockerHub\" && echo 'true' || echo 'false'"

    if ($folderExists -eq 'true') {
        Write-Output "A pasta já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
    } else {
        Write-Output "Transferindo os arquivos para a instância de nome de tag $tagNameInstance"
        scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$dockerHub" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com:/home/ubuntu/
    }
} else {
    Write-Output "Não foi fornecido IP público da instância de nome de tag $tagNameInstance"
    aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
}

# Write-Output "Aguardando 200 segundos para garantir que todos os arquivos foram enviados!"
# Start-Sleep -Seconds 200

# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "SSH / PUTTY (REMOTE ACCESS)"
# if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp").Count -gt 1) {
#     Write-Output "Extraindo o IP público da instância de nome de tag $tagNameInstance"
#     $ipEc2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
#     $ipEc2 = $ipEc2.Replace(".", "-")

#     Write-Output "Alterando para diretório do projeto e implantando a infraestrutura com o arquivo serverless"
#     ssh -i "$keyPairPath\$keyPairName.pem" "ubuntu@ec2-$ipEc2.compute-1.amazonaws.com" "cd $projectPath && docker build -t conversao-temperatura ."
# } else {
#     Write-Output "Não foi fornecido IP público da instância de nome de tag $tagNameInstance"
#     aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
# }
