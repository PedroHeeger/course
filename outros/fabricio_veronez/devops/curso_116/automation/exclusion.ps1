Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\outros\fabricio_veronez\devops\curso_116\automation\variable.ps1"

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ETAPA 1 (AULAS 1, 2 E 3)"
$resposta = Read-Host "Deseja executar esta etapa? (y/n) "
if ($resposta.ToLower() -ne 'y') {
    Write-Host "Bloco de código não executado. Pulando para o próximo..."
} else {

    Write-Output "***********************************************"
    Write-Output "SERVIÇO: AWS EC2-VPC"
    Write-Output "SECURITY GROUP RULE EXCLUSION"

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
            Write-Output "Extraindo o Id do security group $sgName"
            $sgId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$sgName'].GroupId" --output text
   

            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Verificando se existe uma regra liberando a porta $port1 no security group $sgName"
            $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$port1' && to_string(ToPort)=='$port1' && CidrIpv4=='$cidrIpv4']"
            if (($existRule).Count -gt 1) {
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id de todas as regras de entrada do security group $sgName"
                aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text
    
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Removendo a regra de entrada do security group $sgName para liberação da porta $port1"
                aws ec2 revoke-security-group-ingress --group-id $sgId --protocol $protocol --port $port1 --cidr $cidrIpv4
    
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id de todas as regras de entrada do security group $sgName"
                aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

            } else {Write-Output "Não existe a regra de entrada liberando a porta $port1 no security group $sgName"}


            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Verificando se existe uma regra liberando a porta $port2 no security group $sgName"
            $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$port2' && to_string(ToPort)=='$port2' && CidrIpv4=='$cidrIpv4']"
            if (($existRule).Count -gt 1) {
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id de todas as regras de entrada do security group $sgName"
                aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text
    
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Removendo a regra de entrada do security group $sgName para liberação da porta $port2"
                aws ec2 revoke-security-group-ingress --group-id $sgId --protocol $protocol --port $port2 --cidr $cidrIpv4
    
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id de todas as regras de entrada do security group $sgName"
                aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

            } else {Write-Output "Não existe a regra de entrada liberando a porta $port2 no security group $sgName"}


            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Output "Verificando se existe uma regra liberando a porta $port3 no security group $sgName"
            $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$port3' && to_string(ToPort)=='$port3' && CidrIpv4=='$cidrIpv4']"
            if (($existRule).Count -gt 1) {
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id de todas as regras de entrada do security group $sgName"
                aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text
    
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Removendo a regra de entrada do security group $sgName para liberação da porta $port3"
                aws ec2 revoke-security-group-ingress --group-id $sgId --protocol $protocol --port $port3 --cidr $cidrIpv4
    
                Write-Output "-----//-----//-----//-----//-----//-----//-----"
                Write-Output "Listando o Id de todas as regras de entrada do security group $sgName"
                aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

            } else {Write-Output "Não existe a regra de entrada liberando a porta $port3 no security group $sgName"}
        } else {Write-Host "Não existe o security group $sgName"}
    } else {Write-Host "Não existe a VPC $vpcName"}



   
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




    Write-Output "***********************************************"
    Write-Output "SERVIÇO: AWS EC2"
    Write-Output "KEY PAIR EXCLUSION"

    Write-Output "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "Verificando se existe o par de chaves de nome $keyPairName"
    if ((aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$keyPairName']").Count -gt 1) {
        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando todos os pares de chaves criados"
        aws ec2 describe-key-pairs --query "KeyPairs[].KeyName" --output text

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Removendo o par de chaves criado de nome $keyPairName e os arquivos pem e ppk"
        aws ec2 delete-key-pair --key-name $keyPairName

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Verificando se existe o arquivo de par de chaves $keyPairName.pem"
        if (Test-Path "$keyPairPath\$keyPairName.pem" -PathType Leaf) {
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Host "Removendo o arquivo de par de chave $keyPairName.pem"
            Remove-Item "$keyPairPath\$keyPairName.pem"
        } else {Write-Host "Não existe o arquivo de par de chave $keyPairName.pem"}

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Verificando se existe o arquivo de par de chaves $keyPairName.ppk"
        if (Test-Path "$keyPairPath\$keyPairName.ppk" -PathType Leaf) {
            Write-Output "-----//-----//-----//-----//-----//-----//-----"
            Write-Host "Removendo o arquivo de par de chave $keyPairName.ppk"
            Remove-Item "$keyPairPath\$keyPairName.ppk"
        } else {Write-Host "Não existe o arquivo de par de chave $keyPairName.ppk"}

        Write-Output "-----//-----//-----//-----//-----//-----//-----"
        Write-Output "Listando todos os pares de chaves criados"
        aws ec2 describe-key-pairs --query "KeyPairs[].KeyName" --output text
    } else {Write-Output "Não existe o par de chaves de nome $keyPairName"}

}