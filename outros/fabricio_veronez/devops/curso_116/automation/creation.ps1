Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\outros\fabricio_veronez\devops\curso_081\automation\variaveis.ps1"

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ETAPA 1 (AULAS 1 E 2)"
$resposta = Read-Host "Digite 'y' se deseja continuar, 'n' para pular"
if ($resposta -ne 'y') {
    Write-Host "Bloco de código não executado. Pulando para o próximo..."
} else {


Write-Output "***********************************************"
Write-Output "SERVIÇO: AWS EC2"
Write-Output "KEY PAIR CREATION"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Verificando se existe o par de chaves $keyPairName"
if ((aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$keyPairName']").Count -gt 1) {
    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "O par de chaves $keyPairName já foi criado!"
    aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$keyPairName'].KeyName" --output text
} else {
    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Listando todos os pares de chaves criados"
    aws ec2 describe-key-pairs --query "KeyPairs[].KeyName" --output text

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Criando o par de chaves $keyPairName"
    aws ec2 create-key-pair --key-name $keyPairName --query 'KeyMaterial' --output text > "$keyPairPath\$keyPairName.pem"

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Listando apenas o par de chave $keyPairName"
    aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$keyPairName'].KeyName" --output text
}


Write-Output "***********************************************"
Write-Output "SERVIÇO: AWS EC2"
Write-Output "EC2 CREATION"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Verificando se existe a instância $tagNameInstance"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[]").Count -gt 1) {
    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Já existe uma instância EC2 com o nome de tag $tagNameInstance"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name' && Value=='$tagNameInstance'].Value" --output text
    
    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Listando o IP público da instância $tagNameInstance"
    aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
} else {
    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Extraindo os Ids do grupo de segurança e sub-redes padrões"
    $sgId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$groupName'].GroupId" --output text
    $subnetId = aws ec2 describe-subnets --query "Subnets[?AvailabilityZone=='$aZ'].SubnetId" --output text

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Criando a instância EC2 de nome de tag $tagNameInstance"
    aws ec2 run-instances --image-id $imageId --instance-type $instanceType --key-name $keyPairName --security-group-ids $sgId --subnet-id $subnetId --count 1 --user-data "file://$userDataPath\$userDataFile" --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$tagNameInstance}]" --no-cli-pager

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Listando o IP público da instância $tagNameInstance"
    aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
}


Write-Output "***********************************************"
Write-Output "SERVIÇO: AWS EC2-VPC"
Write-Output "SECURITY GROUP RULE CREATION"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Verificando se existe a VPC padrão"
if ((aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[].VpcId").Count -gt 1) {
    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Extraindo o Id da VPC padrão"
    $vpcDefaultId = aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[].VpcId" --output text

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Verificando se existe o Security Group padrão da VPC padrão"
    if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values='$vpcDefaultId'" --query "SecurityGroups[?GroupName=='$groupName'].GroupId").Count -gt 1) {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Extraindo o Id do Security Group padrão"
        $sgDefaultId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$groupName'].GroupId" --output text
        
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Verificando se existe uma regra liberando a porta $port1 do Security Group padrão"
        $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgDefaultId' && !IsEgress && IpProtocol=='$protocolo' && to_string(FromPort)=='$port1' && to_string(ToPort)=='$port1' && CidrIpv4=='$cidrIpv4']"
        if (($existRule).Count -gt 1) {
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Já existe a regra de entrada liberando a porta $port1 do Security Group padrão"
            $existRule
        } else {
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group padrão"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgDefaultId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
        
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Adicionando uma regra de entrada ao Security Group padrão para liberação da porta $port1"
            aws ec2 authorize-security-group-ingress --group-id $sgDefaultId --protocol $protocolo --port $port1 --cidr $cidrIpv4 --no-cli-pager
        
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group padrão"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgDefaultId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
        }

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Verificando se existe uma regra liberando a porta $port2 do Security Group padrão"
        $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgDefaultId' && !IsEgress && IpProtocol=='$protocolo' && to_string(FromPort)=='$port2' && to_string(ToPort)=='$port2' && CidrIpv4=='$cidrIpv4']"
        if (($existRule).Count -gt 1) {
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Já existe a regra de entrada liberando a porta $port2 do Security Group padrão"
            $existRule
        } else {
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group padrão"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgDefaultId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
        
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Adicionando uma regra de entrada ao Security Group padrão para liberação da porta $port2"
            aws ec2 authorize-security-group-ingress --group-id $sgDefaultId --protocol $protocolo --port $port2 --cidr $cidrIpv4 --no-cli-pager
        
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Listando o Id de todas as regras de entrada e saída do Security Group padrão"
            aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgDefaultId" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text
        }
    }
}


Write-Output "Aguardando 200 segundos para garantir que todos os programas já foram instalados pelo script Bash $userDataFile!"
Start-Sleep -Seconds 200


Write-Output "***********************************************"
Write-Output "SERVIÇO: AWS EC2"
Write-Output "EC2 TRANSFER FILES"

