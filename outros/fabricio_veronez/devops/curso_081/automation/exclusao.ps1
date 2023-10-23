Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\outros\fabricio_veronez\devops\curso_081\automation\variaveis.ps1"

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AULAS 1 E 2"
# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "SERVIÇO: AWS VPC"
# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "INBOUND AND OUTBOUND RULES"
# $securityGroupId = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
# $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$securityGroupId' && !IsEgress && IpProtocol=='tcp' && to_string(FromPort)=='8080' && to_string(ToPort)=='8080' && CidrIpv4=='0.0.0.0/0']"
# if (($existRule).Count -gt 1) {
#     Write-Output "Removendo a regra de entrada determinada no grupo de segurança padrão"
#     aws ec2 revoke-security-group-ingress --group-id $securityGroupId --protocol tcp --port 8080 --cidr 0.0.0.0/0

#     Write-Output "Listando as regras do grupo de segurança padrão"
#     aws ec2 describe-security-group-rules --no-cli-pager
# } else {
#     Write-Output "O grupo de segurança padrão não possui essa regra de entrada!"
# }




# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "SERVIÇO: AWS EC2"
# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2)"
# if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[]").Count -gt 1) {
#     Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
#     aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

#     Write-Output "Removendo a instância criada de nome de tag $tagNameInstance"
#     $instanceId1 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].InstanceId" --output text
#     aws ec2 terminate-instances --instance-ids $instanceId1 --no-dry-run --no-cli-pager

