Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\automation\variaveis.ps1"


"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS IAM"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "POLICY"
if ((aws iam list-attached-role-policies --role-name $role_name --query 'AttachedPolicies[].PolicyArn').Count -gt 1) {
    Write-Output "Desvinculando a política anexada da role criada"
    # aws iam detach-role-policy --role-name $role_name --policy-arn $policy_arn
} else {
    Write-Output "Não existe nenhuma política atrelada a essa role!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "INSTANCE PROFILE"
if ((aws iam list-instance-profiles-for-role --role-name $role_name --query "InstanceProfiles[?InstanceProfileName=='$instance_profile_name']").Count -gt 1) {
    Write-Output "Desvinvulando o perfil de instância da role determinada"
    # aws iam remove-role-from-instance-profile --instance-profile-name $instance_profile_name --role-name $role_name
} else {
    Write-Output "Não existe perfil de instância atrelado a essa role!"
}

if ((aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instance_profile_name']").Count -gt 1) {
    Write-Output "Removendo o perfil de instância criado"
    # aws iam delete-instance-profile --instance-profile-name $instance_profile_name
} else {
    Write-Output "Não existe esse perfil de instância!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ROLE"
if ((aws iam list-roles --query "Roles[?RoleName=='$role_name']").Count -gt 1) {
    Write-Output "Removendo a role criada"
    # aws iam delete-role --role-name $role_name
} else {
    Write-Output "Não existe essa role!"
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS EC2"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "KEY PAIR"
if ((aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$key_pair_name']").Count -gt 1) {
    # Write-Output "Removendo o par de chaves criado e os arquivos pem e ppk"
    # aws ec2 delete-key-pair --key-name $key_pair_name
    # rm "$key_pair_path\$key_pair_name.pem" && "$key_pair_path\$key_pair_name.ppk"
} else {
    Write-Output "Não existe esse par de chaves!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2)"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tag_name_instance" --query "Reservations[].Instances[]").Count -gt 1) {
    Write-Output "Removendo as instâncias criadas"
    # $instance_id1 = aws ec2 describe-instances --query "Reservations[0].Instances[].InstanceId" --output text
    # $instance_id2 = aws ec2 describe-instances --query "Reservations[1].Instances[].InstanceId" --output text
    # aws ec2 terminate-instances --instance-ids $instance_id1 $instance_id2
} else {
    Write-Output "Não existe instâncias com esses nomes de tag!"
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS VPC"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SECURITY GROUP"
if ((aws ec2 describe-security-groups --query "SecurityGroups[?Tags[?Key=='Name' && Value=='$tag_name_security_group']]").Count -gt 1) {
    Write-Output "Removendo o grupo de segurança padrão"
    # $security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[?Tags[?Key=='Name' && Value=='$tag_name_security_group']].GroupId" --output text
    # aws ec2 delete-security-group --group-id $security_group_id
} else {
    Write-Output "Não existe o grupo de segurança com esse nome de tag!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SUBNETS"
$vpc_id = aws ec2 describe-vpcs --query "Vpcs[].VpcId"
$subnets_length = aws ec2 describe-subnets --filters "Name=vpc-id,Values=$vpc_id" --query "length(Subnets)"
if (($subnets_length) -gt 0) {
    Write-Output "Removendo as sub-redes desta VPC"
    # for ($i = 0; $i -lt $subnets_length; $i++) {
    #     $subnet_id = aws ec2 describe-subnets --query "Subnets[$i].{ID:SubnetId}" --output text
    #     Write-Host "$subnet_id"
    #     aws ec2 delete-subnet --subnet-id $subnet_id
    # }   
} else {
    Write-Output "Não existem sub-redes nesta VPC!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ROUTE TABLE"
$vpc_id = aws ec2 describe-vpcs --query "Vpcs[].VpcId"
$route_table_id = aws ec2 describe-route-tables --filters "Name=vpc-id,Values=vpc-025923e032872abb8" --query "length(RouteTables[].RouteTableId)"
if (($route_table_id) -gt 0) {
    Write-Output "Removendo a tabela de rota desta VPC"
    # $route_table_id = aws ec2 describe-route-tables --filters "Name=vpc-id,Values=vpc-025923e032872abb8" --query "RouteTables[].RouteTableId"
    # aws ec2 delete-route-table --route-table-id $route_table_id
} else {
    Write-Output "Não existe tabela de rota nesta VPC!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS VIRTUAL PRIVATE CLOUD (VPC)"
$vpc_id = aws ec2 describe-vpcs --query "Vpcs[].VpcId"
if (($vpc_id).Count -gt 1) {
    Write-Output "Removendo a VPC padrão"
    # aws ec2 delete-vpc --vpc-id $vpc_id
} else {
    Write-Output "Não existe nenhuma VPC criada!"
}



# vpc-025923e032872abb8
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS RDS"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS RELATIONAL DATABASE SERVICE (RDS)"
if ((aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='$db_instance_identifier']").Count -gt 1) {
    Write-Output "Removendo a instância de banco de dados criada"
    # aws rds delete-db-instance --db-instance-identifier $db_instance_identifier  --skip-final-snapshot
} else {
    Write-Output "Não existe instância com esse nome de identificação!"
}










"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS ELB"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "TARGET GROUP"
$target_group_arn = aws elbv2 describe-target-groups --query "TargetGroups[].TargetGroupArn" --output text
if (($target_group_arn).Count -gt 1) {
    Write-Output "Removendo o grupo de destino criado"
    # aws elbv2 delete-target-group --target-group-arn $target_group_arn
} else {
    Write-Output "Não existe grupo de destino criado!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC LOAD BALANCER (ELB)"
$load_balancer_arn = aws elbv2 describe-load-balancers --query "LoadBalancers[].LoadBalancerArn" --output text
if (($load_balancer_arn).Count -gt 1) {
    $listener_arn = aws elbv2 describe-listeners --load-balancer-arn $load_balancer_arn --query "Listeners[].ListenerArn" --output text
    if (($listener_arn).Count -gt 1) {
        Write-Output "Removendo o Listener criado"
        # aws elbv2 delete-listener --listener-arn $listener_arn
    } else {
        Write-Output "Não existe Listener vinculado a esse Load Balancer!"
    }

    Write-Output "Removendo o Load Balancer criado"
    # aws elbv2 delete-load-balancer --load-balancer-arn $load_balancer_arn
} else {
    Write-Output "Não existe Load Balancer criado!"
}

