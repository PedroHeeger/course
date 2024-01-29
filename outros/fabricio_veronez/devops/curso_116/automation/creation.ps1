Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\outros\fabricio_veronez\devops\curso_116\automation\variable.ps1"

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ETAPA 1 (AULAS 1, 2 E 3)"
$resposta = Read-Host "Deseja executar esta etapa? (y/n) "
if ($resposta.ToLower() -ne 'y') {
    Write-Host "Bloco de código não executado. Pulando para o próximo..."
} else {

    Write-Output "***********************************************"
    Write-Output "SERVIÇO: AWS EC2"
    Write-Output "KEY PAIR CREATION"

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Verificando se existe o par de chaves $keyPairName"
    if ((aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$keyPairName']").Count -gt 1) {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Já existe o par de chaves de nome $keyPairName"
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




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2"
    # Write-Output "EC2 CREATION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a instância $tagNameInstance"
    # if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[]").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe uma instância EC2 com o nome de tag $tagNameInstance"
    #     aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name' && Value=='$tagNameInstance'].Value" --output text
        
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o IP público da instância $tagNameInstance"
    #     aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    #     aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo os Ids do grupo de segurança e sub-redes padrões"
    #     $sgId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$groupName'].GroupId" --output text
    #     $subnetId = aws ec2 describe-subnets --query "Subnets[?AvailabilityZone=='$aZ'].SubnetId" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando a instância EC2 de nome de tag $tagNameInstance"
    #     aws ec2 run-instances --image-id $imageId --instance-type $instanceType --key-name $keyPairName --security-group-ids $sgId --subnet-id $subnetId --count 1 --user-data "file://$userDataPath\$userDataFile" --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$tagNameInstance}]" --block-device-mappings "[{`"DeviceName`":`"$deviceName`",`"Ebs`":{`"VolumeSize`":$volumeSize,`"VolumeType`":`"$volumeType`"}}]" --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    #     aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o IP público da instância $tagNameInstance"
    #     $ipEc2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Exibindo o endereço para acesso da aplicação que está rodando no container Docker"
    #     Write-Output "${ipEc2}:8080"

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Exibindo o comando para acesso remoto via OpenSSH"
    #     Write-Output "ssh -i `"$keyPairPath\$keyPairName.pem`" ubuntu@${ipEc2}"
    # }




    Write-Output "***********************************************"
    Write-Output "SERVIÇO: AWS EC2-VPC"
    Write-Output "SECURITY GROUP RULE CREATION"

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Verificando se a VPC é a padrão ou não"
    if ($vpcName -eq "default") {$condition = "isDefault"; $vpcNameControl = "true"
    } else {$condition = "tag:Name"; $vpcNameControl = $vpcName}

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Verificando se existe a VPC $vpcName"
    if ((aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId").Count -gt 1) {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Extraindo o Id da VPC $vpcName"
        $vpcId = aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId" --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Verificando se existe o security group $sgName na VPC $vpcName"
        if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName" --query "SecurityGroups[].GroupName").Count -gt 1) {
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Extraindo o Id do security group $sgName da VPC $vpcName"
            $sgId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$sgName'].GroupId" --output text
        

            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Verificando se existe uma regra de entrada liberando a porta $port1 do security group $sgName da VPC $vpcName"
            $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$port1' && to_string(ToPort)=='$port1' && CidrIpv4=='$cidrIpv4']"
            if (($existRule).Count -gt 1) {
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Já existe a regra de entrada liberando a porta $port1 do security group $sgName da VPC $vpcName"
                $existRule
            } else {
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id de todas as regras de entrada do security group $sgName da VPC $vpcName"
                aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Adicionando uma regra de entrada ao security group $sgName da VPC $vpcName para liberação da porta $port1"
                aws ec2 authorize-security-group-ingress --group-id $sgId --protocol $protocol --port $port1 --cidr $cidrIpv4 --no-cli-pager
            
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id da regra de entrada do security group $sgName da VPC $vpcName que libera a porta $port1"
                aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$port1' && to_string(ToPort)=='$port1' && CidrIpv4=='$cidrIpv4'].GroupId" --output text
            }


            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Verificando se existe uma regra de entrada liberando a porta $port2 do security group $sgName da VPC $vpcName"
            $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$port2' && to_string(ToPort)=='$port2' && CidrIpv4=='$cidrIpv4']"
            if (($existRule).Count -gt 1) {
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Já existe a regra de entrada liberando a porta $port2 do security group $sgName da VPC $vpcName"
                $existRule
            } else {
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id de todas as regras de entrada do security group $sgName da VPC $vpcName"
                aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Adicionando uma regra de entrada ao security group $sgName da VPC $vpcName para liberação da porta $port2"
                aws ec2 authorize-security-group-ingress --group-id $sgId --protocol $protocol --port $port2 --cidr $cidrIpv4 --no-cli-pager
            
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id da regra de entrada do security group $sgName da VPC $vpcName que libera a porta $port2"
                aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$port2' && to_string(ToPort)=='$port2' && CidrIpv4=='$cidrIpv4'].GroupId" --output text
            }


            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Verificando se existe uma regra de entrada liberando a porta $port3 do security group $sgName da VPC $vpcName"
            $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$port3' && to_string(ToPort)=='$port3' && CidrIpv4=='$cidrIpv4']"
            if (($existRule).Count -gt 1) {
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Já existe a regra de entrada liberando a porta $port3 do security group $sgName da VPC $vpcName"
                $existRule
            } else {
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id de todas as regras de entrada do security group $sgName da VPC $vpcName"
                aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Adicionando uma regra de entrada ao security group $sgName da VPC $vpcName para liberação da porta $port3"
                aws ec2 authorize-security-group-ingress --group-id $sgId --protocol $protocol --port $port3 --cidr $cidrIpv4 --no-cli-pager
            
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id da regra de entrada do security group $sgName da VPC $vpcName que libera a porta $port3"
                aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$port3' && to_string(ToPort)=='$port3' && CidrIpv4=='$cidrIpv4'].GroupId" --output text
            }
        } else {Write-Host "Não existe o security group $sgName"}
    } else {Write-Host "Não existe a VPC $vpcName"}




    Write-Output "Aguardando 250 segundos para garantir que todos os programas já foram instalados pelo script Bash $userDataFile!"
    Start-Sleep -Seconds 250




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
        Write-Output "Verificando se a pasta $dockerHubFolder já existe na instância de nome de tag $tagNameInstance"
        $folderExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@$ipEc2 "test -d `"$vmPath/$dockerHubFolder`" && echo 'true' || echo 'false'"

        if ($folderExists -eq 'true') {
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "A pasta $dockerHubFolder já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
        } else {
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Transferindo a pasta $dockerHubFolder para a instância de nome de tag $tagNameInstance"
            scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$dockerHubPath\$dockerHubFolder" ubuntu@${ipEc2}:${vmPath}
        }


        Write-Output "Aguardando 200 segundos para garantir que as pastas do projeto fossem baixadas e criadas!"
        Start-Sleep -Seconds 200


        "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "DOCKERFILE (PROJETO)"
        Write-Output "Verificando se o arquivo $dockerFile já existe na instância de nome de tag $tagNameInstance"
        $fileExists = ssh -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@$ipEc2 "test -d `"$vmPathProjectSrc/$dockerFile`" && echo 'true' || echo 'false'"

        if ($fileExists -eq 'true') {
            Write-Output "O arquivo $dockerFile já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
        } else {
            Write-Output "Transferindo o arquivo $dockerFile para a instância de nome de tag $tagNameInstance"
            scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$dockerPath\$dockerFile" ubuntu@${ipEc2}:${vmPathProjectSrc}
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


        "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "MANIFESTO DEPLOYMENT 1 (PROJETO 2)"
        Write-Output "Verificando se o arquivo $deploymentFile já existe na instância de nome de tag $tagNameInstance"
        $fileExists = ssh -v -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no ubuntu@$ipEc2 "test -d `"$vmPathProjectK8s/$deploymentFile`" && echo 'true' || echo 'false'"

        if ($fileExists -eq 'true') {
            Write-Output "O arquivo $deploymentFile já existe na instância de nome de tag $tagNameInstance. Transferência cancelada."
        } else {
            Write-Output "Transferindo o arquivo $deploymentFile para a instância de nome de tag $tagNameInstance"
            scp -i "$keyPairPath\$keyPairName.pem" -o StrictHostKeyChecking=no -r "$deploymentFilePath\$deploymentFile" ubuntu@${ipEc2}:${vmPathProjectK8s}
        }

    } else {"Não existe instâncias com o nome de tag $tagNameInstance"}

}