#     Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
#     aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text
# } else {
#     Write-Output "Não existe instâncias com o nome de tag $tagNameInstance!"
# }

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




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AULA 3"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS VPC"
if ((aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].Tags[].Value").Count -gt 1) {
    $vpcId = aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].VpcId" --output text
    $securityGroupId = aws ec2 describe-security-groups --filters "Name=tag:Name,Values=$securityGroupName" --query "SecurityGroups[].GroupId" --output text

    if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[?Tags[?Key=='Name' && Value=='$securityGroupName']]").Count -gt 1) {
        "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "INBOUND AND OUTBOUND RULES - PORT 8080"
        $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$securityGroupId' && !IsEgress && IpProtocol=='tcp' && to_string(FromPort)=='8080' && to_string(ToPort)=='8080' && CidrIpv4=='0.0.0.0/0']"
    
        if (($existRule).Count -gt 1) {
            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
    
            Write-Output "Removendo a regra de entrada do Security Group para liberação da porta 8080"
            aws ec2 revoke-security-group-ingress --group-id $securityGroupId --protocol tcp --port 8080 --cidr 0.0.0.0/0
    
            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
        } else {
            Write-Output "Não existe a regra de entrada liberando a porta 8080 no Security Group $securityGroupName!"
        }
    
        "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "INBOUND AND OUTBOUND RULES - PORT 443"
        $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$securityGroupId' && !IsEgress && IpProtocol=='tcp' && to_string(FromPort)=='443' && to_string(ToPort)=='443' && CidrIpv4=='0.0.0.0/0']"
    
        if (($existRule).Count -gt 1) {
            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
    
            Write-Output "Removendo a regra de entrada do Security Group para liberação da porta 443"
            aws ec2 revoke-security-group-ingress --group-id $securityGroupId --protocol tcp --port 443 --cidr 0.0.0.0/0

            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
        } else {
            Write-Output "Não existe a regra de entrada liberando a porta 443 no Security Group $securityGroupName!"
        }

        "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "INBOUND AND OUTBOUND RULES - PORT 22"
        $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$securityGroupId' && !IsEgress && IpProtocol=='tcp' && to_string(FromPort)=='22' && to_string(ToPort)=='22' && CidrIpv4=='0.0.0.0/0']"
    
        if (($existRule).Count -gt 1) {
            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
    
            Write-Output "Removendo a regra de entrada do Security Group para liberação da porta 22"
            aws ec2 revoke-security-group-ingress --group-id $securityGroupId --protocol tcp --port 22 --cidr 0.0.0.0/0

            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
        } else {
            Write-Output "Não existe a regra de entrada liberando a porta 22 no Security Group $securityGroupName!"
        }

        "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "SECURITY GROUP"
        Write-Output "Listando o nome de tag de todos os Security Groups da VPC $vpcName"
        aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].Tags[].Value" --output text
    
        Write-Output "Removendo o Security Group de nome de tag $securityGroupName da VPC de nome de tag $vpcName"
        aws ec2 delete-security-group --group-id $securityGroupId
    
        Write-Output "Listando o nome de tag de todos os Security Groups da VPC $vpcName"
        aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].Tags[].Value" --output text

    } else {
        Write-Output "O Security Group de nome de tag $securityGroupName não está vinculado a VPC $vpcName!"
    }


    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "ROUTE TABLE PÚBLICA"
    $vpcId = aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].VpcId" --output text
    if ((aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$routeTablePubName" --query "RouteTables[].Tags[].Value").Count -gt 1) {
        Write-Output "Listando o nome de tag de todas as Route Tables da VPC $vpcName"
        aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" --query "RouteTables[].Tags[].Value" --output text

        Write-Output "Desvinculando a Subnet Pública $subnetPubName da Route Table Pública de nome de tag $routeTablePubName"
        $routeTableId = aws ec2 describe-route-tables --filters "Name=tag:Name,Values=$routeTablePubName" --query "RouteTables[].RouteTableId" --output text
        $associationId = aws ec2 describe-route-tables --route-table-id $routeTableId --query 'RouteTables[].Associations[].RouteTableAssociationId' --output text
        # $subnetId = aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPubName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
        aws ec2 disassociate-route-table --association-id $associationId

        Write-Output "Removendo uma Rota da Route Table Pública de nome de tag $routeTablePubName"
        # $internetGatewayId = aws ec2 describe-internet-gateways --filters "Name=tag:Name,Values=$gatewayName" --query "InternetGateways[].InternetGatewayId" --output text
        aws ec2 delete-route --route-table-id $routeTableId --destination-cidr-block 0.0.0.0/0
    
        Write-Output "Removendo a Route Table Pública de nome de tag $routeTablePubName"
        aws ec2 delete-route-table --route-table-id $routeTableId
    
        Write-Output "Listando o nome de tag de todas as Route Tables da VPC $vpcName"
        aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" --query "RouteTables[].Tags[].Value" --output text
    } else {
        Write-Output "A Route Table Pública de nome de tag $routeTablePubName não está vinculado a VPC $vpcName!"
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "ROUTE TABLE PRIVADA"
    $vpcId = aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].VpcId" --output text
    if ((aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$routeTablePrivName" --query "RouteTables[].Tags[].Value").Count -gt 1) {
        Write-Output "Listando o nome de tag de todas as Route Tables da VPC $vpcName"
        aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" --query "RouteTables[].Tags[].Value" --output text

        Write-Output "Desvinculando a Subnet Pública $subnetPubName da Route Table Privada de nome de tag $routeTablePrivName"
        $routeTableId = aws ec2 describe-route-tables --filters "Name=tag:Name,Values=$routeTablePrivName" --query "RouteTables[].RouteTableId" --output text
        # $associationId = aws ec2 describe-route-tables --route-table-id $routeTableId --query 'RouteTables[].Associations[].RouteTableAssociationId' --output text
        # # $subnetId = aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPubName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
        # aws ec2 disassociate-route-table --association-id $associationId

        Write-Output "Removendo uma Rota da Route Table Privada de nome de tag $routeTablePrivName"
        # $natGatewayId = aws ec2 describe-nat-gateways --filter "Name=tag:Name,Values=$natGatewayName" --query "NatGateways[].NatGatewayId" --output text
        aws ec2 delete-route --route-table-id $routeTableId --destination-cidr-block 0.0.0.0/0
    
        Write-Output "Removendo a Route Table Privada de nome de tag $routeTablePrivName"
        aws ec2 delete-route-table --route-table-id $routeTableId    

        # $subnetId = aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPrivName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text

        Write-Output "Listando o nome de tag de todas as Route Tables da VPC $vpcName"
        aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" --query "RouteTables[].Tags[].Value" --output text
    } else {
        Write-Output "A Route Table Privada de nome de tag $routeTablePrivName não está vinculado a VPC $vpcName!"
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "INTERNET GATEWAY"
    $vpcId = aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].VpcId" --output text
    if ((aws ec2 describe-internet-gateways --filters "Name=attachment.vpc-id,Values=$vpcId" "Name=tag:Name,Values=$internetGatewayName" --query "InternetGateways[].Tags[].Value").Count -gt 1) {
        Write-Output "Listando o nome de tag de todos os Internet Gateway $internetGatewayName da VPC $vpcName"
        aws ec2 describe-internet-gateways --filters "Name=attachment.vpc-id,Values=$vpcId" --query "InternetGateways[].Tags[].Value" --output text
    
        Write-Output "Desvinculando o Internet Gateway de nome de tag $internetGatewayName da VPC de nome de tag $vpcName"
        $internetGatewayId = aws ec2 describe-internet-gateways --filters "Name=tag:Name,Values=$internetGatewayName" --query "InternetGateways[].InternetGatewayId" --output text
        aws ec2 detach-internet-gateway --internet-gateway-id $internetGatewayId --vpc-id $vpcId

        Write-Output "Removendo o Internet Gateway de nome de tag $internetGatewayName"
        aws ec2 delete-internet-gateway --internet-gateway-id $internetGatewayId
    
        Write-Output "Listando o nome de tag de todos os Internet Gateway $internetGatewayName da VPC $vpcName"
        aws ec2 describe-internet-gateways --filters "Name=attachment.vpc-id,Values=$vpcId" --query "InternetGateways[].Tags[].Value" --output text
    } else {
        Write-Output "O Internet Gateway de nome de tag $internetGatewayName não está vinculado a VPC $vpcName!"
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "NAT GATEWAY"
    $vpcId = aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].VpcId" --output text
    if ((aws ec2 describe-nat-gateways --filter "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$natGatewayName" --query "NatGateways[].Tags[].Value").Count -gt 1) {
        Write-Output "Listando o nome de tag de todos os NAT Gateway da VPC $vpcName"
        aws ec2 describe-nat-gateways --filter "Name=vpc-id,Values=$vpcId" --query "NatGateways[].Tags[].Value" --output text
       
        Write-Output "Removendo o NAT Gateway de nome de tag $natGatewayName"
        $natGatewayId = aws ec2 describe-nat-gateways --filter "Name=tag:Name,Values=$natGatewayName" --query "NatGateways[].NatGatewayId" --output text
        aws ec2 delete-nat-gateway --nat-gateway-id $natGatewayId
    
        Write-Output "Listando o nome de tag de todos os NAT Gateway da VPC $vpcName"
        aws ec2 describe-nat-gateways --filter "Name=vpc-id,Values=$vpcId" --query "NatGateways[].Tags[].Value" --output text
    } else {
        Write-Output "O NAT Gateway de nome de tag $natGatewayName não está vinculado a VPC $vpcName!"
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "SUBNET PRIVADA"
    $vpcId = aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].VpcId" --output text
    if ((aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPrivName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[].Value").Count -gt 1) {
        Write-Output "Listando o nome de tag de todas as Subnets da VPC $vpcName"
        aws ec2 describe-subnets --filters "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[].Value" --output text

        Write-Output "Removendo a Subnet de nome de tag $subnetPrivName da VPC de nome de tag $vpcName"
        $subnetId = aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPrivName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
        aws ec2 delete-subnet --subnet-id $subnetId

        Write-Output "Listando o nome de tag de todas as Subnets da VPC $vpcName"
        aws ec2 describe-subnets --filters "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[].Value" --output text
    } else {
        Write-Output "A Subnet de nome de tag $subnetPrivName não existe na VPC $vpcName!"
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "SUBNET PÚBLICA"
    $vpcId = aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].VpcId" --output text
    if ((aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPubName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[].Value").Count -gt 1) {
        Write-Output "Listando o nome de tag de todas as Subnets da VPC $vpcName"
        aws ec2 describe-subnets --filters "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[].Value" --output text

        Write-Output "Removendo a Subnet de nome de tag $subnetPubName da VPC de nome de tag $vpcName"
        $subnetId = aws ec2 describe-subnets --filters "Name=tag:Name,Values=$subnetPubName" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
        aws ec2 delete-subnet --subnet-id $subnetId

        Write-Output "Listando o nome de tag de todas as Subnets da VPC $vpcName"
        aws ec2 describe-subnets --filters "Name=vpc-id,Values=$vpcId" --query "Subnets[].Tags[].Value" --output text
    } else {
        Write-Output "A Subnet de nome de tag $subnetPubName não existe na VPC $vpcName!"
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "VIRTUAL PRIVATE CLOUD (VPC)"
    Write-Output "Listando o nome de tag de todas as VPCs existentes que possuem tag"
    aws ec2 describe-vpcs --query "Vpcs[].Tags[].Value" --output text

    Write-Output "Removendo a VPC de nome de tag $vpcName"
    $vpcId = aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].VpcId" --output text
    aws ec2 delete-vpc --vpc-id $vpcId

    Write-Output "Listando o nome de tag de todas as VPCs existentes que possuem tag"
    aws ec2 describe-vpcs --query "Vpcs[].Tags[].Value" --output text
} else {
    Write-Output "A VPC de nome de tag $vpcName não existe!"
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS EC2"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2) - PÚBLICO"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstancePub" --query "Reservations[].Instances[]").Count -gt 1) {
    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "Removendo a instância criada de nome de tag $tagNameInstancePub"
    $instanceId = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstancePub" --query "Reservations[].Instances[].InstanceId" --output text
    aws ec2 terminate-instances --instance-ids $instanceId --no-dry-run --no-cli-pager

    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text
} else {
    Write-Output "Não existe instâncias com o nome de tag $tagNameInstancePub!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2) - PRIVADO"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstancePriv" --query "Reservations[].Instances[]").Count -gt 1) {
    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "Removendo a instância criada de nome de tag $tagNameInstancePriv"
    $instanceId = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstancePriv" --query "Reservations[].Instances[].InstanceId" --output text
    aws ec2 terminate-instances --instance-ids $instanceId --no-dry-run --no-cli-pager

    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text
} else {
    Write-Output "Não existe instâncias com o nome de tag $tagNameInstancePriv!"
}
