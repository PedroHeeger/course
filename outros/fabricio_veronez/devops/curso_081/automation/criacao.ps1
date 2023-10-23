Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\outros\fabricio_veronez\devops\curso_081\automation\variaveis.ps1"

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AULAS 1 E 2"
# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "SERVIÇO: AWS VPC"
# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "INBOUND AND OUTBOUND RULES - PORT 8080"
# $securityGroupId = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
# $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$securityGroupId' && !IsEgress && IpProtocol=='tcp' && to_string(FromPort)=='8080' && to_string(ToPort)=='8080' && CidrIpv4=='0.0.0.0/0']"

# if (($existRule).Count -gt 1) {
#     Write-Output "Já existe a regra de entrada liberando a porta 8080 no grupo de segurança padrão!"
#     $existRule
# } else {
#     Write-Output "Listando o Id de todas as regras de entrada e saída do grupo de segurança padrão"
#     aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text

#     Write-Output "Adicionando uma regra de entrada ao grupo de segurança padrão para liberação da porta 8080"
#     aws ec2 authorize-security-group-ingress --group-id $securityGroupId --protocol tcp --port 8080 --cidr 0.0.0.0/0
# }




# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "SERVIÇO: AWS EC2"
# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "KEY PAIR"
# if ((aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$keyPairName']").Count -gt 1) {
#     Write-Output "O par de chaves $keyPairName já foi criado!"
#     aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$keyPairName'].KeyName" --output text
# } else {
#     Write-Output "Listando todos os pares de chaves criados"
#     aws ec2 describe-key-pairs --query "KeyPairs[*].KeyName" --output text

#     Write-Output "Criando o par de chaves $keyPairName"
#     aws ec2 create-key-pair --key-name $keyPairName --query 'KeyMaterial' --output text > "$keyPairPath\$keyPairName.pem"

#     Write-Output "Listando apenas o par de chave $keyPairName"
#     aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$keyPairName'].KeyName" --output text
# }

# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2)"
# if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[]").Count -gt 1) {
#     Write-Output "Já existe uma instância EC2 com esse nome de tag $tagNameInstance!"
#     aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name' && Value=='$tagNameInstance'].Value" --output text

#     Write-Output "Listando o IP público de todas as instâncias EC2 criadas"
#     aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text

#     Write-Output "Exibindo o comando com endereço completo para acesso remoto via OpenSSH"
#     $ipEc2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
#     $ipEc2 = $ipEc2.Replace(".", "-")
#     Write-Output "ssh -i `"$keyPairPath\$keyPairName.pem`" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com"

#     Write-Output "Exibindo o endereço para acesso da aplicação que está rodando no container Docker"
#     Write-Output "${ipEc2}:8080"
# } else {
#     Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
#     aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

#     Write-Output "Criando a instância EC2 de nome de tag $tagNameInstance"
#     $securityGroupId = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
#     $subnetId = aws ec2 describe-subnets --query "Subnets[?AvailabilityZone=='$availabilityZone'].SubnetId" --output text
#     aws ec2 run-instances --image-id $imageId --instance-type $instanceType --key-name $keyPairName --security-group-ids $securityGroupId --subnet-id $subnetId --count 1 --user-data "file://$userDataPath\$userDataFile" --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$tagNameInstance}]" --no-cli-pager

#     Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
#     aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

#     Write-Output "Listando o IP público de todas as instâncias EC2 criadas"
#     aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
    
#     # $ipEc2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
#     # Write-Output "Exibindo o endereço para acesso da aplicação que está rodando no container Docker"
#     # Write-Output "${ipEc2}:8080"

#     # Write-Output "Exibindo o comando com endereço completo para acesso remoto via OpenSSH"
#     # $ipEc2 = $ipEc2.Replace(".", "-")
#     # Write-Output "ssh -i `"$keyPairPath\$keyPairName.pem`" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com"
# }


# Write-Output "Aguardando 200 segundos para garantir que todos os programas já foram instalados pelo script Bash $userDataFile!"
# Start-Sleep -Seconds 200


# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "SCP / PSCP (FILE TRANSFER)"
# if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp").Count -gt 1) {
#     Write-Output "Extraindo o IP público da instância de nome de tag $tagNameInstance"
#     $ipEc2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
#     Write-Output "Exibindo o endereço para acesso da aplicação que está rodando no container Docker"
#     Write-Output "${ipEc2}:8080"

#     Write-Output "Exibindo o comando com endereço completo para acesso remoto via OpenSSH"
#     $ipEc2 = $ipEc2.Replace(".", "-")
#     Write-Output "ssh -i `"$keyPairPath\$keyPairName.pem`" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com"


#     # Write-Output "Transferindo os arquivos para a instância de nome de tag $tagNameInstance"
#     # scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$dockerHub" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com:/home/ubuntu/
#     Write-Output "Aguardando 15 segundos para realizar o acesso remoto..."
#     Start-Sleep -Seconds 15

#     # "-----//-----//-----//-----//-----//-----//-----"
#     # Write-Output "AWS CLI"
#     # Write-Output "Verificando se a pasta $awsCliFolder já existe na instância de nome de tag $tagNameInstance"
#     # $folderExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@ec2-$ipEc2.compute-1.amazonaws.com "test -d \"$vmPath/$awsCliFolder\" && echo 'true' || echo 'false'"

#     # if ($folderExists -eq 'true') {
#     #     Write-Output "A pasta $awsCliFolder já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
#     # } else {
#     #     Write-Output "Transferindo a pasta $awsCliFolder para a instância de nome de tag $tagNameInstance"
#     #     scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$awsCliPath\$awsCliFolder" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com:$vmPath
#     # }
    
#     "-----//-----//-----//-----//-----//-----//-----"
#     Write-Output "DOCKER HUB"
#     Write-Output "Verificando se a pasta $dockerHubFolder já existe na instância de nome de tag $tagNameInstance"
#     $folderExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@ec2-$ipEc2.compute-1.amazonaws.com "test -d \"$vmPath/$dockerHubFolder\" && echo 'true' || echo 'false'"

#     if ($folderExists -eq 'true') {
#         Write-Output "A pasta $dockerHubFolder já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
#     } else {
#         Write-Output "Transferindo a pasta $dockerHubFolder para a instância de nome de tag $tagNameInstance"
#         scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$dockerHubPath\$dockerHubFolder" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com:$vmPath
#     }

#     "-----//-----//-----//-----//-----//-----//-----"
#     Write-Output "MANIFESTO DEPLOYMENT 1"
#     Write-Output "Verificando se o arquivo $deploymentFile1 já existe na instância de nome de tag $tagNameInstance"
#     $fileExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@ec2-$ipEc2.compute-1.amazonaws.com "test -d \"$projectPath/$deploymentFile1\" && echo 'true' || echo 'false'"

#     if ($fileExists -eq 'true') {
#         Write-Output "O arquivo $deploymentFile1 já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
#     } else {
#         Write-Output "Transferindo o arquivo $deploymentFile1 para a instância de nome de tag $tagNameInstance"
#         scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$deploymentFilePath\$deploymentFile1" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com:$projectPath
#     }

#     # "-----//-----//-----//-----//-----//-----//-----"
#     # Write-Output "DOCKERFILE"
#     # Write-Output "Verificando se o arquivo $dockerFile já existe na instância de nome de tag $tagNameInstance"
#     # $fileExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@ec2-$ipEc2.compute-1.amazonaws.com "test -d \"$projectPath2src/$dockerFile\" && echo 'true' || echo 'false'"

#     # if ($fileExists -eq 'true') {
#     #     Write-Output "O arquivo $dockerFile já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
#     # } else {
#     #     Write-Output "Transferindo o arquivo $dockerFile para a instância de nome de tag $tagNameInstance"
#     #     scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$deploymentFilePath\$dockerFile" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com:$projectPath2src
#     # }