Write-Output "-----//-----//-----//-----//-----//-----//-----"
Write-Output "Verificando se existe a instância $tagNameInstance"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[]").Count -gt 1) {       
    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Extraindo o IP público da instância de nome de tag $tagNameInstance"
    $ipEc2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Exibindo o endereço para acesso da aplicação que está rodando no container Docker"
    Write-Output "${ipEc2}:8080"

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Exibindo o comando para acesso remoto via OpenSSH"
    # $ipEc2 = $ipEc2.Replace(".", "-")
    Write-Output "ssh -i `"$keyPairPath\$keyPairName.pem`" ubuntu@$ipEc2"


    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "AWS CLI"
    Write-Output "Verificando se a pasta $awsCliFolder já existe na instância de nome de tag $tagNameInstance"
    $folderExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@$ipEc2 "test -d `"$vmPath/$awsCliFolder`" && echo 'true' || echo 'false'"

    if ($folderExists -eq 'true') {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "A pasta $awsCliFolder já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
    } else {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Transferindo a pasta $awsCliFolder para a instância de nome de tag $tagNameInstance"
        scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$awsCliPath\$awsCliFolder" ubuntu@${ipEc2}:${vmPath}
    }


    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "DOCKER HUB"
    Write-Output "Verificando se a pasta $dockerFolder já existe na instância de nome de tag $tagNameInstance"
    $folderExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@$ipEc2 "test -d `"$vmPath/$dockerFolder`" && echo 'true' || echo 'false'"

    if ($folderExists -eq 'true') {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "A pasta $dockerFolder já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
    } else {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Transferindo a pasta $dockerFolder para a instância de nome de tag $tagNameInstance"
        scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$dockerPath\$dockerFolder" ubuntu@${ipEc2}:${vmPath}
    }


    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "DOCKERFILE (PROJETO)"
    Write-Output "Verificando se o arquivo $dockerFile já existe na instância de nome de tag $tagNameInstance"
    $fileExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@$ipEc2 "test -d `"$vmPathProjectsrc/$dockerFile`" && echo 'true' || echo 'false'"

    if ($fileExists -eq 'true') {
        Write-Output "O arquivo $dockerFile já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
    } else {
        Write-Output "Transferindo o arquivo $dockerFile para a instância de nome de tag $tagNameInstance"
        scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$dockerPath\$dockerFile" ubuntu@${ipEc2}:${vmPathProjectsrc}
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "DOCKER COMPOSE (PROJETO)"
    Write-Output "Verificando se o arquivo $composeFile já existe na instância de nome de tag $tagNameInstance"
    $fileExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@$ipEc2 "test -d `"$vmPathProject/$composeFile`" && echo 'true' || echo 'false'"

    if ($fileExists -eq 'true') {
        Write-Output "O arquivo $composeFile já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
    } else {
        Write-Output "Transferindo o arquivo $composeFile para a instância de nome de tag $tagNameInstance"
        scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$dockerPath\$composeFile" ubuntu@${ipEc2}:${vmPathProject}
    }




    # "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "MANIFESTO DEPLOYMENT 1 (PROJETO 2)"
    # Write-Output "Verificando se o arquivo $deploymentFile1 já existe na instância de nome de tag $tagNameInstance"
    # $fileExists = ssh -v -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@$ipEc2 "test -d `"$vmPathProject2/$deploymentFile1`" && echo 'true' || echo 'false'"

    # if ($fileExists -eq 'true') {
    #     Write-Output "O arquivo $deploymentFile1 já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
    # } else {
    #     Write-Output "Transferindo o arquivo $deploymentFile1 para a instância de nome de tag $tagNameInstance"
    #     scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$deploymentFilePath\$deploymentFile1" ubuntu@${ipEc2}:${vmPathProject2}
    # }


    # "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "DOCKERFILE (PROJETO 3)"
    # Write-Output "Verificando se o arquivo $dockerFile já existe na instância de nome de tag $tagNameInstance"
    # $fileExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@$ipEc2 "test -d `"$vmPathProject3src/$dockerFile`" && echo 'true' || echo 'false'"

    # if ($fileExists -eq 'true') {
    #     Write-Output "O arquivo $dockerFile já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
    # } else {
    #     Write-Output "Transferindo o arquivo $dockerFile para a instância de nome de tag $tagNameInstance"
    #     scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$dockerFilePath\$dockerFile" ubuntu@${ipEc2}:${vmPathProject3src}
    # }


    # "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "MANIFESTO DEPLOYMENT 2 (PROJETO 3)"
    # Write-Output "Verificando se o arquivo $deploymentFile2 já existe na instância de nome de tag $tagNameInstance"
    # $fileExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@$ipEc2 "test -d `"$vmPathProject3k8s/$deploymentFile2`" && echo 'true' || echo 'false'"

    # if ($fileExists -eq 'true') {
    #     Write-Output "O arquivo $deploymentFile2 já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
    # } else {
    #     Write-Output "Transferindo o arquivo $deploymentFile2 para a instância de nome de tag $tagNameInstance"
    #     scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$deploymentFilePath\$deploymentFile2" ubuntu@${ipEc2}:${vmPathProject3k8s}
    # }


} else {"Não existe instâncias com o nome de tag $tagNameInstance"}

}