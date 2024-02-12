Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\outros\henrylle_maia\aws\curso_117\automation\variable.ps1"

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ETAPA 1 (AULA 1)"
$resposta = Read-Host "Deseja executar esta etapa? (y/n) "
if ($resposta.ToLower() -ne 'y') {
    Write-Host "Bloco de código não executado. Pulando para o próximo..."
} else {

    Write-Output "***********************************************"
    Write-Output "SERVIÇO: AWS EC2-VPC"
    Write-Output "SECURITY GROUP CREATION 1"

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
        Write-Output "Verificando se existe o security group de nome $sgName1 na VPC $vpcName"
        if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName1" --query "SecurityGroups[].GroupName").Count -gt 1) {
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Já existe o security group de nome $sgName1 na VPC $vpcName"
            aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName1" --query "SecurityGroups[].GroupName" --output text
        } else {
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Listando todos os security groups criados na VPC $vpcName"
            aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].GroupName" --output text
        
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Criando o security group de nome $sgName1 na VPC $vpcName"
            aws ec2 create-security-group --group-name $sgName1 --description $sgDescription1 --vpc-id $vpcId --tag-specifications "ResourceType=security-group,Tags=[{Key=Name,Value=$sgTagName}]"

            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Listando o security group de nome $sgName1 na VPC $vpcName"
            aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName1" --query "SecurityGroups[].GroupName" --output text
        }
    } else {Write-Host "Não existe a VPC $vpcName"}




    Write-Output "***********************************************"
    Write-Output "SERVIÇO: AWS EC2-VPC"
    Write-Output "SECURITY GROUP RULE CREATION 1"

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
        Write-Output "Verificando se existe o security group $sgName1 na VPC $vpcName"
        if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName1" --query "SecurityGroups[].GroupName").Count -gt 1) {
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Extraindo o Id do security group $sgName1 da VPC $vpcName"
            $sgId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$sgName1'].GroupId" --output text
        
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Verificando se existe uma regra de entrada liberando a porta $port1 do security group $sgName1 da VPC $vpcName"
            $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$port1' && to_string(ToPort)=='$port1' && CidrIpv4=='$cidrIpv4']"
            if (($existRule).Count -gt 1) {
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Já existe a regra de entrada liberando a porta $port1 do security group $sgName1 da VPC $vpcName"
                aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$port1' && to_string(ToPort)=='$port1' && CidrIpv4=='$cidrIpv4'].GroupId" --output text
            } else {
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id de todas as regras de entrada do security group $sgName1 da VPC $vpcName"
                aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Adicionando uma regra de entrada ao security group $sgName1 da VPC $vpcName para liberação da porta $port1"
                aws ec2 authorize-security-group-ingress --group-id $sgId --protocol $protocol --port $port1 --cidr $cidrIpv4 --description $sgRuleDescription1 --no-cli-pager
            
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id da regra de entrada do security group $sgName1 da VPC $vpcName que libera a porta $port1"
                aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$port1' && to_string(ToPort)=='$port1' && CidrIpv4=='$cidrIpv4'].GroupId" --output text
            }
        } else {Write-Host "Não existe o security group $sgName1"}
    } else {Write-Host "Não existe a VPC $vpcName"}




    Write-Output "***********************************************"
    Write-Output "SERVIÇO: AWS IAM"
    Write-Output "IAM ROLE SERVICE CREATION 1"

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Verificando se existe a role de nome $roleName1"
    if ((aws iam list-roles --query "Roles[?RoleName=='$roleName1'].RoleName").Count -gt 1) {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Já existe uma role de nome $roleName1"
        aws iam list-roles --query "Roles[?RoleName=='$roleName1'].RoleName" --output text
    } else {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando todas as roles criadas"
        aws iam list-roles --query 'Roles[].RoleName' --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Criando a role de nome $roleName1"
        aws iam create-role --role-name $roleName1 --assume-role-policy-document "{
            `"Version`": `"2012-10-17`",
            `"Statement`": [
              {
                `"Effect`": `"Allow`",
                `"Principal`": {`"Service`": `"$serviceName1`"},
                `"Action`": `"sts:AssumeRole`"
              }
            ]
          }" --no-cli-pager
        
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando a role de nome $roleName1"
        aws iam list-roles --query "Roles[?RoleName=='$roleName1'].RoleName" --output text
    }




    Write-Output "***********************************************"
    Write-Output "SERVIÇO: AWS IAM"
    Write-Output "IAM ROLE ADD POLICY 1"

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Verificando se existe a policy $policyName1_1 anexada a role de nome $roleName1"
    if ((aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[?PolicyName=='$policyName1_1'].PolicyName").Count -gt 1) {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Já existe a policy $policyName1_1 anexada a role de nome $roleName1"
        aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[?PolicyName=='$policyName1_1'].PolicyName" --output text
    } else {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando todas as polices anexadas a role de nome $roleName1"
        aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[].PolicyName" --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Extraindo o ARN da policy $policyName1_1"
        $policyArn = aws iam list-policies --query "Policies[?PolicyName=='$policyName1_1'].[Arn]" --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Vinculando a polciy $policyName1_1 a role de nome $roleName1"
        aws iam attach-role-policy --role-name $roleName1 --policy-arn $policyArn

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando a policy $policyName1_1 anexada a role de nome $roleName1"
        aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[?PolicyName=='$policyName1_1'].PolicyName" --output text
    }


    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Verificando se existe a policy $policyName1_2 anexada a role de nome $roleName1"
    if ((aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[?PolicyName=='$policyName1_2'].PolicyName").Count -gt 1) {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Já existe a policy $policyName1_2 anexada a role de nome $roleName1"
        aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[?PolicyName=='$policyName1_2'].PolicyName" --output text
    } else {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando todas as polices anexadas a role de nome $roleName1"
        aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[].PolicyName" --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Extraindo o ARN da policy $policyName1_2"
        $policyArn = aws iam list-policies --query "Policies[?PolicyName=='$policyName1_2'].[Arn]" --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Vinculando a polciy $policyName1_2 a role de nome $roleName1"
        aws iam attach-role-policy --role-name $roleName1 --policy-arn $policyArn

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando a policy $policyName1_2 anexada a role de nome $roleName1"
        aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[?PolicyName=='$policyName1_2'].PolicyName" --output text
    }


    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Verificando se existe a policy $policyName1_3 anexada a role de nome $roleName1"
    if ((aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[?PolicyName=='$policyName1_3'].PolicyName").Count -gt 1) {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Já existe a policy $policyName1_3 anexada a role de nome $roleName1"
        aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[?PolicyName=='$policyName1_3'].PolicyName" --output text
    } else {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando todas as polices anexadas a role de nome $roleName1"
        aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[].PolicyName" --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Extraindo o ARN da policy $policyName1_3"
        $policyArn = aws iam list-policies --query "Policies[?PolicyName=='$policyName1_3'].[Arn]" --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Vinculando a polciy $policyName1_3 a role de nome $roleName1"
        aws iam attach-role-policy --role-name $roleName1 --policy-arn $policyArn

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando a policy $policyName1_3 anexada a role de nome $roleName1"
        aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[?PolicyName=='$policyName1_3'].PolicyName" --output text
    }




    Write-Output "***********************************************"
    Write-Output "SERVIÇO: AWS IAM"
    Write-Output "IAM INSTANCE PROFILE CREATION AND ADD ROLE"

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Verificando se existe o perfil de instância de nome $instanceProfileName"
    if ((aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instanceProfileName'].InstanceProfileName").Count -gt 1) {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Já existe o perfil de instância de nome $instanceProfileName"
        aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instanceProfileName'].InstanceProfileName" --output text
    } else {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando todos os perfis de instância existentes"
        aws iam list-instance-profiles --query 'InstanceProfiles[].InstanceProfileName' --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Criando o perfil de instância de nome $instanceProfileName"
        aws iam create-instance-profile --instance-profile-name $instanceProfileName

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Adicionando a role $roleName1 ao perfil de instância de nome $instanceProfileName"
        aws iam add-role-to-instance-profile --instance-profile-name $instanceProfileName --role-name $roleName1

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando o perfil de instância de nome $instanceProfileName"
        aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instanceProfileName'].InstanceProfileName" --output text
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
        $sgId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$sgName1'].GroupId" --output text
        $subnetId = aws ec2 describe-subnets --query "Subnets[?AvailabilityZone=='$aZ1'].SubnetId" --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Criando a instância EC2 de nome de tag $tagNameInstance"
        aws ec2 run-instances --image-id $imageId --instance-type $instanceType --security-group-ids $sgId --subnet-id $subnetId --count 1 --user-data "file://$userDataPath\$userDataFile" --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$tagNameInstance}]" --block-device-mappings "[{`"DeviceName`":`"$deviceName`",`"Ebs`":{`"VolumeSize`":$volumeSize,`"VolumeType`":`"$volumeType`"}}]" --iam-instance-profile Name=$instanceProfileName --no-cli-pager

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
        aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando o IP público da instância $tagNameInstance"
        aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
    }


    Write-Output "Aguardando 120 segundos para garantir que as instalações foram feitas"
    Start-Sleep -Seconds 120


    Write-Output "***********************************************"
    Write-Output "SERVIÇO: AWS EC2"
    Write-Output "EC2 MANIPULATION 1"

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Verificando se existe a instância $tagNameInstance"
    if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" "Name=instance-state-name,Values=running" --query "Reservations[].Instances[]").Count -gt 1) {       
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Extraindo o Id da instância de nome de tag $tagNameInstance"
        $instanceId1 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].InstanceId" --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Exibindo o comando para acessar a instância"
        Write-Output "aws ssm start-session --target $instanceId1 --document-name AWS-StartInteractiveCommand --parameters command=`"bash -l`""

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Executando os comandos dentro da instância (Implantação dos containers no Docker da instância - Container de banco sem esquema criado)"
        $bashCommands = "sudo su ec2-user -c '
        echo -----//-----//-----//-----//-----//-----//-----
        echo Alterando o diretorio corrente para o do usuario ec2-user
        cd /home/ec2-user

        echo -----//-----//-----//-----//-----//-----//-----
        echo Clonando a pasta do projeto
        if [ ! -d /home/ec2-user/bia ]; then
            git clone https://github.com/henrylle/bia /home/ec2-user/bia
        else
            echo A pasta /home/ec2-user/bia ja existe!
        fi

        echo -----//-----//-----//-----//-----//-----//-----
        echo Alterando para o diretorio do projeto
        cd /home/ec2-user/bia

        echo -----//-----//-----//-----//-----//-----//-----
        echo Implantando o projeto com Docker Compose
        docker compose up -d

        echo -----//-----//-----//-----//-----//-----//-----
        echo Aguardando 200 segundos para verificar a aplicacao...
        sleep 200

        echo -----//-----//-----//-----//-----//-----//-----
        echo Removendo o projeto com Docker Compose
        docker compose down -v
        '"
        
        $bashCommands = $bashCommands -replace "\r", ""    # Substituindo os caracteres de retorno de carro (`\r`) por uma string vazia (`""`)
        aws ssm start-session --target $instanceId1 --document-name AWS-StartInteractiveCommand --parameters "command=`"$bashCommands`""

    } else {"Não existe instâncias com o nome de tag $tagNameInstance"}


}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ETAPA 2 (AULA 2)"
$resposta = Read-Host "Deseja executar esta etapa? (y/n) "
if ($resposta.ToLower() -ne 'y') {
    Write-Host "Bloco de código não executado. Pulando para o próximo..."
} else {

    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2"
    # Write-Output "EC2 MANIPULATION 2"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a instância $tagNameInstance"
    # if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" "Name=instance-state-name,Values=running" --query "Reservations[].Instances[]").Count -gt 1) {       
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o Id da instância de nome de tag $tagNameInstance"
    #     $instanceId1 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].InstanceId" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o IP público da instância $tagNameInstance"
    #     $instanceIP = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Exibindo o comando para acessar a instância (Criando o esquema no container de banco de dados)"
    #     Write-Output "aws ssm start-session --target $instanceId1 --document-name AWS-StartInteractiveCommand --parameters command=`"bash -l`""

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Executando os comandos dentro da instância (Apontando)"
    #     $bashCommands = "sudo su ec2-user -c \`"
    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Alterando para o diretorio do projeto
    #     cd /home/ec2-user/bia

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Realizando alteracao no Dockerfile trocando URL da API que a aplicacao React vai utilizar para o IP da instancia
    #     sed -i 's#RUN REACT_APP_API_URL=http://localhost:3001#RUN REACT_APP_API_URL=http://${instanceIP}:3001#' /home/ec2-user/bia/Dockerfile

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Realizando o build do server -> aplicacao web
    #     docker compose build server

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Implantando o projeto com Docker Compose
    #     docker compose up -d

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Aplicando as migracoes do banco de dados local no container da aplicacao que sao refletidas no container de banco de dados
    #     docker compose exec server bash -c 'npx sequelize db:migrate'

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Aguardando 200 segundos para verificar a aplicacao...
    #     sleep 200

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Removendo o projeto com Docker Compose
    #     docker compose down -v
    #     \`""

    #     $bashCommands = $bashCommands -replace "\r", ""
    #     aws ssm start-session --target $instanceId1 --document-name AWS-StartInteractiveCommand --parameters "command=`"$bashCommands`""

    # } else {"Não existe instâncias com o nome de tag $tagNameInstance"}



    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-VPC"
    # Write-Output "SECURITY GROUP CREATION 4"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se a VPC é a padrão ou não"
    # if ($vpcName -eq "default") {$condition = "isDefault"; $vpcNameControl = "true"
    # } else {$condition = "tag:Name"; $vpcNameControl = $vpcName}

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a VPC $vpcName"
    # if ((aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o Id da VPC $vpcName"
    #     $vpcId = aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se existe o security group de nome $sgName4 na VPC $vpcName"
    #     if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName4" --query "SecurityGroups[].GroupName").Count -gt 1) {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Já existe o security group de nome $sgName4 na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName4" --query "SecurityGroups[].GroupName" --output text
    #     } else {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando todos os security groups criados na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].GroupName" --output text
        
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Criando o security group de nome $sgName4 na VPC $vpcName"
    #         aws ec2 create-security-group --group-name $sgName4 --description $sgDescription4 --vpc-id $vpcId --tag-specifications "ResourceType=security-group,Tags=[{Key=Name,Value=$sgTagName}]"

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando o security group de nome $sgName4 na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName4" --query "SecurityGroups[].GroupName" --output text
    #     }
    # } else {Write-Host "Não existe a VPC $vpcName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-VPC"
    # Write-Output "SECURITY GROUP RULE CREATION 4"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se a VPC é a padrão ou não"
    # if ($vpcName -eq "default") {$condition = "isDefault"; $vpcNameControl = "true"
    # } else {$condition = "tag:Name"; $vpcNameControl = $vpcName}

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a VPC $vpcName"
    # if ((aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o Id da VPC $vpcName"
    #     $vpcId = aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se existe o security group $sgName4 na VPC $vpcName"
    #     if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName4" --query "SecurityGroups[].GroupName").Count -gt 1) {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo o Id do security group $sgName4 da VPC $vpcName"
    #         $sgId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$sgName4'].GroupId" --output text
           
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Verificando se existe uma regra de entrada liberando a porta $fromPort4_1 do security group $sgName4 da VPC $vpcName"
    #         $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort4_1' && to_string(ToPort)=='$toPort4_1' && CidrIpv4=='$cidrIpv4_4']"
    #         if (($existRule).Count -gt 1) {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Já existe a regra de entrada liberando a porta $fromPort4_1 do security group $sgName4 da VPC $vpcName"
    #             aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort4_1' && to_string(ToPort)=='$toPort4_1' && CidrIpv4=='$cidrIpv4_4'].GroupId" --output text
    #         } else {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando o Id de todas as regras de entrada do security group $sgName4 da VPC $vpcName"
    #             aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Adicionando uma regra de entrada ao security group $sgName4 da VPC $vpcName para liberação da porta $fromPort4_1"
    #             aws ec2 authorize-security-group-ingress --group-id $sgId --ip-permissions "IpProtocol=$protocol,FromPort=$fromPort4_1,ToPort=$toPort4_1,IpRanges=[{CidrIp=$cidrIpv4_4,Description='$sgRuleDescription4'}]" --no-cli-pager
            
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando o Id da regra de entrada do security group $sgName4 da VPC $vpcName que libera a porta $fromPort4_1"
    #             aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort4_1' && to_string(ToPort)=='$toPort4_1' && CidrIpv4=='$cidrIpv4_4'].GroupId" --output text
    #         }

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Verificando se existe uma regra de entrada liberando a porta $fromPort4_2 do security group $sgName4 da VPC $vpcName"
    #         $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort4_2' && to_string(ToPort)=='$toPort4_2' && CidrIpv4=='$cidrIpv4_4']"
    #         if (($existRule).Count -gt 1) {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Já existe a regra de entrada liberando a porta $fromPort4_2 do security group $sgName4 da VPC $vpcName"
    #             aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort4_2' && to_string(ToPort)=='$toPort4_2' && CidrIpv4=='$cidrIpv4_4'].GroupId" --output text
    #         } else {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando o Id de todas as regras de entrada do security group $sgName4 da VPC $vpcName"
    #             aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Adicionando uma regra de entrada ao security group $sgName4 da VPC $vpcName para liberação da porta $fromPort4_2"
    #             aws ec2 authorize-security-group-ingress --group-id $sgId --ip-permissions "IpProtocol=$protocol,FromPort=$fromPort4_2,ToPort=$toPort4_2,IpRanges=[{CidrIp=$cidrIpv4_4,Description='$sgRuleDescription4'}]" --no-cli-pager
            
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando o Id da regra de entrada do security group $sgName4 da VPC $vpcName que libera a porta $fromPort4_2"
    #             aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort4_2' && to_string(ToPort)=='$toPort4_2' && CidrIpv4=='$cidrIpv4_4'].GroupId" --output text
    #         }
    #     } else {Write-Host "Não existe o security group $sgName4"}
    # } else {Write-Host "Não existe a VPC $vpcName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-VPC"
    # Write-Output "SECURITY GROUP CREATION 2"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se a VPC é a padrão ou não"
    # if ($vpcName -eq "default") {$condition = "isDefault"; $vpcNameControl = "true"
    # } else {$condition = "tag:Name"; $vpcNameControl = $vpcName}

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a VPC $vpcName"
    # if ((aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o Id da VPC $vpcName"
    #     $vpcId = aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se existe o security group de nome $sgName2 na VPC $vpcName"
    #     if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName2" --query "SecurityGroups[].GroupName").Count -gt 1) {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Já existe o security group de nome $sgName2 na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName2" --query "SecurityGroups[].GroupName" --output text
    #     } else {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando todos os security groups criados na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].GroupName" --output text
        
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Criando o security group de nome $sgName2 na VPC $vpcName"
    #         aws ec2 create-security-group --group-name $sgName2 --description $sgDescription2 --vpc-id $vpcId --tag-specifications "ResourceType=security-group,Tags=[{Key=Name,Value=$sgTagName}]"

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando o security group de nome $sgName2 na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName2" --query "SecurityGroups[].GroupName" --output text
    #     }
    # } else {Write-Host "Não existe a VPC $vpcName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-VPC"
    # Write-Output "SECURITY GROUP RULE CREATION 2"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se a VPC é a padrão ou não"
    # if ($vpcName -eq "default") {$condition = "isDefault"; $vpcNameControl = "true"
    # } else {$condition = "tag:Name"; $vpcNameControl = $vpcName}

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a VPC $vpcName"
    # if ((aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o Id da VPC $vpcName"
    #     $vpcId = aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se existe o security group $sgName2 na VPC $vpcName"
    #     if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName2" --query "SecurityGroups[].GroupName").Count -gt 1) {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo o Id do security group $sgName2 da VPC $vpcName"
    #         $sgId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$sgName2'].GroupId" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo o Id do security group vinculado $sgNameVinc"
    #         $referencedGroupId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$referencedGroupName'].GroupId" --output text
        
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Verificando se existe uma regra de entrada liberando a porta $fromPort2 do security group $sgName2 da VPC $vpcName"
    #         $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort2' && to_string(ToPort)=='$toPort2' && ReferencedGroupInfo.GroupId=='$referencedGroupId']"
    #         if (($existRule).Count -gt 1) {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Já existe a regra de entrada liberando a porta $fromPort2 do security group $sgName2 da VPC $vpcName"
    #             aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort2' && to_string(ToPort)=='$toPort2' && ReferencedGroupInfo.GroupId=='$referencedGroupId'].GroupId" --output text
    #         } else {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando o Id de todas as regras de entrada do security group $sgName2 da VPC $vpcName"
    #             aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Adicionando uma regra de entrada ao security group $sgName2 da VPC $vpcName para liberação da porta $fromPort2"
    #             aws ec2 authorize-security-group-ingress --group-id $sgId --ip-permissions "IpProtocol=$protocol,FromPort=$fromPort2,ToPort=$toPort2,UserIdGroupPairs=[{GroupId=$referencedGroupId,Description='$sgRuleDescription2'}]" --no-cli-pager
            
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando o Id da regra de entrada do security group $sgName2 da VPC $vpcName que libera a porta $fromPort2"
    #             aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort2' && to_string(ToPort)=='$toPort2' && ReferencedGroupInfo.GroupId=='$referencedGroupId'].GroupId" --output text
    #         }
    #     } else {Write-Host "Não existe o security group $sgName2"}
    # } else {Write-Host "Não existe a VPC $vpcName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-VPC"
    # Write-Output "SECURITY GROUP CREATION 3"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se a VPC é a padrão ou não"
    # if ($vpcName -eq "default") {$condition = "isDefault"; $vpcNameControl = "true"
    # } else {$condition = "tag:Name"; $vpcNameControl = $vpcName}

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a VPC $vpcName"
    # if ((aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o Id da VPC $vpcName"
    #     $vpcId = aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se existe o security group de nome $sgName3 na VPC $vpcName"
    #     if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName3" --query "SecurityGroups[].GroupName").Count -gt 1) {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Já existe o security group de nome $sgName3 na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName3" --query "SecurityGroups[].GroupName" --output text
    #     } else {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando todos os security groups criados na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].GroupName" --output text
        
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Criando o security group de nome $sgName3 na VPC $vpcName"
    #         aws ec2 create-security-group --group-name $sgName3 --description $sgDescription3 --vpc-id $vpcId --tag-specifications "ResourceType=security-group,Tags=[{Key=Name,Value=$sgTagName}]"

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando o security group de nome $sgName3 na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName3" --query "SecurityGroups[].GroupName" --output text
    #     }
    # } else {Write-Host "Não existe a VPC $vpcName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-VPC"
    # Write-Output "SECURITY GROUP RULE CREATION 3"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se a VPC é a padrão ou não"
    # if ($vpcName -eq "default") {$condition = "isDefault"; $vpcNameControl = "true"
    # } else {$condition = "tag:Name"; $vpcNameControl = $vpcName}

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a VPC $vpcName"
    # if ((aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o Id da VPC $vpcName"
    #     $vpcId = aws ec2 describe-vpcs --filters "Name=$condition,Values=$vpcNameControl" --query "Vpcs[].VpcId" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se existe o security group $sgName3 na VPC $vpcName"
    #     if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName3" --query "SecurityGroups[].GroupName").Count -gt 1) {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo o Id do security group $sgName3 da VPC $vpcName"
    #         $sgId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$sgName3'].GroupId" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo o Id do security group vinculado $referencedGroupName3A"
    #         $referencedGroupId3A = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$referencedGroupName3A'].GroupId" --output text
        
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Verificando se existe uma regra de entrada liberando a porta $fromPort3 do security group $sgName3 da VPC $vpcName"
    #         $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort3' && to_string(ToPort)=='$toPort3' && ReferencedGroupInfo.GroupId=='$referencedGroupId3A']"
    #         if (($existRule).Count -gt 1) {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Já existe a regra de entrada liberando a porta $fromPort3 do security group $sgName3 da VPC $vpcName"
    #             aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort3' && to_string(ToPort)=='$toPort3' && ReferencedGroupInfo.GroupId=='$referencedGroupId3A'].GroupId" --output text
    #         } else {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando o Id de todas as regras de entrada do security group $sgName3 da VPC $vpcName"
    #             aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Adicionando uma regra de entrada ao security group $sgName3 da VPC $vpcName para liberação da porta $fromPort3"
    #             aws ec2 authorize-security-group-ingress --group-id $sgId --ip-permissions "IpProtocol=$protocol,FromPort=$fromPort3,ToPort=$toPort3,UserIdGroupPairs=[{GroupId=$referencedGroupId3A,Description='$sgRuleDescription3A'}]" --no-cli-pager

    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando o Id da regra de entrada do security group $sgName3 da VPC $vpcName que libera a porta $fromPort3"
    #             aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort3' && to_string(ToPort)=='$toPort3' && ReferencedGroupInfo.GroupId=='$referencedGroupId3A'].GroupId" --output text
    #         }


    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo o Id do security group vinculado $referencedGroupName3B"
    #         $referencedGroupId3B = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$referencedGroupName3B'].GroupId" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Verificando se existe uma regra de entrada liberando a porta $fromPort3 do security group $sgName3 da VPC $vpcName"
    #         $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort3' && to_string(ToPort)=='$toPort3' && ReferencedGroupInfo.GroupId=='$referencedGroupId3B']"
    #         if (($existRule).Count -gt 1) {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Já existe a regra de entrada liberando a porta $fromPort3 do security group $sgName3 da VPC $vpcName"
    #             aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort3' && to_string(ToPort)=='$toPort3' && ReferencedGroupInfo.GroupId=='$referencedGroupId3B'].GroupId" --output text
    #         } else {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando o Id de todas as regras de entrada do security group $sgName3 da VPC $vpcName"
    #             aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Adicionando uma regra de entrada ao security group $sgName3 da VPC $vpcName para liberação da porta $fromPort3"
    #             aws ec2 authorize-security-group-ingress --group-id $sgId --ip-permissions "IpProtocol=$protocol,FromPort=$fromPort3,ToPort=$toPort3,UserIdGroupPairs=[{GroupId=$referencedGroupId3B,Description='$sgRuleDescription3B'}]" --no-cli-pager
            
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando o Id da regra de entrada do security group $sgName3 da VPC $vpcName que libera a porta $fromPort3"
    #             aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$fromPort3' && to_string(ToPort)=='$toPort3' && ReferencedGroupInfo.GroupId=='$referencedGroupId3B'].GroupId" --output text
    #         }
    #     } else {Write-Host "Não existe o security group $sgName3"}
    # } else {Write-Host "Não existe a VPC $vpcName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS RDS"
    # Write-Output "DB CREATION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a instância de banco de nome $dbInstanceName (Ignorando erro)..."
    # $erro = "DBInstanceNotFound"
    # if ((aws rds describe-db-instances --db-instance-identifier $dbInstanceName --query "DBInstances[].DBInstanceIdentifier" 2>&1) -match $erro)
    # {$condition = 0} 
    # else{$condition = (aws rds describe-db-instances --db-instance-identifier $dbInstanceName --query "DBInstances[].DBInstanceIdentifier").Count}

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a instância de banco de nome $dbInstanceName"
    # if ($condition -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe a instância de banco de nome $dbInstanceName"
    #     aws rds describe-db-instances --db-instance-identifier $dbInstanceName --query "DBInstances[].DBInstanceIdentifier" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as instâncias de banco criadas"
    #     aws rds describe-db-instances --query "DBInstances[].DBInstanceIdentifier" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o Id dos elementos de rede"
    #     $sgId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$sgName3'].GroupId" --output text
    #     $subnetId = aws ec2 describe-subnets --query "Subnets[?AvailabilityZone=='$aZ1'].SubnetId" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando a instância de banco de nome $dbInstanceName"
    #     aws rds create-db-instance --db-instance-identifier $dbInstanceName --db-instance-class $dbInstanceClass --engine $engine --engine-version $engineVersion --master-username $masterUsername --master-user-password $masterPassword --allocated-storage $allocatedStorage --storage-type $storageType --vpc-security-group-ids $sgId --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando a instância de banco de nome $dbInstanceName"
    #     aws rds describe-db-instances --db-instance-identifier $dbInstanceName --query "DBInstances[].DBInstanceIdentifier" --output text
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS ECR"
    # Write-Output "REPOSITORY CREATION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o repositório de nome $repositoryName"
    # if ((aws ecr describe-repositories --query "repositories[?repositoryName=='$repositoryName'].repositoryName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe o repositório de nome $repositoryName"
    #     aws ecr describe-repositories --query "repositories[?repositoryName=='$repositoryName'].repositoryName" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os repositórios criados"
    #     aws ecr describe-repositories --query "repositories[].repositoryName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando um repositório de nome $repositoryName"
    #     aws ecr create-repository --repository-name $repositoryName --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o repositório de nome $repositoryName"
    #     aws ecr describe-repositories --query "repositories[?repositoryName=='$repositoryName'].repositoryName" --output text
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2"
    # Write-Output "EC2 MANIPULATION 2"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a instância $tagNameInstance"
    # if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" "Name=instance-state-name,Values=running" --query "Reservations[].Instances[]").Count -gt 1) {       
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o Id da instância de nome de tag $tagNameInstance"
    #     $instanceId1 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].InstanceId" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Exibindo o comando para acessar a instância (Enviando a imagem Docker para o repositório do ECR)"
    #     Write-Output "aws ssm start-session --target $instanceId1 --document-name AWS-StartInteractiveCommand --parameters command=`"bash -l`""

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Executando os comandos dentro da instância"
    #     $bashCommands = "sudo su ec2-user -c \`"
    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Alterando para o diretorio do projeto
    #     cd /home/ec2-user/bia

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Conectando o Docker ao repositorio do ECR
    #     aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $repositoryPath

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Executando o build da aplicacao
    #     docker build -t bia .

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Tagueando a imagem com o caminho para o repositorio
    #     docker tag bia:latest $repositoryPath/${repositoryName}:latest

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Enviando a imagem para o repositorio criado no ECR
    #     docker push $repositoryPath/${repositoryName}:latest

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Aguardando 100 segundos para verificar a imagem no repositorio...
    #     sleep 100
    #     \`""

    #     $bashCommands = $bashCommands -replace "\r", ""
    #     aws ssm start-session --target $instanceId1 --document-name AWS-StartInteractiveCommand --parameters "command=`"$bashCommands`""

    # } else {"Não existe instâncias com o nome de tag $tagNameInstance"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-ELB"
    # Write-Output "APPLICATION LOAD BALANCER (ALB) CREATION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o load balancer de nome $albName"
    # if ((aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$albName'].LoadBalancerName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe o load balancer de nome $albName"
    #     aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$albName'].LoadBalancerName" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os load balancers criados"
    #     aws elbv2 describe-load-balancers --query "LoadBalancers[].LoadBalancerName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo os elementos de rede"
    #     $vpcId = aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[].VpcId" --output text
    #     $subnetId1 = aws ec2 describe-subnets --filters "Name=availability-zone,Values=$aZ1" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
    #     $subnetId2 = aws ec2 describe-subnets --filters "Name=availability-zone,Values=$aZ2" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
    #     $subnetId3 = aws ec2 describe-subnets --filters "Name=availability-zone,Values=$aZ3" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
    #     $sgId = aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName" --query "SecurityGroups[].GroupId" --output text
    
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando o load balancer de nome $albName"
    #     aws elbv2 create-load-balancer --name $albName --type application --scheme internet-facing --ip-address-type ipv4 --subnets $subnetId1 $subnetId2 $subnetId3 --security-groups $sgId --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o load balancer de nome $albName"
    #     aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$albName'].LoadBalancerName" --output text
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-ELB"
    # Write-Output "TARGET GROUP CREATION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o target group de nome $tgName"
    # if ((aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$tgName'].TargetGroupName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe o target group de nome $tgName"
    #     aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$tgName'].TargetGroupName" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os target groups criados"
    #     aws elbv2 describe-target-groups --query "TargetGroups[].TargetGroupName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o Id da VPC padrão"
    #     $vpcId = aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[].VpcId" --output text
    
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando o target group de nome $tgName"
    #     aws elbv2 create-target-group --name $tgName --target-type $tgType --protocol $tgProtocol --protocol-version $tgProtocolVersion --port $tgPort --vpc-id $vpcId --health-check-protocol $tgHealthCheckProtocol --health-check-port $tgHealthCheckPort --health-check-path $tgHealthCheckPath --healthy-threshold 5 --unhealthy-threshold 2 --health-check-timeout-seconds 5 --health-check-interval-seconds 15 --matcher "HttpCode=200-299" --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo a ARN do target group de nome $tgName"
    #     $tgArn = aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$tgName'].TargetGroupArn" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Alterando o tempo de cancelamento do alvo no target group de nome $tgName"
    #     aws elbv2 modify-target-group-attributes --target-group-arn $tgArn --attributes "Key=deregistration_delay.timeout_seconds,Value=30" --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o target group de nome $tgName"
    #     aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$tgName'].TargetGroupName" --output text
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-ELB"
    # Write-Output "LISTENER CREATION 1"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Extraindo a ARN do load balancer $albName"
    # $lbArn = aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$albName'].LoadBalancerArn" --output text

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Extraindo a ARN do target group $tgName"
    # $tgArn = aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$tgName'].TargetGroupArn" --output text

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe um listener vinculando o target group $tgName ao load balancer $albName na porta $listenerPort1 do protocolo $listenerProtocol"
    # if ((aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[?to_string(Port)=='$listenerPort1' && Protocol=='$listenerProtocol' && DefaultActions[?TargetGroupArn=='$tgArn']].ListenerArn").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe um listener vinculando o target group $tgName ao load balancer $albName na porta $listenerPort1 do protocolo $listenerProtocol"
    #     aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[?to_string(Port)=='$listenerPort1' && Protocol=='$listenerProtocol' && DefaultActions[?TargetGroupArn=='$tgArn']].ListenerArn" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os listeners do load balancer $albName"
    #     aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[].ListenerArn" --output text
    
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando um listener para vincular o target group $tgName ao load balancer $albName na porta $listenerPort1 do protocolo $listenerProtocol"
    #     aws elbv2 create-listener --load-balancer-arn $lbArn --protocol $listenerProtocol --port $listenerPort1 --default-actions "Type=forward,TargetGroupArn=$tgArn" --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o listener que vincula o target group $tgName ao load balancer $albName na porta $listenerPort1 do protocolo $listenerProtocol"
    #     aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[?to_string(Port)=='$listenerPort1' && Protocol=='$listenerProtocol' && DefaultActions[?TargetGroupArn=='$tgArn']].ListenerArn" --output text
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS IAM"
    # Write-Output "IAM ROLE CREATION 2"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a role de nome $roleName2"
    # if ((aws iam list-roles --query "Roles[?RoleName=='$roleName2'].RoleName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe uma role de nome $roleName2"
    #     aws iam list-roles --query "Roles[?RoleName=='$roleName2'].RoleName" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as roles criadas"
    #     aws iam list-roles --query 'Roles[].RoleName' --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando a role de nome $roleName2"
    #     aws iam create-role --role-name $roleName2 --assume-role-policy-document "{
    #         `"Version`": `"2012-10-17`",
    #         `"Statement`": [
    #           {
    #             `"Effect`": `"Allow`",
    #             `"Principal`": {`"Service`": `"$serviceName2`"},
    #             `"Action`": `"sts:AssumeRole`"
    #           }
    #         ]
    #       }" --no-cli-pager
           
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando a role de nome $roleName2"
    #     aws iam list-roles --query "Roles[?RoleName=='$roleName2'].RoleName" --output text
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS IAM"
    # Write-Output "IAM ROLE ADD POLICY 2.1"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a policy $policyName2_1 anexada a role de nome $roleName2"
    # if ((aws iam list-attached-role-policies --role-name $roleName2 --query "AttachedPolicies[?PolicyName=='$policyName2_1'].PolicyName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe a policy $policyName2_1 anexada a role de nome $roleName2"
    #     aws iam list-attached-role-policies --role-name $roleName2 --query "AttachedPolicies[?PolicyName=='$policyName2_1'].PolicyName" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as polices anexadas a role de nome $roleName2"
    #     aws iam list-attached-role-policies --role-name $roleName2 --query "AttachedPolicies[].PolicyName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o ARN da policy $policyName2_1"
    #     $policyArn = aws iam list-policies --query "Policies[?PolicyName=='$policyName2_1'].[Arn]" --output text
    
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Vinculando a polciy $policyName2_1 a role de nome $roleName2"
    #     aws iam attach-role-policy --role-name $roleName2 --policy-arn $policyArn

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando a policy $policyName2_1 anexada a role de nome $roleName2"
    #     aws iam list-attached-role-policies --role-name $roleName2 --query "AttachedPolicies[?PolicyName=='$policyName2_1'].PolicyName" --output text
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS IAM"
    # Write-Output "IAM INSTANCE PROFILE CREATION AND ADD ROLE 2"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o perfil de instância de nome $instanceProfileName2"
    # if ((aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instanceProfileName2'].InstanceProfileName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe o perfil de instância de nome $instanceProfileName2"
    #     aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instanceProfileName2'].InstanceProfileName" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os perfis de instância existentes"
    #     aws iam list-instance-profiles --query 'InstanceProfiles[].InstanceProfileName' --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando o perfil de instância de nome $instanceProfileName2"
    #     aws iam create-instance-profile --instance-profile-name $instanceProfileName2

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Adicionando a role $roleName2 ao perfil de instância de nome $instanceProfileName2"
    #     aws iam add-role-to-instance-profile --instance-profile-name $instanceProfileName2 --role-name $roleName2
    
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o perfil de instância de nome $instanceProfileName2"
    #     aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instanceProfileName2'].InstanceProfileName" --output text
    # }



  
    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2"
    # Write-Output "LAUNCH TEMPLATE CREATION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o modelo de implantação de nome $launchTempName"
    # if ((aws ec2 describe-launch-templates --query "LaunchTemplates[?LaunchTemplateName=='$launchTempName'].LaunchTemplateName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe o modelo de implantação de nome $launchTempName"
    #     aws ec2 describe-launch-templates --query "LaunchTemplates[?LaunchTemplateName=='$launchTempName'].LaunchTemplateName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     $resposta = Read-Host "Quer implementar uma nova versão? (y/n) "
    #     if ($resposta.ToLower() -eq 'y') {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo a última versão do modelo de implantação de nome $launchTempName"
    #         $latestVersion = aws ec2 describe-launch-templates --query "LaunchTemplates[?LaunchTemplateName=='$launchTempName'].LatestVersionNumber" --output text
    #         $versionNumber = [int]$latestVersion + 1

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando todas as versões do modelo de implantação de nome $launchTempName"
    #         aws ec2 describe-launch-template-versions --launch-template-name $launchTempName --query "LaunchTemplateVersions[].[LaunchTemplateName,VersionNumber]" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo o ID do security group"
    #         $sgId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$sgNameLaunchTemplate'].GroupId" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo a ARN do instance profile"
    #         $instanceProfile2Arn = aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instanceProfileName2'].Arn" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Codificando o arquivo user data em Base64"
    #         $udFile = "#!/bin/bash`necho ECS_CLUSTER=$clusterName >> /etc/ecs/ecs.config"
    #         $udFileBase64 = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($udFile))

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Criando o launch template (modelo de implantação) de nome $launchTempName na versão $versionNumber"
    #         aws ec2 create-launch-template-version --launch-template-name $launchTempName --version-description $versionDescription --launch-template-data "{
    #             `"ImageId`": `"$amiId`",
    #             `"InstanceType`": `"$instanceTypeAsg`",
    #             `"KeyName`": `"$keyPair`",
    #             `"UserData`": `"$udFileBase64`",
    #             `"SecurityGroupIds`": `"$sgId`",
    #             `"IamInstanceProfile`": {
    #                 `"Arn`": `"$instanceProfile2Arn`"
    #             },
    #             `"BlockDeviceMappings`": [
    #             {
    #                 `"DeviceName`": `"$deviceName2`",
    #                 `"Ebs`": {
    #                 `"VolumeSize`": $volumeSize2,
    #                 `"VolumeType`": `"$volumeType2`"
    #                 }
    #             }
    #             ]
    #         }" --no-cli-pager

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando o modelo de implantação de nome $launchTempName na versão $versionNumber"
    #         aws ec2 describe-launch-template-versions --launch-template-name $launchTempName --query "LaunchTemplateVersions[?to_string(VersionNumber)=='$versionNumber'].[LaunchTemplateName,VersionNumber]" --output text
    #     }
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Definindo a versão como primeira do modelo de implantação de nome $launchTempName"
    #     $versionNumber = 1

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os modelos de implantação existentes"
    #     aws ec2 describe-launch-templates --query 'LaunchTemplates[].[LaunchTemplateName,DefaultVersionNumber]' --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o ID do security group"
    #     $sgId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$sgNameLaunchTemplate'].GroupId" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo a ARN do instance profile"
    #     $instanceProfile2Arn = aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instanceProfileName2'].Arn" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Codificando o arquivo user data em Base64"
    #     $udFile = "#!/bin/bash`necho ECS_CLUSTER=$clusterName >> /etc/ecs/ecs.config"
    #     $udFileBase64 = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($udFile))

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando o launch template (modelo de implantação) de nome $launchTempName na versão $versionNumber"
    #     aws ec2 create-launch-template --launch-template-name $launchTempName --version-description $versionDescription --launch-template-data "{
    #         `"ImageId`": `"$amiId`",
    #         `"InstanceType`": `"$instanceTypeAsg`",
    #         `"KeyName`": `"$keyPair`",
    #         `"UserData`": `"$udFileBase64`",
    #         `"SecurityGroupIds`": [`"$sgId`"],
    #         `"IamInstanceProfile`": {
    #             `"Arn`": `"$instanceProfile2Arn`"
    #         },
    #         `"BlockDeviceMappings`": [
    #             {
    #             `"DeviceName`": `"$deviceName2`",
    #             `"Ebs`": {
    #                 `"VolumeSize`": $volumeSize2,
    #                 `"VolumeType`": `"$volumeType2`"
    #             }
    #             }
    #         ]
    #         }" --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o modelo de implantação de nome $launchTempName na versão $versionNumber"
    #     aws ec2 describe-launch-templates --query "LaunchTemplates[?LaunchTemplateName=='$launchTempName'].[LaunchTemplateName,DefaultVersionNumber]" --output text
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-AUTO SCALING"
    # Write-Output "AUTO SCALING GROUP CREATION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o auto scaling group de nome $asgName"
    # if ((aws autoscaling describe-auto-scaling-groups --query "AutoScalingGroups[?AutoScalingGroupName=='$asgName'].AutoScalingGroupName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe o auto scaling group de nome $asgName"
    #     aws autoscaling describe-auto-scaling-groups --query "AutoScalingGroups[?AutoScalingGroupName=='$asgName'].AutoScalingGroupName" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os auto scaling groups existentes"
    #     aws autoscaling describe-auto-scaling-groups --query "AutoScalingGroups[].AutoScalingGroupName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o ARN do target group $tgName"
    #     $tgArn = aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$tgName'].TargetGroupArn" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo os IDs dos elementos de rede"
    #     $vpcId = aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[].VpcId" --output text
    #     $subnetId1 = aws ec2 describe-subnets --filters "Name=availability-zone,Values=$aZ1" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
    #     $subnetId2 = aws ec2 describe-subnets --filters "Name=availability-zone,Values=$aZ2" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text
    #     $subnetId3 = aws ec2 describe-subnets --filters "Name=availability-zone,Values=$aZ3" "Name=vpc-id,Values=$vpcId" --query "Subnets[].SubnetId" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando o auto scaling group de nome $asgName"
    #     aws autoscaling create-auto-scaling-group --auto-scaling-group-name $asgName --launch-template "LaunchTemplateName=$launchTempName,Version=$versionNumber" --min-size 2 --max-size 2 --desired-capacity 2 --default-cooldown 300 --health-check-type EC2 --health-check-grace-period 300 --vpc-zone-identifier "$subnetId1,$subnetId2,$subnetId3" --tags "Key=Name,Value=$tagNameInstanceAsg,PropagateAtLaunch=true" --target-group-arns $tgArn

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Habilitando a coleta de métricas do auto scaling group de nome $asgName"
    #     aws autoscaling enable-metrics-collection --auto-scaling-group-name $asgName --metrics "GroupMinSize" "GroupMaxSize" "GroupDesiredCapacity" "GroupInServiceInstances" "GroupPendingInstances" "GroupStandbyInstances" "GroupTerminatingInstances" "GroupTotalInstances" --granularity "1Minute"

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o auto scaling group de nome $asgName"
    #     aws autoscaling describe-auto-scaling-groups --query "AutoScalingGroups[?AutoScalingGroupName=='$asgName'].AutoScalingGroupName" --output text
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS ECS"
    # Write-Output "CAPACITY PROVIDER CREATION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o fornecedor de capacidade de nome $capacityProviderName"
    # if ((aws ecs describe-capacity-providers --query "capacityProviders[?name=='$capacityProviderName'].name").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe o fornecedor de capacidade de nome $capacityProviderName"
    #     aws ecs describe-capacity-providers --query "capacityProviders[?name=='$capacityProviderName'].name" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os fornecedores de capacidade existentes"
    #     aws ecs describe-capacity-providers --query "capacityProviders[].name[]" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo a ARN do auto scaling group $asgName"
    #     $asgArn = aws autoscaling describe-auto-scaling-groups --query "AutoScalingGroups[?AutoScalingGroupName=='$asgName'].AutoScalingGroupARN" --output text    
    
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando um fornecedor de capacidade de nome $capacityProviderName"
    #     aws ecs create-capacity-provider --name $capacityProviderName --auto-scaling-group-provider "autoScalingGroupArn=$asgArn,managedScaling={status=ENABLED,targetCapacity=100},managedTerminationProtection=DISABLED" --no-cli-pager
      
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o fornecedor de capacidade de nome $capacityProviderName"
    #     aws ecs describe-capacity-providers --query "capacityProviders[?name=='$capacityProviderName'].name" --output text
    # }
    



    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS ECS"
    # Write-Output "CLUSTER EC2 CREATION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o cluster de nome $clusterName"
    # if ((aws ecs list-clusters --query "clusterArns[?contains(@, '${clusterArn}')]").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe o cluster de nome $clusterName"
    #     aws ecs describe-clusters --clusters $clusterArn --query "clusters[].clusterName[]" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando as ARNs de todos os clusters criados"
    #     aws ecs list-clusters --query clusterArns[] --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando um cluster de nome $clusterName"
    #     aws ecs create-cluster --cluster-name $clusterName --capacity-providers $capacityProviderName --default-capacity-provider-strategy "capacityProvider=$capacityProviderName,base=1,weight=1" --settings "name=containerInsights,value=enabled" --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o cluster de nome $clusterName"
    #     aws ecs describe-clusters --clusters $clusterArn --query "clusters[].clusterName[]" --output text
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS IAM"
    # Write-Output "IAM ROLE SERVICE CREATION 3"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a role de nome $roleName3"
    # if ((aws iam list-roles --query "Roles[?RoleName=='$roleName3'].RoleName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe uma role de nome $roleName3"
    #     aws iam list-roles --query "Roles[?RoleName=='$roleName3'].RoleName" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as roles criadas"
    #     aws iam list-roles --query 'Roles[].RoleName' --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando a role de nome $roleName3"
    #     aws iam create-role --role-name $roleName3 --assume-role-policy-document "{
    #         `"Version`": `"2012-10-17`",
    #         `"Statement`": [
    #         {
    #             `"Effect`": `"Allow`",
    #             `"Principal`": {`"Service`": `"$serviceName3`"},
    #             `"Action`": `"sts:AssumeRole`"
    #         }
    #         ]
    #     }" --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando a role de nome $roleName3"
    #     aws iam list-roles --query "Roles[?RoleName=='$roleName3'].RoleName" --output text
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS IAM"
    # Write-Output "IAM ROLE ADD POLICY 3.1"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a policy $policyName3_1 anexada a role de nome $roleName3"
    # if ((aws iam list-attached-role-policies --role-name $roleName3 --query "AttachedPolicies[?PolicyName=='$policyName3_1'].PolicyName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe a policy $policyName3_1 anexada a role de nome $roleName3"
    #     aws iam list-attached-role-policies --role-name $roleName3 --query "AttachedPolicies[?PolicyName=='$policyName3_1'].PolicyName" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as polices anexadas a role de nome $roleName3"
    #     aws iam list-attached-role-policies --role-name $roleName3 --query "AttachedPolicies[].PolicyName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o ARN da policy $policyName3_1"
    #     $policyArn = aws iam list-policies --query "Policies[?PolicyName=='$policyName3_1'].[Arn]" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Vinculando a polciy $policyName3_1 a role de nome $roleName3"
    #     aws iam attach-role-policy --role-name $roleName3 --policy-arn $policyArn

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando a policy $policyName3_1 anexada a role de nome $roleName3"
    #     aws iam list-attached-role-policies --role-name $roleName3 --query "AttachedPolicies[?PolicyName=='$policyName3_1'].PolicyName" --output text
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS ECS"
    # Write-Output "TASK EC2 CREATION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Criando uma função para executar a definição de tarefa de nome $taskName na versão correspondente"
    # function ExecutarTarefa {
    #     param([string]$executionRoleName, [string]$taskName, [string]$launchType, [string]$containerName1, [string]$dockerImage1, [string]$logGroupName, [string]$region, [string]$containerName2, [string]$dockerImage2)

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando as ARNs das revisões da definição de tarefa ativas de nome $taskName"
    #     aws ecs list-task-definitions --family-prefix $taskName --query taskDefinitionArns[] --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o endpoint da instância de banco $dbInstanceName"
    #     $dbInstanceEndpoint = aws rds describe-db-instances --db-instance-identifier $dbInstanceName --query "DBInstances[].Endpoint[].Address" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o ARN da role $executionRoleName"
    #     $executionRoleArn = aws iam list-roles --query "Roles[?RoleName=='$executionRoleName'].Arn" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Registrando uma definição de tarefa de nome $taskName"
    #     aws ecs register-task-definition --family $taskName --network-mode "bridge" --requires-compatibilities $launchType --execution-role-arn $executionRoleArn --runtime-platform  cpuArchitecture='X86_64',operatingSystemFamily='LINUX' --container-definitions "[
    #         {
    #             `"name`": `"$containerName1`",
    #             `"image`": `"$dockerImage1`",
    #             `"cpu`": 1024,
    #             `"memory`": 512,
    #             `"portMappings`": [
    #                 {
    #                 `"containerPort`": 8080,
    #                 `"hostPort`": $hostPort,
    #                 `"protocol`":`"tcp`"
    #                 }
    #             ],
    #             `"essential`": true,
    #             `"environment`":[
    #                 {`"name`":`"DB_USER`", `"value`":`"$masterUsername`"},
    #                 {`"name`":`"DB_PWD`", `"value`":`"$masterPassword`"},
    #                 {`"name`":`"DB_HOST`", `"value`":`"$dbInstanceEndpoint`"},
    #                 {`"name`":`"DB_PORT`", `"value`":`"5432`"}
    #             ]
    #         }
    #     ]" --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando a definição de tarefa de nome $taskName"
    #     aws ecs describe-task-definition --task-definition $taskName --query "taskDefinition.family" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando a revisão da definição de tarefa de nome $taskName"
    #     aws ecs describe-task-definition --task-definition $taskName --query "taskDefinition.revision" --output text
    # }

    # $erro = "ClientException"
    # if ((aws ecs describe-task-definition --task-definition $taskName --query "taskDefinition.revision" 2>&1) -match $erro) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando a definição de tarefa";
    #     ExecutarTarefa $executionRoleName $taskName $launchType $containerName1 $dockerImage1 $logGroupName $region $containerName2 $dockerImage2
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe uma definição de tarefa de nome $taskName";
    #     $revision = (aws ecs describe-task-definition --task-definition $taskName --query "taskDefinition.revision" --output text)
    #     Write-Output "${taskName}:${revision}"

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     $newRevision = [int]$revision + 1
    #     $resposta = Read-Host "Quer implementar a versão $($newRevision.ToString())? (y/n) "
    #     if ($resposta.ToLower() -eq 'y') 
    #         {ExecutarTarefa $executionRoleName $taskName $launchType $containerName1 $dockerImage1 $logGroupName $region $containerName2 $dockerImage2}
    # } 




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS ECS"
    # Write-Output "SERVICE EC2 CREATION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o serviço de nome $ecsServiceName no cluster $clusterName (Ignorando erro)..."
    # $erro = "ClientException"
    # if ((aws ecs describe-services --cluster $clusterName --services $ecsServiceName --query "services[?serviceName=='$ecsServiceName' && status=='ACTIVE'].serviceName" 2>&1) -match $erro)
    # {$condition = 0} 
    # else{$condition = (aws ecs describe-services --cluster $clusterName --services $ecsServiceName --query "services[?serviceName=='$ecsServiceName' && status=='ACTIVE'].serviceName").Count}

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o serviço de nome $ecsServiceName no cluster $clusterName"
    # if ($condition -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe o serviço de nome $ecsServiceName no cluster $clusterName"
    #     aws ecs describe-services --cluster $clusterName --services $ecsServiceName --query "services[?serviceName=='$ecsServiceName'].serviceName" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os serviços no cluster $clusterName"
    #     aws ecs list-services --cluster $clusterName --query "serviceArns" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o ARN do target group $tgName"
    #     $tgArn = aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$tgName'].TargetGroupArn" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando o serviço de nome $ecsServiceName no cluster $clusterName"
    #     aws ecs create-service --cluster $clusterName --service-name $ecsServiceName --task-definition "${taskName}:${taskVersion}" --desired-count $taskAmount --launch-type $launchType --scheduling-strategy REPLICA --deployment-configuration "minimumHealthyPercent=$minHealthyPercent,maximumPercent=$maxHealthyPercent" --load-balancers "targetGroupArn=$tgArn,containerName=$containerName1,containerPort=$containerPort1" --placement-constraints "type=distinctInstance" --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o serviço de nome $ecsServiceName no cluster $clusterName"
    #     aws ecs describe-services --cluster $clusterName --services $ecsServiceName --query "services[?serviceName=='$ecsServiceName'].serviceName" --output text
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2"
    # Write-Output "EC2 MANIPULATION 3"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a instância $tagNameInstance"
    # if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" "Name=instance-state-name,Values=running" --query "Reservations[].Instances[]").Count -gt 1) {       
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o Id da instância de nome de tag $tagNameInstance"
    #     $instanceId1 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].InstanceId" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o IP público da instância $tagNameInstance"
    #     $instanceIP1 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o IP público da instância $tagNameInstanceAsg"
    #     $instanceIP2 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstanceAsg" --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o DNS do load balancer $albName"
    #     $lbDNS = aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$albName'].DNSName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o endpoint da instância de banco $dbInstanceName"
    #     $dbInstanceEndpoint = aws rds describe-db-instances --db-instance-identifier $dbInstanceName --query "DBInstances[].Endpoint[].Address" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Exibindo o comando para acessar a instância"
    #     Write-Output "aws ssm start-session --target $instanceId1 --document-name AWS-StartInteractiveCommand --parameters command=`"bash -l`""

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Executando os comandos dentro da instância (Alterando o banco de dados para o RDS, criando o esquema do banco e depois, atualizando a aplicação e trocando a instância de desenvolvimento ($tagNameInstance) para a instância do cluster ($tagNameInstanceAsg))"
    #     $bashCommands = "sudo su ec2-user -c \`"
    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Alterando para o diretorio do projeto
    #     cd /home/ec2-user/bia

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Realizando alteracao no Docker Compose trocando a variavel DB_HOST para o endpoint do banco do RDS
    #     sed -i 's#DB_HOST: database#DB_HOST: ${dbInstanceEndpoint}#' /home/ec2-user/bia/docker-compose.yml

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Implantando a aplicacao, agora com o banco de dados no RDS
    #     docker compose up -d

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Listando todos os containers criados
    #     docker ps

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Criando o banco de dados no container da aplicacao que e refletido no RDS
    #     docker compose exec server bash -c 'npx sequelize db:create'

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Aplicando as migracoes do banco de dados local no container da aplicacao que sao refletidas no RDS
    #     docker compose exec server bash -c 'npx sequelize db:migrate'

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Aguardando 200 segundos para verificar a aplicacao...
    #     sleep 200

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Removendo o projeto com Docker Compose
    #     docker compose down -v

    #     # echo -----//-----//-----//-----//-----//-----//-----
    #     # echo Realizando alteracao no Dockerfile trocando URL da API que a aplicacao React vai utilizar que agora sera da Bia-Web ao inves da Bia-Dev
    #     # sed -i 's#RUN REACT_APP_API_URL=http://${instanceIP1}:3001#RUN REACT_APP_API_URL=http://${instanceIP2}:3001#' /home/ec2-user/bia/Dockerfile

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Realizando alteracao no Dockerfile trocando URL da API que a aplicacao React vai utilizar que agora sera o DNS do load balancer ao inves da Bia-Web
    #     sed -i 's#RUN REACT_APP_API_URL=http://${instanceIP1}:3001#RUN REACT_APP_API_URL=http://${lbDNS}#' /home/ec2-user/bia/Dockerfile

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Conectando o Docker ao repositorio do ECR
    #     aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $repositoryPath 

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Realizando alteracao no arquivo Header.js para simular uma mudanca de versao da aplicacao web
    #     sed -i 's/Close/Fechar/' /home/ec2-user/bia/client/src/components/Header.js
    #     sed -i 's/black/green/' /home/ec2-user/bia/client/src/components/Header.js

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Executando o build da aplicacao
    #     docker build -t bia .

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Tagueando a imagem com o caminho para o repositorio
    #     docker tag bia:latest ${repositoryPath}/${repositoryName}:latest

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Enviando a imagem para o repositorio criado no ECR
    #     docker push ${repositoryPath}/${repositoryName}:latest

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Atualizando as tasks no cluster
    #     aws ecs update-service --cluster $clusterName --service $ecsServiceName --force-new-deployment --no-cli-pager

    #     echo -----//-----//-----//-----//-----//-----//-----
    #     echo Aguardando 200 segundos para verificar a aplicacao...
    #     sleep 200
    #     \`""

    #     $bashCommands = $bashCommands -replace "\r", ""
    #     aws ssm start-session --target $instanceId1 --document-name AWS-StartInteractiveCommand --parameters "command=`"$bashCommands`""

    # } else {"Não existe instâncias com o nome de tag $tagNameInstance"}




    # # Write-Output "***********************************************"
    # # Write-Output "SERVIÇO: AMAZON ROUTE 53"
    # # Write-Output "HOSTED ZONE CREATION"

    # # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # # Write-Output "Verificando se existe a hosted zone de nome $hostedZoneName"
    # # if ((aws route53 list-hosted-zones --query "HostedZones[?Name=='$hostedZoneName'].Name").Count -gt 1) {
    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Já existe a hosted zone de nome $hostedZoneName"
    # #     aws route53 list-hosted-zones --query "HostedZones[?Name=='$hostedZoneName'].Name" --output text
    # # } else {
    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Listando todas as hosted zones existentes"
    # #     aws route53 list-hosted-zones --query "HostedZones[].Name" --output text

    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Criando a hosted zone de nome $hostedZoneName"
    # #     aws route53 create-hosted-zone --name $domainName --caller-reference $hostedZoneReference --no-cli-pager

    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Listando a hosted zone de nome $hostedZoneName"
    # #     aws route53 list-hosted-zones --query "HostedZones[?Name=='$hostedZoneName'].Name" --output text
    # # }
        



    # # Write-Output "***********************************************"
    # # Write-Output "SERVIÇO: AWS ACM"
    # # Write-Output "CERTIFICATE CREATION"

    # # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # # Write-Output "Verificando se existe um certificado para o domínio de nome $fullDomainName"
    # # if ((aws acm list-certificates --query "CertificateSummaryList[?DomainName=='$fullDomainName'].DomainName").Count -gt 1) {
    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Já existe um certificado para o domínio de nome $fullDomainName"
    # #     aws acm list-certificates --query "CertificateSummaryList[?DomainName=='$fullDomainName'].DomainName" --output text
    # # } else {
    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Listando os nomes de domínio de todos certificados existentes"
    # #     aws acm list-certificates --query "CertificateSummaryList[].DomainName" --output text

    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Criando um certificado para o domínio de nome $fullDomainName"
    # #     aws acm request-certificate --domain-name $fullDomainName --validation-method DNS

    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Listando um certificado para o domínio de nome $fullDomainName"
    # #     aws acm list-certificates --query "CertificateSummaryList[?DomainName=='$fullDomainName'].DomainName" --output text
    # # }




    # # Write-Output "***********************************************"
    # # Write-Output "SERVIÇO: AMAZON ROUTE 53"
    # # Write-Output "RECORD ACM CERTIFICATE-HOSTED ZONE CREATION"

    # # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # # Write-Output "Verificando se existe a hosted zone $hostedZoneName"
    # # if ((aws route53 list-hosted-zones --query "HostedZones[?Name=='$hostedZoneName'].Name").Count -gt 1) {
    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Extraindo o Id da hosted zone $hostedZoneName"
    # #     $hostedZoneId = aws route53 list-hosted-zones --query "HostedZones[?Name=='$hostedZoneName'].Id" --output text

    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Verificando se existe um certificado para o domínio $fullDomainName"
    # #     if ((aws acm list-certificates --query "CertificateSummaryList[?DomainName=='$fullDomainName'].DomainName").Count -gt 1) {
    # #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #         Write-Output "Extraindo o ARN do certificado para o domínio $fullDomainName"
    # #         $certificateArn = aws acm list-certificates --query "CertificateSummaryList[?DomainName=='$fullDomainName'].CertificateArn" --output text

    # #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #         Write-Output "Extraindo o nome do recurso de registro do certificado para o domínio $fullDomainName"
    # #         $resourceRecordName = aws acm describe-certificate --certificate-arn $certificateArn --query "Certificate.DomainValidationOptions[?DomainName=='$fullDomainName'].ResourceRecord.Name" --output text

    # #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #         Write-Output "Extraindo o valor do recurso de registro do certificado para o domínio $fullDomainName"
    # #         $resourceRecordValue = aws acm describe-certificate --certificate-arn $certificateArn --query "Certificate.DomainValidationOptions[?DomainName=='$fullDomainName'].ResourceRecord.Value" --output text
    # #     } else {Write-Output "Não existe o certificado para o domínio $fullDomainName"}

    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Verificando se existe o registro de nome $resourceRecordName na hosted zone $hostedZoneName"
    # #     if ((aws route53 list-resource-record-sets --hosted-zone-id $hostedZoneId --query "ResourceRecordSets[?Name=='$resourceRecordName'].Name").Count -gt 1) {
    # #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #         Write-Output "Já existe o registro de nome $resourceRecordName na hosted zone $hostedZoneName"
    # #         aws route53 list-resource-record-sets --hosted-zone-id $hostedZoneId --query "ResourceRecordSets[?Name=='$resourceRecordName'].Name" --output text
    # #     } else {
    # #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #         Write-Output "Listando todos os registros da hosted zone $hostedZoneName"
    # #         aws route53 list-resource-record-sets --hosted-zone-id $hostedZoneId --query "ResourceRecordSets[].Name" --output text
        
    # #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #         Write-Output "Criando o registro de nome $resourceRecordName na hosted zone $hostedZoneName"
    # #         aws route53 change-resource-record-sets --hosted-zone-id $hostedZoneId --change-batch "{
    # #             `"Changes`": [
    # #             {
    # #                 `"Action`": `"CREATE`",
    # #                 `"ResourceRecordSet`": {
    # #                 `"Name`": `"${resourceRecordName}`",
    # #                 `"Type`": `"CNAME`",
    # #                 `"TTL`": 300,
    # #                 `"ResourceRecords`": [
    # #                     {`"Value`": `"${resourceRecordValue}`"}
    # #                 ]
    # #                 }
    # #             }
    # #             ]
    # #         }"

    # #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #         Write-Output "Listando o registro de nome $resourceRecordName na hosted zone $hostedZoneName"
    # #         aws route53 list-resource-record-sets --hosted-zone-id $hostedZoneId --query "ResourceRecordSets[?Name=='$resourceRecordName'].Name" --output text
    # #     }
    # # } else {Write-Output "Não existe a hosted zone de nome $hostedZoneName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AMAZON ROUTE 53"
    # Write-Output "RECORD LOAD BALANCER-HOSTED ZONE CREATION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a hosted zone $hostedZoneName"
    # if ((aws route53 list-hosted-zones --query "HostedZones[?Name=='$hostedZoneName'].Name").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o Id da hosted zone $hostedZoneName"
    #     $hostedZoneId = aws route53 list-hosted-zones --query "HostedZones[?Name=='$hostedZoneName'].Id" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o DNS do load balancer $albName"
    #     $lbDNS = aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$albName'].DNSName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se existe o registro de nome $resourceRecordName2 na hosted zone $hostedZoneName"
    #     if ((aws route53 list-resource-record-sets --hosted-zone-id $hostedZoneId --query "ResourceRecordSets[?Name=='$resourceRecordName2.'].Name").Count -gt 1) {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Já existe o registro de nome $resourceRecordName2 na hosted zone $hostedZoneName"
    #         aws route53 list-resource-record-sets --hosted-zone-id $hostedZoneId --query "ResourceRecordSets[?Name=='$resourceRecordName2.'].Name" --output text
    #     } else {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando todos os registros da hosted zone $hostedZoneName"
    #         aws route53 list-resource-record-sets --hosted-zone-id $hostedZoneId --query "ResourceRecordSets[].Name" --output text
        
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Criando o registro de nome $resourceRecordName2 na hosted zone $hostedZoneName"
    #         aws route53 change-resource-record-sets --hosted-zone-id $hostedZoneId --change-batch "{
    #             `"Changes`": [
    #             {
    #                 `"Action`": `"CREATE`",
    #                 `"ResourceRecordSet`": {
    #                 `"Name`": `"${resourceRecordName2}`",
    #                 `"Type`": `"CNAME`",
    #                 `"TTL`": 300,
    #                 `"ResourceRecords`": [
    #                     {`"Value`": `"${lbDNS}`"}
    #                 ]
    #                 }
    #             }
    #             ]
    #         }"
    
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando o registro de nome $resourceRecordName2 na hosted zone $hostedZoneName"
    #         aws route53 list-resource-record-sets --hosted-zone-id $hostedZoneId --query "ResourceRecordSets[?Name=='$resourceRecordName2.'].Name" --output text
    #     }
    # } else {Write-Output "Não existe a hosted zone de nome $hostedZoneName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-ELB"
    # Write-Output "LISTENER CREATION 2"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Extraindo a ARN do load balancer $albName"
    # $lbArn = aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$albName'].LoadBalancerArn" --output text

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Extraindo a ARN do target group $tgName"
    # $tgArn = aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$tgName'].TargetGroupArn" --output text

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe um listener vinculando o target group $tgName ao load balancer $albName na porta $listenerPort2 do protocolo $listenerProtocol2"
    # if ((aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[?to_string(Port)=='$listenerPort2' && Protocol=='$listenerProtocol2' && DefaultActions[?TargetGroupArn=='$tgArn']].ListenerArn").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Já existe um listener vinculando o target group $tgName ao load balancer $albName na porta $listenerPort2 do protocolo $listenerProtocol2"
    #     aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[?to_string(Port)=='$listenerPort2' && Protocol=='$listenerProtocol2' && DefaultActions[?TargetGroupArn=='$tgArn']].ListenerArn" --output text
    # } else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os listeners do load balancer $albName"
    #     aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[].ListenerArn" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo a ARN do certificado $tgName"
    #     $certificateArn = aws acm list-certificates --query "CertificateSummaryList[?DomainName=='$fullDomainName'].CertificateArn" --output text
    
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Criando um listener para vincular o target group $tgName ao load balancer $albName na porta $listenerPort2 do protocolo $listenerProtocol2"
    #     aws elbv2 create-listener --load-balancer-arn $lbArn --protocol $listenerProtocol2 --port $listenerPort2 --default-actions "Type=forward,TargetGroupArn=$tgArn" --certificates CertificateArn=$certificateArn --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando o listener que vincula o target group $tgName ao load balancer $albName na porta $listenerPort2 do protocolo $listenerProtocol2"
    #     aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[?to_string(Port)=='$listenerPort2' && Protocol=='$listenerProtocol2' && DefaultActions[?TargetGroupArn=='$tgArn']].ListenerArn" --output text
    # }




    Write-Output "***********************************************"
    Write-Output "SERVIÇO: AWS EC2"
    Write-Output "EC2 MANIPULATION 4"

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Verificando se existe a instância $tagNameInstance"
    if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" "Name=instance-state-name,Values=running" --query "Reservations[].Instances[]").Count -gt 1) {       
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Extraindo o Id da instância de nome de tag $tagNameInstance"
        $instanceId1 = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tagNameInstance" --query "Reservations[].Instances[].InstanceId" --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Extraindo o DNS do load balancer $albName"
        $lbDNS = aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$albName'].DNSName" --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Exibindo o comando para acessar a instância"
        Write-Output "aws ssm start-session --target $instanceId1 --document-name AWS-StartInteractiveCommand --parameters command=`"bash -l`""

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Executando os comandos dentro da instância (Alterando o banco de dados para o RDS, criando o esquema do banco e depois, atualizando a aplicação e trocando a instância de desenvolvimento ($tagNameInstance) para a instância do cluster ($tagNameInstanceAsg))"
        $bashCommands = "sudo su ec2-user -c \`"
        echo -----//-----//-----//-----//-----//-----//-----
        echo Alterando para o diretorio do projeto
        cd /home/ec2-user/bia

        echo -----//-----//-----//-----//-----//-----//-----
        echo Realizando alteracao no Dockerfile trocando URL da API que a aplicacao React vai utilizar que agora sera o DNS do load balancer ao inves da Bia-Web
        sed -i 's#RUN REACT_APP_API_URL=http://${lbDNS}#RUN REACT_APP_API_URL=https://${siteName}#' /home/ec2-user/bia/Dockerfile
        # sed -i 's#RUN REACT_APP_API_URL=http://albTest1-1792066529.us-east-1.elb.amazonaws.com#RUN REACT_APP_API_URL=https://www.pedroheeger.dev.br#' /home/ec2-user/bia/Dockerfile

        echo -----//-----//-----//-----//-----//-----//-----
        echo Conectando o Docker ao repositorio do ECR
        aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $repositoryPath

        echo -----//-----//-----//-----//-----//-----//-----
        echo Realizando alteracao no arquivo Header.js para simular uma mudanca de versao da aplicacao web
        sed -i 's/Fechar/Close/' /home/ec2-user/bia/client/src/components/Header.js
        sed -i 's/red/black/' /home/ec2-user/bia/client/src/components/Header.js

        echo -----//-----//-----//-----//-----//-----//-----
        echo Executando o build da aplicacao
        docker build -t bia .

        echo -----//-----//-----//-----//-----//-----//-----
        echo Tagueando a imagem com o caminho para o repositorio
        docker tag bia:latest ${repositoryPath}/${repositoryName}:latest

        echo -----//-----//-----//-----//-----//-----//-----
        echo Enviando a imagem para o repositorio criado no ECR
        docker push ${repositoryPath}/${repositoryName}:latest

        echo -----//-----//-----//-----//-----//-----//-----
        echo Atualizando as tasks no cluster
        aws ecs update-service --cluster $clusterName --service $ecsServiceName  --force-new-deployment --no-cli-pager

        echo -----//-----//-----//-----//-----//-----//-----
        echo Aguardando 200 segundos para verificar a aplicacao...
        sleep 200
        \`""

        $bashCommands = $bashCommands -replace "\r", ""
        aws ssm start-session --target $instanceId1 --document-name AWS-StartInteractiveCommand --parameters "command=`"$bashCommands`""

    } else {"Não existe instâncias com o nome de tag $tagNameInstance"}


}