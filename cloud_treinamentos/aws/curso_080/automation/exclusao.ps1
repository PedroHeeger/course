Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\automation\variaveis.ps1"


"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS IAM"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ROLE"
if ((aws iam list-roles --query "Roles[?RoleName=='$role_name']").Count -gt 1) {
    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "ROLE - POLICY"
    if ((aws iam list-attached-role-policies --role-name $role_name --query 'AttachedPolicies[].PolicyArn').Count -gt 1) {
        Write-Output "Desvinculando a política de nome $policy_name anexada a role $role_name"
        aws iam detach-role-policy --role-name $role_name --policy-arn $policy_arn
    } else {
        Write-Output "Não existe nenhuma política atrelada a role $role_name!"
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "ROLE - INSTANCE PROFILE"
    if ((aws iam list-instance-profiles-for-role --role-name $role_name --query "InstanceProfiles[?InstanceProfileName=='$instance_profile_name']").Count -gt 1) {
        Write-Output "Desvinculando o perfil de instância $instance_profile_name da role $role_name"
        aws iam remove-role-from-instance-profile --instance-profile-name $instance_profile_name --role-name $role_name
    } else {
        Write-Output "Não existe perfil de instância atrelado a role $role_name!"
    }

    Write-Output "Removendo a role de nome $role_name"
    aws iam delete-role --role-name $role_name
} else {
    Write-Output "Não existe a role de nome $role_name!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "INSTANCE PROFILE"
if ((aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instance_profile_name']").Count -gt 1) {
    Write-Output "Removendo o perfil de instância de nome $instance_profile_name"
    aws iam delete-instance-profile --instance-profile-name $instance_profile_name
} else {
    Write-Output "Não existe o perfil de instância de nome $instance_profile_name!"
}


"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS EC2"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "KEY PAIR"
if ((aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$key_pair_name']").Count -gt 1) {
    Write-Output "Removendo o par de chaves criado de nome $key_pair_name e os arquivos pem e ppk"
    aws ec2 delete-key-pair --key-name $key_pair_name

    if (Test-Path "$key_pair_path\$key_pair_name.pem" -PathType Leaf) {
        Write-Host "Removendo o arquivo de par de chave $key_pair_name.pem"
        rm "$key_pair_path\$key_pair_name.pem"
    } else {
        Write-Host "Não existe o arquivo de par de chave $key_pair_name.pem"
    }
    if (Test-Path "$key_pair_path\$key_pair_name.ppk" -PathType Leaf) {
        Write-Host "Removendo o arquivo de par de chave $key_pair_name.ppk"
        rm "$key_pair_path\$key_pair_name.ppk"
    } else {
        Write-Host "Não existe o arquivo de par de chave $key_pair_name.ppk"
    }
} else {
    Write-Output "Não existe o par de chaves de $key_pair_name!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2)"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tag_name_instance" --query "Reservations[].Instances[]").Count -gt 1) {
    Write-Output "Removendo a instância criada de nome de tag $tag_name_instance"
    $instance_id1 = aws ec2 describe-instances --query "Reservations[0].Instances[].InstanceId" --output text
    $instance_id2 = aws ec2 describe-instances --query "Reservations[1].Instances[].InstanceId" --output text
    aws ec2 terminate-instances --instance-ids $instance_id1 $instance_id2
} else {
    Write-Output "Não existe instâncias com o nome de tag $tag_name_instance!"
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS VPC"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "INBOUND AND OUTBOUND RULES"
$security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
$exist_rule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$security_group_id' && !IsEgress && IpProtocol=='-1' && to_string(FromPort)=='-1' && to_string(ToPort)=='-1' && CidrIpv4=='0.0.0.0/0']"

if (($exist_rule).Count -gt 1) {
    Write-Output "Removendo a regra de entrada determinada no grupo de segurança padrão"
    aws ec2 revoke-security-group-ingress --group-id $security_group_id --protocol -1 --port -1 --cidr 0.0.0.0/0

    Write-Output "Listando as regras do grupo de segurança padrão"
    aws ec2 describe-security-group-rules
} else {
    Write-Output "O grupo de segurança padrão não possui essa regra de entrada!"
}

# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "SECURITY GROUP"
# if ((aws ec2 describe-security-groups --query "SecurityGroups[?Tags[?Key=='Name' && Value=='$tag_name_security_group']]").Count -gt 1) {
#     Write-Output "Removendo o grupo de segurança padrão de nome de tag $tag_name_security_group"
#     $security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[?Tags[?Key=='Name' && Value=='$tag_name_security_group']].GroupId" --output text
#     aws ec2 delete-security-group --group-id $security_group_id
# } else {
#     Write-Output "Não existe o grupo de segurança com o nome de tag $tag_name_security_group!"
# }

# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "SUBNETS"
# $vpc_id = aws ec2 describe-vpcs --query "Vpcs[].VpcId" --output text
# $subnets = aws ec2 describe-subnets --filters "Name=vpc-id,Values=$vpc_id" --query "Subnets[].SubnetId" --output text
# if ($subnets.Length -gt 0) {
#     Write-Output "Removendo as sub-redes da VPC padrão de Id $vpc_id"
#     # for ($i = 0; $i -lt $subnets_length; $i++) {
#     #     $subnet_id = aws ec2 describe-subnets --query "Subnets[$i].{ID:SubnetId}" --output text
#     #     Write-Host "$subnet_id"
#     #     aws ec2 delete-subnet --subnet-id $subnet_id
#     foreach ($subnet_id in $subnets) {
#         Write-Host "$subnet_id"
#         aws ec2 delete-subnet --subnet-id $subnet_id
#     }   
# } else {
#     Write-Output "Não existem sub-redes na VPC padrão de Id $vpc_id!"
# }

# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "ROUTE TABLE"
# $vpc_id = aws ec2 describe-vpcs --query "Vpcs[].VpcId" --output text
# $route_table_id = aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpc_id" --query "length(RouteTables[].RouteTableId)"
# if (($route_table_id) -gt 0) {
#     Write-Output "Removendo a tabela de rota da VPC padrão de Id $vpc_id"
#     $route_table_id = aws ec2 describe-route-tables --filters "Name=vpc-id,Values=$vpc_id" --query "RouteTables[].RouteTableId" --output text
#     aws ec2 delete-route-table --route-table-id $route_table_id
# } else {
#     Write-Output "Não existe tabela de rota na VPC padrão de Id $vpc_id!"
# }

# "-----//-----//-----//-----//-----//-----//-----"
# Write-Output "AWS VIRTUAL PRIVATE CLOUD (VPC)"
# $vpc_id = aws ec2 describe-vpcs --query "Vpcs[].VpcId" --output text
# if (($vpc_id).Count -gt 0) {
#     Write-Output "Removendo a VPC padrão de Id $vpc_id"
#     aws ec2 delete-vpc --vpc-id $vpc_id
# } else {
#     Write-Output "Não existe nenhuma VPC criada!"
# }




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS RDS"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS RELATIONAL DATABASE SERVICE (RDS)"
if ((aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='$db_instance_identifier']").Count -gt 1) {
    Write-Output "Removendo a instância de banco de dados de nome de identificação $db_instance_identifier"
    aws rds delete-db-instance --db-instance-identifier $db_instance_identifier  --skip-final-snapshot --no-cli-pager
} else {
    Write-Output "Não existe instância com o nome de identificação $db_instance_identifier!"
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS S3"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS SIMPLE STORAGE SERVICE (S3)"
if ((aws s3api list-buckets --query "Buckets[?Name=='$bucket_name']").Count -gt 1) {
    # Write-Output "Removendo os objetos existentes no bucket de nome $bucket_name"
    # aws s3 rm s3://$bucket_name --recursive

    Write-Output "Removendo o bucket de nome $bucket_name e todos os seus objetos"
    aws s3 rb s3://$bucket_name --force
} else {
    Write-Output "Não existe um bucket com o nome $bucket_name!"
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS IAM"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "IAM USER"
if ((aws iam list-users --query "Users[?UserName=='$iam_username'].UserName").Count -gt 1) {
    if (aws iam list-attached-user-policies --user-name $iam_username --query "AttachedPolicies[].PolicyName") {
        Write-Output "Removendo a política $policy2_name do usuário do IAM de nome $iam_username"
        aws iam detach-user-policy --user-name $iam_username --policy-arn $policy2_arn
    } else {
        Write-Output "O usuário do IAM de nome $iam_username não possui políticas atrelada a ele!"
    }

    if ((aws iam list-access-keys --user-name $iam_username --query "AccessKeyMetadata[].AccessKeyId").Count -gt 1) {
        Write-Host "Removendo o par de chave do usuário do IAM $iam_username"
        $access_key_id = aws iam list-access-keys --user-name $iam_username --query "AccessKeyMetadata[].AccessKeyId" --output text
        aws iam delete-access-key --user-name $iam_username --access-key-id $access_key_id
    } else {
        Write-Host "Não existe este par de chave do usuário do IAM $iam_username"
    }

    if (Test-Path "$keyPair_iamUser_path\$keyPair_iamUser_file" -PathType Leaf) {
        Write-Host "Removendo o arquivo de par de chave do usuário do IAM $keyPair_iamUser_file"
        rm "$keyPair_iamUser_path\$keyPair_iamUser_file"
    } else {
        Write-Host "Não existe o arquivo de par de chave do usuário do IAM $keyPair_iamUser_file"
    }

    Write-Output "Removendo o usuário do IAM de nome $iam_username"
    aws iam delete-user --user-name $iam_username
} else {
    Write-Output "Não existe um usuário do IAM de nome $iam_username"
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS EC2"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "IMAGE"
if ((aws ec2 describe-images --owners self --query "Images[?Name=='$img_name']").Count -gt 1) {
    Write-Output "Removendo a imagem com o nome de imagem $img_name"
    $image_id = aws ec2 describe-images --owners self --query "Images[?Name=='$img_name'].ImageId" --output text
    aws ec2 deregister-image --image-id $image_id
} else {
    Write-Output "Não existe uma imagem com o nome de imagem $img_name!"
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS ELB"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC LOAD BALANCER (ELB)"
$load_balancer_arn = aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='curso080lb'].LoadBalancerArn" --output text
if (($load_balancer_arn).Count -gt 0) {
    $listener_arn = aws elbv2 describe-listeners --load-balancer-arn $load_balancer_arn --query "Listeners[].ListenerArn" --output text
    if (($listener_arn).Count -gt 1) {
        Write-Output "Removendo o Listener de ARN $listener_arn"
        aws elbv2 delete-listener --listener-arn $listener_arn
    } else {
        Write-Output "Não existe Listener vinculado a esse Load Balancer!"
    }

    Write-Output "Removendo o Load Balancer de ARN $load_balancer_arn"
    aws elbv2 delete-load-balancer --load-balancer-arn $load_balancer_arn
} else {
    Write-Output "Não existe Load Balancer criado!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "TARGET GROUP"
$target_group_arn = aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$target_group'].TargetGroupArn" --output text
if (($target_group_arn).Count -gt 0) {
    Write-Output "Removendo o grupo de destino de ARN $target_group_arn"
    aws elbv2 delete-target-group --target-group-arn $target_group_arn
} else {
    Write-Output "Não existe grupo de destino criado!"
}