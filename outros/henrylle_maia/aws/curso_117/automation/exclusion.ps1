Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\outros\henrylle_maia\aws\curso_117\automation\variable.ps1"

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ETAPA 1 (AULA 1)"
$resposta = Read-Host "Deseja executar esta etapa? (y/n) "
if ($resposta.ToLower() -ne 'y') {
    Write-Host "Bloco de código não executado. Pulando para o próximo..."
} else {

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
    # Write-Output "SERVIÇO: AWS IAM"
    # Write-Output "IAM INSTANCE PROFILE EXCLUSION AND REMOVE ROLE"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o perfil de instância de nome $instanceProfileName"
    # if ((aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instanceProfileName'].InstanceProfileName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os perfis de instância existentes"
    #     aws iam list-instance-profiles --query 'InstanceProfiles[].InstanceProfileName' --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo a role $roleName1 do perfil de instância de nome $instanceProfileName"
    #     aws iam remove-role-from-instance-profile --instance-profile-name $instanceProfileName --role-name $roleName1

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo o perfil de instância de nome $instanceProfileName"
    #     aws iam delete-instance-profile --instance-profile-name $instanceProfileName

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os perfis de instância existentes"
    #     aws iam list-instance-profiles --query 'InstanceProfiles[].InstanceProfileName' --output text
    # } else {Write-Output "Não existe o perfil de instância de nome $instanceProfileName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS IAM"
    # Write-Output "IAM ROLE REMOVE POLICY 1"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a policy $policyName1_1 anexada a role de nome $roleName1"
    # if ((aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[?PolicyName=='$policyName1_1'].PolicyName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as polices anexadas a role de nome $roleName1"
    #     aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[].PolicyName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o ARN da policy $policyName1_1"
    #     $policyArn = aws iam list-policies --query "Policies[?PolicyName=='$policyName1_1'].[Arn]" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo a policy $policyName1_1 da role de nome $roleName1"
    #     aws iam detach-role-policy --role-name $roleName1 --policy-arn $policyArn

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as polices anexadas a role de nome $roleName1"
    #     aws iam list-attached-role-policies --role-name $roleName1 --query "AttachedPolicies[].PolicyName" --output text
    # } else {Write-Output "Não existe a policy $policyName1_1 anexada a role de nome $roleName1"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS IAM"
    # Write-Output "IAM ROLE SERVICE EXCLUSION 1"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a role de nome $roleName1"
    # if ((aws iam list-roles --query "Roles[?RoleName=='$roleName1'].RoleName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as roles criadas"
    #     aws iam list-roles --query 'Roles[].RoleName' --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Obtendo a lista de ARNs de policies anexadas à role de nome $roleName1"
    #     $attachedPolicies = aws iam list-attached-role-policies --role-name $roleName1 --query 'AttachedPolicies[*].PolicyArn' --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se a lista de ARNs de policies anexadas à role de nome $roleName1 está vazia"
    #     if ($null -ne $attachedPolicies -and $attachedPolicies -ne "") {
    #       Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #       Write-Output "Iterando na lista de policies"
    #       foreach ($policyArn in $attachedPolicies.Split()) {
    #           if ($policyArn -ne "") {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Extraindo o nome da policy vinculada a role"
    #             $policyName = aws iam list-policies --query "Policies[?Arn=='$policyArn'].PolicyName" --output text

    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Removendo a policy $policyName da role de nome $roleName1"
    #             aws iam detach-role-policy --role-name $roleName1 --policy-arn $policyArn
    #           }
    #       }
    #     } else {Write-Output "Não existe policies anexadas à role de nome $roleName1"}

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo a role de nome $roleName1"
    #     aws iam delete-role --role-name $roleName1

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as roles criadas"
    #     aws iam list-roles --query 'Roles[].RoleName' --output text
    # } else {Write-Output "Não existe a role de nome $roleName1"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-VPC"
    # Write-Output "SECURITY GROUP RULE EXCLUSION 1"

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
    #     Write-Output "Verificando se existe o security group $sgName1 na VPC $vpcName"
    #     if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName1" --query "SecurityGroups[].GroupName").Count -gt 1) {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo o Id do security group $sgName1"
    #         $sgId = aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='$sgName1'].GroupId" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Verificando se existe uma regra liberando a porta $port1 no security group $sgName1"
    #         $existRule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$sgId' && !IsEgress && IpProtocol=='$protocol' && to_string(FromPort)=='$port1' && to_string(ToPort)=='$port1' && CidrIpv4=='$cidrIpv4']"
    #         if (($existRule).Count -gt 1) {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando o Id de todas as regras de entrada do security group $sgName1"
    #             aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Removendo a regra de entrada do security group $sgName1 para liberação da porta $port1"
    #             aws ec2 revoke-security-group-ingress --group-id $sgId --protocol $protocol --port $port1 --cidr $cidrIpv4

    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando o Id de todas as regras de entrada do security group $sgName1"
    #             aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$sgId" --query "SecurityGroupRules[?!IsEgress].SecurityGroupRuleId" --output text

    #         } else {Write-Output "Não existe a regra de entrada liberando a porta $port1 no security group $sgName1"}
    #     } else {Write-Host "Não existe o security group $sgName1"}
    # } else {Write-Host "Não existe a VPC $vpcName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-VPC"
    # Write-Output "SECURITY GROUP EXCLUSION 1"

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
    #     Write-Output "Verificando se existe o security group de nome $sgName1 na VPC $vpcName"
    #     if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName1" --query "SecurityGroups[].GroupName").Count -gt 1) {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando todos os security groups criados na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].GroupName" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo o Id do security group de nome $sgName1 da VPC $vpcName"
    #         $sgId = aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName1" --query "SecurityGroups[].GroupId" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Removendo o security group de nome $sgName1 da VPC $vpcName"
    #         aws ec2 delete-security-group --group-id $sgId

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando todos os security groups criados na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].GroupName" --output text
    #     } else {Write-Host "Não existe o security group de nome $sgName1 na VPC $vpcName"}
    # } else {Write-Host "Não existe a VPC $vpcName"}


}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ETAPA 2 (AULA 2)"
$resposta = Read-Host "Deseja executar esta etapa? (y/n) "
if ($resposta.ToLower() -ne 'y') {
    Write-Host "Bloco de código não executado. Pulando para o próximo..."
} else {

    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-ELB"
    # Write-Output "LISTENER EXCLUSION 2"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Extraindo a ARN do load balancer $albName"
    # $lbArn = aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$albName'].LoadBalancerArn" --output text

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Extraindo a ARN do target group $tgName"
    # $tgArn = aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$tgName'].TargetGroupArn" --output text

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe um listener vinculando o target group $tgName ao load balancer $albName na porta $listenerPort2 do protocolo $listenerProtocol"
    # if ((aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[?to_string(Port)=='$listenerPort2' && Protocol=='$listenerProtocol' && DefaultActions[?TargetGroupArn=='$tgArn']].ListenerArn").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os listeners do load balancer $albName"
    #     aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[].ListenerArn" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo a ARN do listener que vincula o target group $tgName ao load balancer $albName na porta $listenerPort2 do protocolo $listenerProtocol"
    #     $listenerArn = aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[?to_string(Port)=='$listenerPort2' && Protocol=='$listenerProtocol' && DefaultActions[?TargetGroupArn=='$tgArn']].ListenerArn" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo listener que vincula o target group $tgName ao load balancer $albName na porta $listenerPort2 do protocolo $listenerProtocol"
    #     aws elbv2 delete-listener --listener-arn $listenerArn

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os listeners do load balancer $albName"
    #     aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[].ListenerArn" --output text
    # } else {Write-Output "Não existe um listener que vincula o target group $tgName ao load balancer $albName na porta $listenerPort2 do protocolo $listenerProtocol"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AMAZON ROUTE 53"
    # Write-Output "RECORD LOAD BALANCER-HOSTED ZONE EXCLUSION"

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
    #         Write-Output "Listando todos os registros da hosted zone $hostedZoneName"
    #         aws route53 list-resource-record-sets --hosted-zone-id $hostedZoneId --query "ResourceRecordSets[].Name" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Removendo o registro de nome $resourceRecordName2 na hosted zone $hostedZoneName"
    #         aws route53 change-resource-record-sets --hosted-zone-id $hostedZoneId --change-batch "{
    #             `"Changes`": [
    #             {
    #                 `"Action`": `"DELETE`",
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
    #         Write-Output "Listando todos os registros da hosted zone $hostedZoneName"
    #         aws route53 list-resource-record-sets --hosted-zone-id $hostedZoneId --query "ResourceRecordSets[].Name" --output text

    #     } else {Write-Output "Não existe o registro de nome $resourceRecordName2 na hosted zone $hostedZoneName"}    
    # } else {Write-Output "Não existe a hosted zone $hostedZoneName"}




    # # Write-Output "***********************************************"
    # # Write-Output "SERVIÇO: AMAZON ROUTE 53"
    # # Write-Output "RECORD ACM CERTIFICATE-HOSTED ZONE EXCLUSION"

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
    # #         Write-Output "Listando todos os registros da hosted zone $hostedZoneName"
    # #         aws route53 list-resource-record-sets --hosted-zone-id $hostedZoneId --query "ResourceRecordSets[].Name" --output text

    # #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #         Write-Output "Removendo o registro de nome $resourceRecordName na hosted zone $hostedZoneName"
    # #         aws route53 change-resource-record-sets --hosted-zone-id $hostedZoneId --change-batch "{
    # #             `"Changes`": [
    # #             {
    # #                 `"Action`": `"DELETE`",
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
    # #         Write-Output "Listando todos os registros da hosted zone $hostedZoneName"
    # #         aws route53 list-resource-record-sets --hosted-zone-id $hostedZoneId --query "ResourceRecordSets[].Name" --output text

    # #     } else {Write-Output "Não existe o registro de nome $resourceRecordName na hosted zone $hostedZoneName"}    
    # # } else {Write-Output "Não existe a hosted zone $hostedZoneName"}




    # # Write-Output "***********************************************"
    # # Write-Output "SERVIÇO: AWS ACM"
    # # Write-Output "CERTIFICATE EXCLUSION"

    # # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # # Write-Output "Verificando se existe um certificado para o domínio de nome $fullDomainName"
    # # if ((aws acm list-certificates --query "CertificateSummaryList[?DomainName=='$fullDomainName'].DomainName").Count -gt 1) {
    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Listando os nomes de domínio de todos certificados existentes"
    # #     aws acm list-certificates --query "CertificateSummaryList[].DomainName" --output text

    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Extraindo o ARN do certificado para o domínio de nome $fullDomainName"
    # #     $certificateArn = aws acm list-certificates --query "CertificateSummaryList[?DomainName=='$fullDomainName'].CertificateArn" --output text

    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Removendo o certificado para o domínio de nome $fullDomainName"
    # #     aws acm delete-certificate --certificate-arn $certificateArn
    # #     Start-Sleep 5

    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Listando os nomes de domínio de todos certificados existentes"
    # #     aws acm list-certificates --query "CertificateSummaryList[].DomainName" --output text
    # # } else {Write-Output "Não existe o certificado para o domínio de nome $fullDomainName"}




    # # Write-Output "***********************************************"
    # # Write-Output "SERVIÇO: AMAZON ROUTE 53"
    # # Write-Output "HOSTED ZONE EXCLUSION"

    # # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # # Write-Output "Verificando se existe a hosted zone de nome $hostedZoneName"
    # # if ((aws route53 list-hosted-zones --query "HostedZones[?Name=='$hostedZoneName'].Name").Count -gt 1) {
    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Listando todas as hosted zones existentes"
    # #     aws route53 list-hosted-zones --query "HostedZones[].Name" --output text

    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Extraindo o Id da hosted zone de nome $hostedZoneName"
    # #     $hostedZoneId = aws route53 list-hosted-zones --query "HostedZones[?Name=='$hostedZoneName'].Id" --output text

    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Removendo a hosted zone de nome $hostedZoneName"
    # #     aws route53 delete-hosted-zone --id $hostedZoneId

    # #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # #     Write-Output "Listando todas as hosted zones existentes"
    # #     aws route53 list-hosted-zones --query "HostedZones[].Name" --output text
    # # } else {Write-Output "Não existe a hosted zone de nome $hostedZoneName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS ECS"
    # Write-Output "SERVICE EC2 EXCLUSION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o cluster de nome $clusterName"
    # if ((aws ecs describe-services --cluster $clusterName --services $ecsServiceName --query "services[].serviceName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando as ARNs de todos os serviços criados no $clusterName"
    #     aws ecs list-services --cluster $clusterName --query "serviceArns" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Atualizando a quantidade desejada de tarefas do serviço de nome $ecsServiceName para 0"
    #     aws ecs update-service --cluster $clusterName --service $ecsServiceName --desired-count 0 --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo o serviço de nome $ecsServiceName do cluster $clusterName"
    #     aws ecs delete-service --cluster $clusterName --service $ecsServiceName --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando as ARNs de todos os serviços criados no $clusterName"
    #     aws ecs list-services --cluster $clusterName --query "serviceArns" --output text
    # } else {Write-Output "Não existe o cluster de nome $clusterName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS ECS"
    # Write-Output "TASK EC2 EXCLUSION"

    # Write-Output "Verificando se a definição de tarefa está vazia (Ignorando erro)..."
    # $erro = "ClientException"
    # if ((aws ecs describe-task-definition --task-definition ${taskName}:${revision} --query "taskDefinition.revision" 2>&1) -match $erro)
    # {Write-Output "Não existe a definição de tarefa de nome $taskName na revisão $revision"}
    # else {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se existe a definição de tarefa de nome $taskName na revisão $revision"
    #     if ((aws ecs describe-task-definition --task-definition ${taskName}:${revision} --query "taskDefinition.status" --output text) -eq "ACTIVE") {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando as ARNs das revisões da definição de tarefa ativas de nome $taskName"
    #         aws ecs list-task-definitions --family-prefix $taskName --query taskDefinitionArns[] --output text
    
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando as ARNs das revisões da definição de tarefa inativas de nome $taskName"
    #         aws ecs list-task-definitions --family-prefix $taskName --status INACTIVE --query taskDefinitionArns[] --output text
    
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Removendo o registro da definição de tarefa de nome $taskName na revisão $revision"
    #         aws ecs deregister-task-definition --task-definition ${taskName}:${revision} --no-cli-pager
    
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Removendo a definição de tarefa de nome $taskName na revisão $revision"
    #         aws ecs delete-task-definitions --task-definition ${taskName}:${revision} --no-cli-pager
    
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando as ARNs das revisões da definição de tarefa ativas de nome $taskName"
    #         aws ecs list-task-definitions --family-prefix $taskName --query taskDefinitionArns[] --output text
    
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando as ARNs das revisões da definição de tarefa inativas de nome $taskName"
    #         aws ecs list-task-definitions --family-prefix $taskName --status INACTIVE --query taskDefinitionArns[] --output text
    #     } else {Write-Output "Não existe a definição de tarefa de nome $taskName na revisão $revision"}
    # }




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS IAM"
    # Write-Output "IAM ROLE REMOVE POLICY 3.1"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a policy $policyName3_1 anexada a role de nome $roleName3"
    # if ((aws iam list-attached-role-policies --role-name $roleName3 --query "AttachedPolicies[?PolicyName=='$policyName3_1'].PolicyName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as polices anexadas a role de nome $roleName3"
    #     aws iam list-attached-role-policies --role-name $roleName3 --query "AttachedPolicies[].PolicyName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o ARN da policy $policyName3_1"
    #     $policyArn = aws iam list-policies --query "Policies[?PolicyName=='$policyName3_1'].[Arn]" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo a policy $policyName3_1 da role de nome $roleName3"
    #     aws iam detach-role-policy --role-name $roleName3 --policy-arn $policyArn

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as polices anexadas a role de nome $roleName3"
    #     aws iam list-attached-role-policies --role-name $roleName3 --query "AttachedPolicies[].PolicyName" --output text
    # } else {Write-Output "Não existe a policy $policyName3_1 anexada a role de nome $roleName3"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS IAM"
    # Write-Output "IAM ROLE SERVICE EXCLUSION 3"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a role de nome $roleName3"
    # if ((aws iam list-roles --query "Roles[?RoleName=='$roleName3'].RoleName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as roles criadas"
    #     aws iam list-roles --query 'Roles[].RoleName' --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Obtendo a lista de ARNs de policies anexadas à role de nome $roleName3"
    #     $attachedPolicies = aws iam list-attached-role-policies --role-name $roleName3 --query 'AttachedPolicies[*].PolicyArn' --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se a lista de ARNs de policies anexadas à role de nome $roleName3 está vazia"
    #     if ($null -ne $attachedPolicies -and $attachedPolicies -ne "") {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Iterando na lista de policies"
    #     foreach ($policyArn in $attachedPolicies.Split("`n")) {
    #         if ($policyArn -ne "") {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Extraindo o nome da policy vinculada a role"
    #             $policyName = aws iam list-policies --query "Policies[?Arn=='$policyArn'].PolicyName" --output text

    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Removendo a policy $policyName da role de nome $roleName3"
    #             aws iam detach-role-policy --role-name $roleName3 --policy-arn $policyArn
    #         }
    #     }
    #     } else {Write-Output "Não existe policies anexadas à role de nome $roleName3"}

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo a role de nome $roleName3"
    #     aws iam delete-role --role-name $roleName3

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as roles criadas"
    #     aws iam list-roles --query 'Roles[].RoleName' --output text
    # } else {Write-Output "Não existe a role de nome $roleName3"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-AUTO SCALING"
    # Write-Output "AUTO SCALING GROUP EXCLUSION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o auto scaling group de nome $asgName"
    # if ((aws autoscaling describe-auto-scaling-groups --query "AutoScalingGroups[?AutoScalingGroupName=='$asgName'].AutoScalingGroupName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os grupos de auto scaling existentes"
    #     aws autoscaling describe-auto-scaling-groups --query "AutoScalingGroups[].AutoScalingGroupName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo o auto scaling group de nome $asgName"
    #     aws autoscaling delete-auto-scaling-group --auto-scaling-group-name $asgName --force-delete

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os grupos de auto scaling existentes"
    #     aws autoscaling describe-auto-scaling-groups --query "AutoScalingGroups[].AutoScalingGroupName" --output text
    # } else {Write-Output "Não existe o auto scaling group de nome $asgName"}


    # Write-Output "Aguardando 120 segundos para que as instâncias sejam removidas"
    # Start-Sleep -Seconds 120


    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS ECS"
    # Write-Output "CLUSTER EC2 EXCLUSION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o cluster de nome $clusterName"
    # if ((aws ecs list-clusters --query "clusterArns[?contains(@, '${clusterArn}')]").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando as ARNs de todos os clusters criados"
    #     aws ecs list-clusters --query clusterArns[] --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo o cluster de nome $clusterName"
    #     aws ecs delete-cluster --cluster $clusterName --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando as ARNs de todos os clusters criados"
    #     aws ecs list-clusters --query clusterArns[] --output text
    # } else {Write-Output "Não existe o cluster de nome $clusterName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS ECS"
    # Write-Output "CAPACITY PROVIDER EXCLUSION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o fornecedor de capacidade de nome $capacityProviderName"
    # if ((aws ecs describe-capacity-providers --query "capacityProviders[?name=='$capacityProviderName'].name").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os fornecedores de capacidade existentes"
    #     aws ecs describe-capacity-providers --query "capacityProviders[].name[]" --output text

    #     # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     # Write-Output "Removendo o fornecedor de capacidade de nome $capacityProviderName do cluster $clusterName"
    #     # aws ecs put-cluster-capacity-providers --cluster cluster_name --capacity-providers

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo o fornecedor de capacidade de nome $capacityProviderName"
    #     aws ecs delete-capacity-provider --capacity-provider $capacityProviderName --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os fornecedores de capacidade existentes"
    #     aws ecs describe-capacity-providers --query "capacityProviders[].name[]" --output text
    # } else {Write-Output "Não existe o fornecedor de capacidade de nome $capacityProviderName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2"
    # Write-Output "LAUNCH TEMPLATE EXCLUSION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o modelo de implantação de nome $launchTempName"
    # if ((aws ec2 describe-launch-templates --query "LaunchTemplates[?LaunchTemplateName=='$launchTempName'].LaunchTemplateName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os modelos de implantação existentes e sua versão padrão"
    #     aws ec2 describe-launch-templates --query 'LaunchTemplates[].[LaunchTemplateName,DefaultVersionNumber]' --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se existe o modelo de implantação de nome $launchTempName na versão $versionNumber"
    #     if ((aws ec2 describe-launch-template-versions --launch-template-name $launchTempName --query "LaunchTemplateVersions[?to_string(VersionNumber)=='$versionNumber'].VersionNumber").Count -gt 1) {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando todas as versões do modelo de implantação de nome $launchTempName"
    #         aws ec2 describe-launch-template-versions --launch-template-name $launchTempName --query "LaunchTemplateVersions[].[LaunchTemplateName,VersionNumber]" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo a versão padrão do modelo de implantação de nome $launchTempName"
    #         $defaultVersion = aws ec2 describe-launch-templates --query "LaunchTemplates[?LaunchTemplateName=='$launchTempName'].DefaultVersionNumber" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Verificando se a versão escolhida é a versão padrão do modelo de implantação de nome $launchTempName"
    #         if ($versionNumber -eq $defaultVersion) {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Removendo o modelo de implantação de nome $launchTempName por completo"
    #             aws ec2 delete-launch-template --launch-template-name $launchTempName

    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando todos os modelos de implantação existentes"
    #             aws ec2 describe-launch-templates --query 'LaunchTemplates[].[LaunchTemplateName,DefaultVersionNumber]' --output text
    #         } else {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Removendo o modelo de implantação de nome $launchTempName na versão $versionNumber"
    #             aws ec2 delete-launch-template-versions --launch-template-name $launchTempName --versions $versionNumber

    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Listando todas as versões do modelo de implantação de nome $launchTempName"
    #             aws ec2 describe-launch-template-versions --launch-template-name $launchTempName --query "LaunchTemplateVersions[].[LaunchTemplateName,VersionNumber]" --output text
    #         }
    #     } else {Write-Output "Não existe o modelo de implantação de nome $launchTempName na versão $versionNumber"}
    # } else {Write-Output "Não existe o modelo de implantação de nome $launchTempName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS IAM"
    # Write-Output "IAM INSTANCE PROFILE EXCLUSION AND REMOVE ROLE 2"
    
    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o perfil de instância de nome $instanceProfileName2"
    # if ((aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instanceProfileName2'].InstanceProfileName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os perfis de instância existentes"
    #     aws iam list-instance-profiles --query 'InstanceProfiles[].InstanceProfileName' --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo a role $roleName2 do perfil de instância de nome $instanceProfileName2"
    #     aws iam remove-role-from-instance-profile --instance-profile-name $instanceProfileName2 --role-name $roleName2

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo o perfil de instância de nome $instanceProfileName2"
    #     aws iam delete-instance-profile --instance-profile-name $instanceProfileName2

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os perfis de instância existentes"
    #     aws iam list-instance-profiles --query 'InstanceProfiles[].InstanceProfileName' --output text
    # } else {Write-Output "Não existe o perfil de instância de nome $instanceProfileName2"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS IAM"
    # Write-Output "IAM ROLE REMOVE POLICY 2.1"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a policy $policyName2_1 anexada a role de nome $roleName2"
    # if ((aws iam list-attached-role-policies --role-name $roleName2 --query "AttachedPolicies[?PolicyName=='$policyName2_1'].PolicyName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as polices anexadas a role de nome $roleName2"
    #     aws iam list-attached-role-policies --role-name $roleName2 --query "AttachedPolicies[].PolicyName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo o ARN da policy $policyName2_1"
    #     $policyArn = aws iam list-policies --query "Policies[?PolicyName=='$policyName2_1'].[Arn]" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo a policy $policyName2_1 da role de nome $roleName2"
    #     aws iam detach-role-policy --role-name $roleName2 --policy-arn $policyArn

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as polices anexadas a role de nome $roleName2"
    #     aws iam list-attached-role-policies --role-name $roleName2 --query "AttachedPolicies[].PolicyName" --output text
    # } else {Write-Output "Não existe a policy $policyName2_1 anexada a role de nome $roleName2"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS IAM"
    # Write-Output "IAM ROLE EXCLUSION 2"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a role de nome $roleName2"
    # if ((aws iam list-roles --query "Roles[?RoleName=='$roleName2'].RoleName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as roles criadas"
    #     aws iam list-roles --query 'Roles[].RoleName' --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Obtendo a lista de ARNs de policies anexadas à role de nome $roleName2"
    #     $attachedPolicies = aws iam list-attached-role-policies --role-name $roleName2 --query 'AttachedPolicies[*].PolicyArn' --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se a lista de ARNs de policies anexadas à role de nome $roleName2 está vazia"
    #     if ($null -ne $attachedPolicies -and $attachedPolicies -ne "") {
    #       Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #       Write-Output "Iterando na lista de policies"
    #       foreach ($policyArn in $attachedPolicies.Split("`n")) {
    #           if ($policyArn -ne "") {
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Extraindo o nome da policy vinculada a role"
    #             $policyName = aws iam list-policies --query "Policies[?Arn=='$policyArn'].PolicyName" --output text

    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Removendo a policy $policyName da role de nome $roleName2"
    #             aws iam detach-role-policy --role-name $roleName2 --policy-arn $policyArn
    #           }
    #       }
    #     } else {Write-Output "Não existe policies anexadas à role de nome $roleName2"}

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo a role de nome $roleName2"
    #     aws iam delete-role --role-name $roleName2

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as roles criadas"
    #     aws iam list-roles --query 'Roles[].RoleName' --output text
    # } else {Write-Output "Não existe a role de nome $roleName2"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-ELB"
    # Write-Output "LISTENER EXCLUSION 1"

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
    #     Write-Output "Listando todos os listeners do load balancer $albName"
    #     aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[].ListenerArn" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo a ARN do listener que vincula o target group $tgName ao load balancer $albName na porta $listenerPort1 do protocolo $listenerProtocol"
    #     $listenerArn = aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[?to_string(Port)=='$listenerPort1' && Protocol=='$listenerProtocol' && DefaultActions[?TargetGroupArn=='$tgArn']].ListenerArn" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo listener que vincula o target group $tgName ao load balancer $albName na porta $listenerPort1 do protocolo $listenerProtocol"
    #     aws elbv2 delete-listener --listener-arn $listenerArn

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os listeners do load balancer $albName"
    #     aws elbv2 describe-listeners --load-balancer-arn $lbArn --query "Listeners[].ListenerArn" --output text
    # } else {Write-Output "Não existe um listener que vincula o target group $tgName ao load balancer $albName na porta $listenerPort1 do protocolo $listenerProtocol"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-ELB"
    # Write-Output "TARGET GROUP EXCLUSION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o target group de nome $tgName"
    # if ((aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$tgName'].TargetGroupName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os target groups criados"
    #     aws elbv2 describe-target-groups --query "TargetGroups[].TargetGroupName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo a ARN do target group de nome $tgName"
    #     $tgArn = aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$tgName'].TargetGroupArn" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo o target group de nome $tgName"
    #     aws elbv2 delete-target-group --target-group-arn $tgArn

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os target groups criados"
    #     aws elbv2 describe-target-groups --query "TargetGroups[].TargetGroupName" --output text
    # } else {Write-Output "Não existe o target group de nome $tgName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-ELB"
    # Write-Output "APPLICATION LOAD BALANCER (ALB) EXCLUSION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o load balancer de nome $albName"
    # if ((aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$albName'].LoadBalancerName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os load balancers criados"
    #     aws elbv2 describe-load-balancers --query "LoadBalancers[].LoadBalancerName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Extraindo a ARN do load balancer de nome $tgName"
    #     $lbArn = aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$albName'].LoadBalancerArn" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo o load balancer de nome $albName"
    #     aws elbv2 delete-load-balancer --load-balancer-arn $lbArn

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os load balancers criados"
    #     aws elbv2 describe-load-balancers --query "LoadBalancers[].LoadBalancerName" --output text
    # } else {Write-Output "Não existe o load balancer de nome $albName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS ECR"
    # Write-Output "IMAGE EXCLUSION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe a imagem de tag $imageTag do repositório $repositoryName"
    # if ((aws ecr describe-images --repository-name $repositoryName --query "imageDetails[?contains(imageTags, '$imageTag')].imageTags").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as imagens do repositório $repositoryName"
    #     aws ecr describe-images --repository-name $repositoryName --query "imageDetails[].imageTags" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo a imagem de tag $imageTag do repositório $repositoryName"
    #     aws ecr batch-delete-image --repository-name $repositoryName --image-ids imageTag=$imageTag

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as imagens do repositório $repositoryName"
    #     aws ecr describe-images --repository-name $repositoryName --query "imageDetails[].imageTags" --output text
    # } else {Write-Output "Não existe a imagem de tag $imageTag do repositório $repositoryName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS ECR"
    # Write-Output "REPOSITORY EXCLUSION"

    # Write-Output "-----//-----//-----//-----//-----//-----//-----"
    # Write-Output "Verificando se existe o repositório de nome $repositoryName"
    # if ((aws ecr describe-repositories --query "repositories[?repositoryName=='$repositoryName'].repositoryName").Count -gt 1) {
    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os repositórios criados"
    #     aws ecr describe-repositories --query "repositories[].repositoryName" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se existe imagens no repositório de nome $repositoryName"
    #     if ((aws ecr list-images --repository-name $repositoryName --query "imageIds[].imageDigest").Count -gt 1) {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Obtendo a lista de Ids das imagens do repositório de nome $repositoryName"
    #         $imageIds = aws ecr list-images --repository-name $repositoryName --query "imageIds[].imageDigest" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Iterando na lista de imagens"
    #         foreach ($imageId in $imageIds.Split()) {
    #             if ($imageId -ne "") { 
    #             Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #             Write-Output "Removendo a imagem de Id $imageId do repositório de nome $repositoryName"
    #             aws ecr batch-delete-image --repository-name $repositoryName --image-ids imageDigest=$imageDigest
    #             }
    #         }
    #     } else {Write-Output "Não existe imagens no repositório $repositoryName"}

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo o repositório de nome $repositoryName"
    #     aws ecr delete-repository --repository-name $repositoryName

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todos os repositórios criados"
    #     aws ecr describe-repositories --query "repositories[].repositoryName" --output text
    # } else {Write-Output "Não existe o repositório de nome $repositoryName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS RDS"
    # Write-Output "DB EXCLUSION"

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
    #     Write-Output "Listando todas as instâncias de banco criadas"
    #     aws rds describe-db-instances --query "DBInstances[].DBInstanceIdentifier" --output text

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Removendo a instância de banco de nome $dbInstanceName"
    #     aws rds delete-db-instance --db-instance-identifier $dbInstanceName --skip-final-snapshot --delete-automated-backups --no-cli-pager

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Listando todas as instâncias de banco criadas"
    #     aws rds describe-db-instances --query "DBInstances[].DBInstanceIdentifier" --output text
    # } else {Write-Output "Não existe a instância de banco de nome $dbInstanceName"}




    # Write-Output "***********************************************"
    # Write-Output "SERVIÇO: AWS EC2-VPC"
    # Write-Output "SECURITY GROUP EXCLUSION 2, 3 E 4"

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
    #         Write-Output "Listando todos os security groups criados na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].GroupName" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo o Id do security group de nome $sgName3 da VPC $vpcName"
    #         $sgId = aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName3" --query "SecurityGroups[].GroupId" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Removendo o security group de nome $sgName3 da VPC $vpcName"
    #         aws ec2 delete-security-group --group-id $sgId

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando todos os security groups criados na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].GroupName" --output text
    #     } else {Write-Host "Não existe o security group de nome $sgName3 na VPC $vpcName"}

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se existe o security group de nome $sgName2 na VPC $vpcName"
    #     if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName2" --query "SecurityGroups[].GroupName").Count -gt 1) {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando todos os security groups criados na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].GroupName" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo o Id do security group de nome $sgName2 da VPC $vpcName"
    #         $sgId = aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName2" --query "SecurityGroups[].GroupId" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Removendo o security group de nome $sgName2 da VPC $vpcName"
    #         aws ec2 delete-security-group --group-id $sgId

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando todos os security groups criados na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].GroupName" --output text
    #     } else {Write-Host "Não existe o security group de nome $sgName2 na VPC $vpcName"}

    #     Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #     Write-Output "Verificando se existe o security group de nome $sgName4 na VPC $vpcName"
    #     if ((aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName4" --query "SecurityGroups[].GroupName").Count -gt 1) {
    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando todos os security groups criados na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].GroupName" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Extraindo o Id do security group de nome $sgName4 da VPC $vpcName"
    #         $sgId = aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" "Name=group-name,Values=$sgName4" --query "SecurityGroups[].GroupId" --output text

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Removendo o security group de nome $sgName4 da VPC $vpcName"
    #         aws ec2 delete-security-group --group-id $sgId

    #         Write-Output "-----//-----//-----//-----//-----//-----//-----"
    #         Write-Output "Listando todos os security groups criados na VPC $vpcName"
    #         aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpcId" --query "SecurityGroups[].GroupName" --output text
    #     } else {Write-Host "Não existe o security group de nome $sgName4 na VPC $vpcName"}
    # } else {Write-Host "Não existe a VPC $vpcName"}


}