#     # "-----//-----//-----//-----//-----//-----//-----"
#     # Write-Output "MANIFESTO DEPLOYMENT 2"
#     # Write-Output "Verificando se o arquivo $deploymentFile2 já existe na instância de nome de tag $tagNameInstance"
#     # $fileExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@ec2-$ipEc2.compute-1.amazonaws.com "test -d \"$projectPath2k8s/$deploymentFile2\" && echo 'true' || echo 'false'"

#     # if ($fileExists -eq 'true') {
#     #     Write-Output "O arquivo $deploymentFile2 já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
#     # } else {
#     #     Write-Output "Transferindo o arquivo $deploymentFile2 para a instância de nome de tag $tagNameInstance"
#     #     scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$deploymentFilePath\$deploymentFile2" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com:$projectPath2k8s
#     # }

#     # Write-Output "Aguardando 30 segundos..."
#     # Start-Sleep -Seconds 30

#     # "-----//-----//-----//-----//-----//-----//-----"
#     # Write-Output "DADOS PARA APLICAÇÃO"
#     # Write-Output "Verificando se o arquivo $dataFile já existe na instância de nome de tag $tagNameInstance"
#     # $fileExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@ec2-$ipEc2.compute-1.amazonaws.com "test -d \"$projectPath2/$dataFile\" && echo 'true' || echo 'false'"

#     # if ($fileExists -eq 'true') {
#     #     Write-Output "O arquivo $dataFile já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
#     # } else {
#     #     Write-Output "Transferindo o arquivo $dataFile para a instância de nome de tag $tagNameInstance"
#     #     scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$dataFilePath\$dataFile" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com:$projectPath2
#     # }
# } else {
#     Write-Output "Não foi fornecido IP público da instância de nome de tag $tagNameInstance"
#     aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
# }




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AULA 3"
$resposta = Read-Host "Digite 'sim' se deseja continuar, 'nao' para parar"

if ($resposta -eq 'nao') {
    Write-Host "Usuário escolheu parar o código. Saindo..."
    exit
} else {

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS VPC"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "VIRTUAL PRIVATE CLOUD (VPC)"
if ((aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].Tags[].Value").Count -gt 1) {
    Write-Output "Já existe a VPC de nome $vpcName!"
    aws ec2 describe-vpcs --query "Vpcs[].Tags[?Key=='Name' && Value=='$vpcName'].Value" --output text
} else {
    Write-Output "Listando o nome de tag de todas as VPCs existentes que possuem tag"
    aws ec2 describe-vpcs --query "Vpcs[].Tags[].Value" --output text

    Write-Output "Criando a VPC de nome de tag $vpcName"
    aws ec2 create-vpc --cidr-block 10.0.0.0/16 --tag-specifications "ResourceType=vpc,Tags=[{Key=Name,Value=$vpcName}]" --no-cli-pager

    Write-Output "Listando o nome de tag de todas as VPCs existentes que possuem tag"
    aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].Tags[].Value" --output text
}

