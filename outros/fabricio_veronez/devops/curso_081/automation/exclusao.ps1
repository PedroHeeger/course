Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\outros\fabricio_veronez\devops\curso_081\automation\variaveis.ps1"

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AULAS 1 E 2"
$resposta = Read-Host "Digite 'y' se deseja continuar, 'n' para pular"
if ($resposta -ne 'y') {
    Write-Host "Bloco de código não executado. Pulando para o próximo..."
} else {

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS VPC"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "INBOUND AND OUTBOUND RULES"
Write-Output "Verificando se existe uma regra liberando a porta 8080 do Security Group padrão..."
$securityGroupId = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
$existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$securityGroupId' && !IsEgress && IpProtocol=='tcp' && to_string(FromPort)=='8080' && to_string(ToPort)=='8080' && CidrIpv4=='0.0.0.0/0']"
if (($existRule).Count -gt 1) {
    Write-Output "Removendo a regra de entrada determinada no grupo de segurança padrão"
    aws ec2 revoke-security-group-ingress --group-id $securityGroupId --protocol tcp --port 8080 --cidr 0.0.0.0/0

    Write-Output "Listando as regras do grupo de segurança padrão"
    aws ec2 describe-security-group-rules --no-cli-pager
} else {
    Write-Output "O grupo de segurança padrão não possui essa regra de entrada!"
}


"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS EC2"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2)"
Write-Output "Verificando se existe a instância $tagNameInstance..."
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
# Write-Output "KEY PAIR"
# Write-Output "Verificando se existe o par de chaves $keyPairName..."
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

}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AULA 3 - ETAPA 1"
$resposta = Read-Host "Digite 'y' se deseja continuar, 'n' para pular"
if ($resposta -ne 'y') {
    Write-Host "Bloco de código não executado. Pulando para o próximo..."
} else {

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS EC2"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2) - PÚBLICO"
Write-Output "Verificando se existe a instância $tagNameInstancePub..."
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
Write-Output "Verificando se existe a instância $tagNameInstancePriv..."
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


Write-Output "Aguardando 100 segundos para garantir que as instâncias foram removidas!"
Start-Sleep -Seconds 100

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS VPC"
Write-Output "Verificando se existe a VPC $vpcName..."
if ((aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].Tags[].Value").Count -gt 1) {
    $vpcId = aws ec2 describe-vpcs --filters "Name=tag:Name,Values=$vpcName" --query "Vpcs[].VpcId" --output text
    $securityGroupId = aws ec2 describe-security-groups --filters "Name=tag:Name,Values=$securityGroupName" --query "SecurityGroups[].GroupId" --output text

    Write-Output "Verificando se existe o Security Group $securityGroupName..."
    if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[?Tags[?Key=='Name' && Value=='$securityGroupName']]").Count -gt 1) {
        "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "INBOUND AND OUTBOUND RULES - PORT 80"
        Write-Output "Verificando se existe uma regra liberando a porta 80 no Security Group..."
        $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$securityGroupId' && !IsEgress && IpProtocol=='tcp' && to_string(FromPort)=='80' && to_string(ToPort)=='80' && CidrIpv4=='0.0.0.0/0']"

        if (($existRule).Count -gt 1) {
            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
    
            Write-Output "Removendo a regra de entrada do Security Group para liberação da porta 80"
            aws ec2 revoke-security-group-ingress --group-id $securityGroupId --protocol tcp --port 80 --cidr 0.0.0.0/0
    
            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$securityGroupId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
        } else {
            Write-Output "Não existe a regra de entrada liberando a porta 80 no Security Group $securityGroupName!"
        }
    
        "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "INBOUND AND OUTBOUND RULES - PORT 443"
        Write-Output "Verificando se existe uma regra liberando a porta 443 no Security Group..."
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
        Write-Output "Verificando se existe uma regra liberando a porta 22 no Security Group..."
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
    } else {
        Write-Output "O Security Group de nome de tag $securityGroupName não está vinculado a VPC $vpcName!"
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "ROUTE TABLE PÚBLICA"
    Write-Output "Verificando se existe a Route Table $routeTablePubName..."
    if ((aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$routeTablePubName" --query "RouteTables[].Tags[].Value").Count -gt 1) {
        Write-Output "Listando o nome de tag de todas as Route Tables da VPC $vpcName"
        aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" --query "RouteTables[].Tags[].Value" --output text

        Write-Output "Desvinculando a Subnet Pública $subnetPubName da Route Table Pública de nome de tag $routeTablePubName"
        $routeTableId = aws ec2 describe-route-tables --filters "Name=tag:Name,Values=$routeTablePubName" --query "RouteTables[].RouteTableId" --output text
        $associationId = aws ec2 describe-route-tables --route-table-id $routeTableId --query 'RouteTables[].Associations[].RouteTableAssociationId' --output text
        aws ec2 disassociate-route-table --association-id $associationId

        Write-Output "Removendo uma Rota da Route Table Pública de nome de tag $routeTablePubName"
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
    Write-Output "Verificando se existe a Route Table $routeTablePrivName..."
    if ((aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$routeTablePrivName" --query "RouteTables[].Tags[].Value").Count -gt 1) {
        Write-Output "Listando o nome de tag de todas as Route Tables da VPC $vpcName"
        aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" --query "RouteTables[].Tags[].Value" --output text

        Write-Output "Desvinculando a Subnet Pública $subnetPubName da Route Table Privada de nome de tag $routeTablePrivName"
        $routeTableId = aws ec2 describe-route-tables --filters "Name=tag:Name,Values=$routeTablePrivName" --query "RouteTables[].RouteTableId" --output text
        $associationId = aws ec2 describe-route-tables --route-table-id $routeTableId --query 'RouteTables[].Associations[].RouteTableAssociationId' --output text
        aws ec2 disassociate-route-table --association-id $associationId

        Write-Output "Removendo uma Rota da Route Table Privada de nome de tag $routeTablePrivName"
        aws ec2 delete-route --route-table-id $routeTableId --destination-cidr-block 0.0.0.0/0
    
        Write-Output "Removendo a Route Table Privada de nome de tag $routeTablePrivName"
        aws ec2 delete-route-table --route-table-id $routeTableId

        Write-Output "Listando o nome de tag de todas as Route Tables da VPC $vpcName"
        aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpcId" --query "RouteTables[].Tags[].Value" --output text
    } else {
        Write-Output "A Route Table Privada de nome de tag $routeTablePrivName não está vinculado a VPC $vpcName!"
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "NAT GATEWAY"
    Write-Output "Verificando se existe o NAT Gateway $natGatewayName..."
    if ((aws ec2 describe-nat-gateways --filter "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$natGatewayName" --query "NatGateways[].Tags[].Value").Count -gt 1) {
        Write-Output "Verificando se existe o State do NAT Gateway $natGatewayName está como 'deleted'..."
        if ((aws ec2 describe-nat-gateways --filter "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$natGatewayName" --query "NatGateways[].State" --output text) -ne "deleted") {
            Write-Output "Listando o nome de tag de todos os NAT Gateway da VPC $vpcName"
            aws ec2 describe-nat-gateways --filter "Name=vpc-id,Values=$vpcId" --query "NatGateways[].Tags[].Value" --output text

            Write-Output "Removendo o NAT Gateway de nome de tag $natGatewayName"
            $natGatewayId = aws ec2 describe-nat-gateways --filter "Name=tag:Name,Values=$natGatewayName" --query "NatGateways[].NatGatewayId" --output text
            aws ec2 delete-nat-gateway --nat-gateway-id $natGatewayId

            Write-Output "Aguardando 40 segundos para garantir que o NAT Gateway foi removido!"
            Start-Sleep -Seconds 40

            Write-Output "Removendo o IP elástico aleatório"
            $allocationId = aws ec2 describe-nat-gateways --filter "Name=vpc-id,Values=$vpcId" "Name=tag:Name,Values=$natGatewayName" --query "NatGateways[].NatGatewayAddresses[].AllocationId" --output text
            aws ec2 release-address --allocation-id $allocationId
        
            Write-Output "Listando o nome de tag de todos os NAT Gateway da VPC $vpcName"
            aws ec2 describe-nat-gateways --filter "Name=vpc-id,Values=$vpcId" --query "NatGateways[].Tags[].Value" --output text
        } else {
            Write-Output "O NAT Gateway de nome de tag $natGatewayName possui o State como 'deleted'!"
        }
    } else {
        Write-Output "O NAT Gateway de nome de tag $natGatewayName não está vinculado a VPC $vpcName!"
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "INTERNET GATEWAY"
    Write-Output "Verificando se existe o Internet Gateway $internetGatewayName..."
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
    Write-Output "SUBNET PRIVADA"
    Write-Output "Verificando se existe a Subnet $subnetPrivName..."
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
    Write-Output "Verificando se existe a Subnet $subnetPubName..."
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




}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AULA 3 - ETAPA 2"
$resposta = Read-Host "Digite 'y' se deseja continuar, 'n' para pular"
if ($resposta -ne 'y') {
    Write-Host "Bloco de código não executado. Pulando para o próximo..."
} else {

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "DEPLOY PROJECT"

Write-Output "Verificando os nodes do cluster"
kubectl get nodes

Write-Output "Alterando para o diretório do projeto"
Set-Location $projectPath/kube-news/k8s

Write-Output "Removendo a aplicação"
kubectl delete -f deployment2.yaml

Write-Output "Alterando para o diretório automation"
Set-Location $buildEnvPath


Write-Output "Aguardando 40 segundos para garantir aplicação foi removida do cluster..."
Start-Sleep -Seconds 40

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS Elastic Kubernetes Service (EKS)"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "NODE GROUP"
Write-Output "Verificando se existe o node group $nodeGroupName..."
if ((aws eks describe-nodegroup --cluster-name $clusterName --nodegroup-name $nodeGroupName --query "nodegroup.nodegroupName" --output text).Count -gt 0) {
    Write-Output "Listando todos os node groups criados"
    aws eks describe-nodegroup --cluster-name $clusterName --nodegroup-name $nodeGroupName --query "nodegroup.nodegroupName" --output text

    Write-Output "Removendo o node group $nodeGroupName"
    aws eks delete-nodegroup --cluster-name $clusterName --nodegroup-name $nodeGroupName --no-cli-pager

    Write-Output "Listando todos os node groups criados"
    aws eks describe-nodegroup --cluster-name $clusterName --nodegroup-name $nodeGroupName --query "nodegroup.nodegroupName" --output text
} else {
    Write-Output "Não existe o node group $nodeGroupName!"
}

Write-Output "Aguardando 200 segundos para garantir que o node group foi removido..."
Start-Sleep -Seconds 200

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "CLUSTER"
Write-Output "Verificando se existe o cluster $clusterName..."
if ((aws eks describe-cluster --name $clusterName --query "cluster.name" --output text).Count -gt 0) {
    Write-Output "Listando todos os clusters criados"
    aws eks list-clusters --query "clusters" --output text

    Write-Output "Removendo o cluster $clusterName"
    aws eks delete-cluster --name $clusterName --no-cli-pager

    Write-Output "Listando todos os clusters criados"
    aws eks list-clusters --query "clusters" --output text
} else {
    Write-Output "Não existe o cluster $clusterName!"
}


Write-Output "Aguardando 30 segundos para garantir que o cluster foi removido..."
Start-Sleep -Seconds 30

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS CloudFormation"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "STACK"
Write-Output "Verificando se existe a stack $stackName..."
if ((aws cloudformation describe-stacks --stack-name $stackName --query "Stacks[].StackName").Count -gt 1) {
    Write-Output "Listando todas as stacks criadas"
    aws cloudformation describe-stacks --query "Stacks[].StackName" --output text

    Write-Output "Removendo a stack $stackName"
    aws cloudformation delete-stack --stack-name $stackName

    Write-Output "Listando todas as stacks criadas"
    aws cloudformation describe-stacks --stack-name $stackName --query "Stacks[].StackName" --output text
} else {
    Write-Output "Não existe a stack $stackName!"
}


Write-Output "Aguardando 20 segundos para garantir que toda a rede foi removida..."
Start-Sleep -Seconds 20

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS Identity and Access Management (IAM)"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ROLE EKS"
Write-Output "Verificando se existe a role $roleNameEks..."
if ((aws iam list-roles --query "Roles[?RoleName=='$roleNameEks'].RoleName").Count -gt 1) {
    Write-Output "Listando todas as roles criadas"
    aws iam list-roles --query 'Roles[].RoleName' --output text

    Write-Output "Desvinculando a Policy AmazonEKSClusterPolicy da role $roleNameEks"
    aws iam detach-role-policy --role-name $roleNameEks --policy-arn arn:aws:iam::aws:policy/AmazonEKSClusterPolicy

    Write-Output "Removendo a role $roleNameEks"
    aws iam delete-role --role-name $roleNameEks

    Write-Output "Listando todas as roles criadas"
    aws iam list-roles --query 'Roles[].RoleName' --output text
} else {
    Write-Output "Não existe a role $roleNameEks!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ROLE EC2"
Write-Output "Verificando se existe a role $roleNameEc2..."
if ((aws iam list-roles --query "Roles[?RoleName=='$roleNameEc2'].RoleName").Count -gt 1) {
    Write-Output "Listando todas as roles criadas"
    aws iam list-roles --query 'Roles[].RoleName' --output text

    Write-Output "Desvinculando a Policy AmazonEKS_CNI_Policy da role $roleNameEc2"
    aws iam detach-role-policy --role-name $roleNameEc2 --policy-arn arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy

    Write-Output "Desvinculando a Policy AmazonEKSWorkerNodePolicy da role $roleNameEc2"
    aws iam detach-role-policy --role-name $roleNameEc2 --policy-arn arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy

    Write-Output "Desvinculando a Policy AmazonEC2ContainerRegistryReadOnly da role $roleNameEc2"
    aws iam detach-role-policy --role-name $roleNameEc2 --policy-arn arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly

    Write-Output "Removendo a role $roleNameEc2"
    aws iam delete-role --role-name $roleNameEc2

    Write-Output "Listando todas as roles criadas"
    aws iam list-roles --query 'Roles[].RoleName' --output text
} else {
    Write-Output "Não existe a role $roleNameEc2!"
}

}