$vpcId = aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].VpcId" --output text
if ((aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].Tags[].Value").Count -gt 1) {
    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "SUBNET PRIVADA"
    if ((aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPrivName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[].Value").Count -gt 1) {
        Write-Output "Já existe a Subnet $subnetPrivName vinculada na VPC $vpcName!"
        aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPrivName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[].Value" --output text
    } else {
        Write-Output "Listando o nome de tag de todas as Subnets da VPC $vpcName"
        aws ec2 describe-subnets --filters "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[].Value" --output text

        Write-Output "Criando a Subnet de nome de tag $subnetPrivName da VPC de nome de tag $vpcName"
        aws ec2 create-subnet --vpc-id $vpcId --cidr-block 10.0.1.0/24 --availability-zone $availabilityZone --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=$subnetPrivName}]" --no-cli-pager

        Write-Output "Listando o nome de tag da Subnet $subnetPrivName da VPC $vpcName"
        aws ec2 describe-subnets --filters "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[?Key=='Name' && Value=='$subnetPrivName'].Value" --output text
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "SUBNET PÚBLICA"
    if ((aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPubName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[].Value").Count -gt 1) {
        Write-Output "Já existe a Subnet $subnetPubName vinculada na VPC $vpcName!"
        aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPubName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[].Value" --output text
    } else {
        Write-Output "Listando o nome de tag de todas as Subnets da VPC $vpcName"
        aws ec2 describe-subnets --filters "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[].Value" --output text

        Write-Output "Criando a Subnet de nome de tag $subnetPubName da VPC de nome de tag $vpcName"
        aws ec2 create-subnet --vpc-id $vpcId --cidr-block 10.0.0.0/24 --availability-zone $availabilityZone --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=$subnetPubName}]" --no-cli-pager

        Write-Output "Listando o nome de tag da Subnet $subnetPubName da VPC $vpcName"
        aws ec2 describe-subnets --filters "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[?Key=='Name' && Value=='$subnetPubName'].Value" --output text
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "INTERNET GATEWAY"
    if ((aws ec2 describe-internet-gateways --filters "Name=attachment.vpc-id,Values=$vpcId" "Name=tag:Name,Values=$internetGatewayName" --query "InternetGateways[].Tags[].Value").Count -gt 1) {
        Write-Output "Já existe o Internet Gateway de nome de tag $internetGatewayName vinculada na VPC $vpcName!"
        aws ec2 describe-internet-gateways --filters "Name=attachment.vpc-id,Values=$vpcId" "Name=tag:Name,Values=$internetGatewayName" --query "InternetGateways[].Tags[].Value" --output text
    } else {
        Write-Output "Listando o nome de tag de todos os Internet Gateway da VPC $vpcName"
        aws ec2 describe-internet-gateways --filters "Name=attachment.vpc-id,Values=$vpcId" --query "InternetGateways[].Tags[].Value" --output text

        Write-Output "Criando o Internet Gateway de nome de tag $internetGatewayName"
        aws ec2 create-internet-gateway --tag-specifications "ResourceType=internet-gateway,Tags=[{Key=Name,Value=$internetGatewayName}]"

        Write-Output "Vinculando o Internet Gateway de nome de tag $internetGatewayName a VPC de nome de tag $vpcName"
        $internetGatewayId = aws ec2 describe-internet-gateways --filters "Name=tag:Name,Values=$internetGatewayName" --query "InternetGateways[].InternetGatewayId" --output text
        aws ec2 attach-internet-gateway --internet-gateway-id $internetGatewayId --vpc-id $vpcId

        Write-Output "Listando o nome de tag do Internet Gateway $internetGatewayName da VPC $vpcName"
        aws ec2 describe-internet-gateways --filters "Name=attachment.vpc-id,Values=$vpcId" "Name=tag:Name,Values=$internetGatewayName" --query "InternetGateways[].Tags[].Value" --output text
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "ROUTE TABLE PUBLICA"
    if ((aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$routeTablePubName" --query "RouteTables[].Tags[].Value").Count -gt 1) {
        Write-Output "Já existe a Route Table Pública de nome de tag $routeTablePubName vinculada na VPC $vpcName!"
        aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$routeTablePubName" --query "RouteTables[].Tags[].Value" --output text
    } else {
        Write-Output "Listando o nome de tag de todas as Route Tables da VPC $vpcName"
        aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" --query "RouteTables[].Tags[].Value" --output text

        Write-Output "Criando a Route Table Pública de nome de tag $routeTablePubName para a VPC de nome de tag $vpcName"
        aws ec2 create-route-table --vpc-id $vpcId --tag-specifications "ResourceType=route-table,Tags=[{Key=Name,Value=$routeTablePubName}]" --no-cli-pager

        Write-Output "Adicionando uma Rota a Route Table Pública de nome de tag $routeTablePubName para apontar para o Internet Gateway $internetGatewayName"
        $routeTableId = aws ec2 describe-route-tables --filters "Name=tag:Name,Values=$routeTablePubName" --query "RouteTables[].RouteTableId" --output text
        $internetGatewayId = aws ec2 describe-internet-gateways --filters "Name=tag:Name,Values=$internetGatewayName" --query "InternetGateways[].InternetGatewayId" --output text
        aws ec2 create-route --route-table-id $routeTableId --destination-cidr-block 0.0.0.0/0 --gateway-id $internetGatewayId

        Write-Output "Adicionando a Subnet Pública $subnetPubName a Route Table Pública de nome de tag $routeTablePubName"
        $subnetId = aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPubName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
        aws ec2 associate-route-table --subnet-id $subnetId --route-table-id $routeTableId

        Write-Output "Listando o nome de tag da Route Table Pública $routeTablePubName da VPC $vpcName"
        aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$routeTablePubName" --query "RouteTables[].Tags[].Value" --output text
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "NAT GATEWAY"
    if ((aws ec2 describe-nat-gateways --filter "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$natGatewayName" --query "NatGateways[].Tags[].Value").Count -gt 1) {
        Write-Output "Já existe o NAT Gateway de nome de tag $natGatewayName vinculada na VPC $vpcName!"
        aws ec2 describe-nat-gateways --filter "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$natGatewayName" --query "NatGateways[].Tags[].Value" --output text
    } else {
        Write-Output "Listando o nome de tag de todos os NAT Gateway da VPC $vpcName"
        aws ec2 describe-nat-gateways --filter "Name=vpc-id,Values=$vpcId" --query "NatGateways[].Tags[].Value" --output text

        Write-Output "Alocando um IP elástico aleatório para utilizar no NAT Gateway de nome de tag $natGatewayName"
        $allocationid = aws ec2 allocate-address --query 'AllocationId' --output text

        Write-Output "Criando o NAT Gateway de nome de tag $natGatewayName"
        $subnetId = aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPubName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
        aws ec2 create-nat-gateway --subnet-id $subnetId --allocation-id $allocationid --tag-specifications "ResourceType=natgateway,Tags=[{Key=Name,Value=$natGatewayName}]" --no-cli-pager

        Write-Output "Listando o nome de tag do NAT Gateway $natGatewayName da VPC $vpcName"
        aws ec2 describe-nat-gateways --filter "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$natGatewayName" --query "NatGateways[].Tags[].Value" --output text
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "ROUTE TABLE PRIVADA"
    if ((aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$routeTablePrivName" --query "RouteTables[].Tags[].Value").Count -gt 1) {
        Write-Output "Já existe a Route Table Privada de nome de tag $routeTablePrivName vinculada na VPC $vpcName!"
        aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$routeTablePrivName" --query "RouteTables[].Tags[].Value" --output text
    } else {
        Write-Output "Listando o nome de tag de todas as Route Tables da VPC $vpcName"
        aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" --query "RouteTables[].Tags[].Value" --output text

        Write-Output "Criando a Route Table Privada de nome de tag $routeTablePrivName para a VPC de nome de tag $vpcName"
        aws ec2 create-route-table --vpc-id $vpcId --tag-specifications "ResourceType=route-table,Tags=[{Key=Name,Value=$routeTablePrivName}]" --no-cli-pager

        Write-Output "Adicionando uma Rota a Route Table Privada de nome de tag $routeTablePrivName para apontar para o NAT Gateway $natGatewayName"
        $routeTableId = aws ec2 describe-route-tables --filters "Name=tag:Name,Values=$routeTablePrivName" --query "RouteTables[].RouteTableId" --output text
        $natGatewayId = aws ec2 describe-nat-gateways --filter "Name=tag:Name,Values=$natGatewayName" --query "NatGateways[].NatGatewayId" --output text
        aws ec2 create-route --route-table-id $routeTableId --destination-cidr-block 0.0.0.0/0 --nat-gateway-id $natGatewayId

        Write-Output "Adicionando a Subnet Pública $subnetPubName a Route Table Privada de nome de tag $routeTablePrivName"
        $subnetId = aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPubName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
        aws ec2 associate-route-table --subnet-id $subnetId --route-table-id $routeTableId

        Write-Output "Listando o nome de tag da Route Table Privada $routeTablePrivName da VPC $vpcName"
        aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$routeTablePrivName" --query "RouteTables[].Tags[].Value" --output text
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "SECURITY GROUP"
    $securityGroupId = aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].GroupId" --output text
    if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[?Tags[?Key=='Name' && Value=='$securityGroupName']]").Count -gt 1) {
        Write-Output "Já existe o Security Group de nome de tag $securityGroupName vinculada na VPC $vpcName!"
        aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].Tags[?Value=='$securityGroupName'].Value" --output text
    } else {
        Write-Output "Listando o nome de tag de todos os Security Groups da VPC $vpcName"
        aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].Tags[].Value" --output text

        # Write-Output "Criando o Security Group de nome de tag $securityGroupName para a VPC de nome de tag $vpcName"
        # aws ec2 create-security-group --group-name $securityGroupName --description "Curso 081" --vpc-id $vpcId --tag-specifications "ResourceType=security-group,Tags=[{Key=Name,Value=$securityGroupName}]" --no-cli-pager

        Write-Output "Criando a tag $securityGroupName para o Security Group padrão da VPC de nome de tag $vpcName"
        aws ec2 create-tags --resources $securityGroupId --tags "Key=Name,Value=$securityGroupName"

        Write-Output "Listando o nome de tag do Security Group $securityGroupName da VPC $vpcName"
        aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$securityGroupName" --query "SecurityGroups[].Tags[].Value" --output text
    }

    if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[?Tags[?Key=='Name' && Value=='$securityGroupName']]").Count -gt 1) {
        $securityGroupId = aws ec2 describe-security-groups --filters "Name=tag:Name,Values=$securityGroupName" --query "SecurityGroups[].GroupId" --output text
        "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "INBOUND AND OUTBOUND RULES - PORT 8080"
        $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$securityGroupId' && !IsEgress && IpProtocol=='tcp' && to_string(FromPort)=='8080' && to_string(ToPort)=='8080' && CidrIpv4=='0.0.0.0/0']"

        if (($existRule).Count -gt 1) {
            Write-Output "Já existe a regra de entrada liberando a porta 8080 no Security Group!"
            $existRule
        } else {
            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text

            Write-Output "Adicionando uma regra de entrada ao Security Group para liberação da porta 8080"
            aws ec2 authorize-security-group-ingress --group-id $securityGroupId --protocol tcp --port 8080 --cidr 0.0.0.0/0

            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
        }

        "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "INBOUND AND OUTBOUND RULES - PORT 443"
        $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$securityGroupId' && !IsEgress && IpProtocol=='tcp' && to_string(FromPort)=='443' && to_string(ToPort)=='443' && CidrIpv4=='0.0.0.0/0']"

        if (($existRule).Count -gt 1) {
            Write-Output "Já existe a regra de entrada liberando a porta 443 no Security Group!"
            $existRule
        } else {
            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text

            Write-Output "Adicionando uma regra de entrada ao Security Group para liberação da porta 443"
            aws ec2 authorize-security-group-ingress --group-id $securityGroupId --protocol tcp --port 443 --cidr 0.0.0.0/0

            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
        }

        "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "INBOUND AND OUTBOUND RULES - PORT 22"
        $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$securityGroupId' && !IsEgress && IpProtocol=='tcp' && to_string(FromPort)=='22' && to_string(ToPort)=='22' && CidrIpv4=='0.0.0.0/0']"

        if (($existRule).Count -gt 1) {
            Write-Output "Já existe a regra de entrada liberando a porta 22 no Security Group!"
            $existRule
        } else {
            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text

            Write-Output "Adicionando uma regra de entrada ao Security Group para liberação da porta 22"
            aws ec2 authorize-security-group-ingress --group-id $securityGroupId --protocol tcp --port 22 --cidr 0.0.0.0/0

            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
        }
    } else {
        Write-Output "O Security Group de nome de tag $securityGroupName não está vinculado a VPC $vpcName!"
    }
} else {
    Write-Output "A VPC de nome de tag $vpcName não existe!"
}



"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS EC2"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2) PÚBLICO"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstancePub" --query "Reservations[].Instances[]").Count -gt 1) {
    Write-Output "Já existe uma instância EC2 com esse nome de tag $tagNameInstancePub!"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name' && Value=='$tagNameInstancePub'].Value" --output text

    Write-Output "Exibindo o comando com endereço completo para acesso remoto via OpenSSH"
    $ipEc2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstancePub" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
    $ipEc2 = $ipEc2.Replace(".", "-")
    Write-Output "ssh -i `"$keyPairPath\$keyPairName.pem`" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com"
} else {
    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "Criando a instância EC2 de nome de tag $tagNameInstancePub"
    $vpcId = aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].VpcId" --output text
    $subnetId = aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPubName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
    $securityGroupId = aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$securityGroupName" --query "SecurityGroups[].GroupId" --output text
    aws ec2 run-instances --image-id $imageId --instance-type $instanceType --key-name $keyPairName --security-group-ids $securityGroupId --subnet-id $subnetId --count 1 --user-data "file://$userDataPath\$userDataFile2" --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$tagNameInstancePub}]" --no-cli-pager

    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "Listando o IP público de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
    
    $ipEc2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstancePub" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
    Write-Output "Exibindo o endereço para acesso ao servidor Nginx"
    Write-Output "${ipEc2}:8080"

    Write-Output "Exibindo o comando com endereço completo para acesso remoto via OpenSSH"
    # $ipEc2 = $ipEc2.Replace(".", "-")
    # Write-Output "ssh -i `"$keyPairPath\$keyPairName.pem`" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com"
    Write-Output "ssh -i `"$keyPairPath\$keyPairName.pem`" ubuntu@$ipEc2"

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "SCP / PSCP (FILE TRANSFER)"
    Write-Output "Transferindo o arquivo $keyPairName.pem para a instância de nome de tag $tagNameInstancePub"
    # scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$dataFilePath\$dataFile" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com:$projectPath2
    scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$keyPairPath\$keyPairName.pem" ubuntu@${ipEc2}:/home/ubuntu/.ssh
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2) PRIVADO"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstancePriv" --query "Reservations[].Instances[]").Count -gt 1) {
    Write-Output "Já existe uma instância EC2 com esse nome de tag $tagNameInstancePriv!"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name' && Value=='$tagNameInstancePriv'].Value" --output text

    Write-Output "Exibindo o comando com endereço completo para acesso remoto via OpenSSH ao IP privado da segunda maquina"
    $ipEc2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstancePriv" --query "Reservations[].Instances[].PrivateIpAddress" --output text
    $ipEc2 = $ipEc2.Replace(".", "-")
    Write-Output "ssh -i `"$keyPairPath\$keyPairName.pem`" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com"
} else {
    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "Criando a instância EC2 de nome de tag $tagNameInstancePriv"
    $vpcId = aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].VpcId" --output text
    $subnetId = aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPrivName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
    $securityGroupId = aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$securityGroupName" --query "SecurityGroups[].GroupId" --output text
    aws ec2 run-instances --image-id $imageId --instance-type $instanceType --key-name $keyPairName --security-group-ids $securityGroupId --subnet-id $subnetId --count 1 --user-data "file://$userDataPath\$userDataFile2" --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$tagNameInstancePriv}]" --no-cli-pager

    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "Listando o IP público de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
    
    $ipEc2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstancePriv" --query "Reservations[].Instances[].PrivateIpAddress" --output text
    Write-Output "Exibindo o endereço para acesso ao servidor Nginx"
    Write-Output "${ipEc2}:8080"

    Write-Output "Exibindo o comando com endereço completo para acesso remoto via OpenSSH ao IP privado da segunda maquina"
    # $ipEc2 = $ipEc2.Replace(".", "-")
    # Write-Output "ssh -i `"$keyPairPath\$keyPairName.pem`" ubuntu@ec2-$ipEc2.compute-1.amazonaws.com"
    Write-Output "ssh -i `"$keyPairPath\$keyPairName.pem`" ubuntu@$ipEc2"
}

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
