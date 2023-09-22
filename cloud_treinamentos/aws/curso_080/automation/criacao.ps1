Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\automation\variaveis.ps1"

# Write-Output "Exibindo o usuário da conta AWS cadastrado no AWS CLI"
# aws sts get-caller-identity

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS IAM"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ROLES"
if ((aws iam list-roles --query "Roles[?RoleName=='$role_name']").Count -gt 1) {
    Write-Output "A role $role_name já existe!"
    aws iam list-roles --query "Roles[?RoleName=='$role_name'].RoleName" --output text
} else {
    Write-Output "Listando o nome das roles criadas"
    aws iam list-roles --query 'Roles[].RoleName' --output text

    Write-Output "Criando a role $role_name a partir de arquivo de policy no formato JSON"
    aws iam create-role --role-name $role_name --assume-role-policy-document "file://$policy1_path\$policy1_file"

    Write-Output "Listando o nome das roles criadas"
    aws iam list-roles --query 'Roles[].RoleName' --output text

    Write-Output "Listando apenas a role criada"
    aws iam list-roles --query "Roles[?RoleName=='$role_name']"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "INSTANCE PROFILE"
if ((aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instance_profile_name'].InstanceProfileName").Count -gt 1) {
    Write-Output "O perfil de instância $instance_profile_name já existe!"
    aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instance_profile_name'].InstanceProfileName" --output text
} else {
    Write-Output "Listando o nome dos perfis de instância criados"
    aws iam list-instance-profiles --query 'InstanceProfiles[].InstanceProfileName' --output text

    Write-Output "Criando um perfil de instância como mesmo nome da role $role_name"
    aws iam create-instance-profile --instance-profile-name $instance_profile_name

    Write-Output "Listando o nome do perfil de instância criado"
    aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instance_profile_name'].InstanceProfileName" --output text
}

if ((aws iam list-roles --query "Roles[?RoleName=='$role_name']").Count -gt 1) {
    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "INSTANCE PROFILE - ROLE"
    if ((aws iam list-instance-profiles-for-role --role-name $role_name --query "InstanceProfiles[?InstanceProfileName=='$instance_profile_name']").Count -gt 1) {
        Write-Output "O perfil de instância informado já está anexado a role $role_name!"
        aws iam list-instance-profiles-for-role --role-name Ec2S3Read --query "InstanceProfiles[?InstanceProfileName=='Ec2S3Read'].{InstanceProfileName: InstanceProfileName, RoleName: Roles[].RoleName}"
    } else {
        Write-Output "Anexando o perfil de instância a role $role_name"
        aws iam add-role-to-instance-profile --instance-profile-name $instance_profile_name --role-name $role_name

        Write-Output "Listando os perfis de instância anexado a role $role_name"
        aws iam list-instance-profiles-for-role --role-name $role_name
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "POLICY - ROLE"
    if ((aws iam list-attached-role-policies --role-name Ec2S3Read --query "AttachedPolicies[?PolicyName=='$policy_name']").Count -gt 1) {
        Write-Output "Esta policy já foi atribuída a role $role_name!"
        aws iam list-attached-role-policies --role-name Ec2S3Read --query "AttachedPolicies[?PolicyName=='$policy_name'].PolicyName" --output text
    } else {
        Write-Output "Listando todas as polices anexadas a role $role_name"
        aws iam list-attached-role-policies --role-name $role_name --query 'AttachedPolicies[].PolicyName' --output text

        Write-Output "Anexando a police existente ($policy_name) a role $role_name"
        aws iam attach-role-policy --role-name $role_name --policy-arn $policy_arn

        Write-Output "Listando todas as polices anexadas a role $role_name"
        aws iam list-attached-role-policies --role-name $role_name --query 'AttachedPolicies[].PolicyName' --output text
    }
} else {
    Write-Output "Para vincular o perfil de instância e a política é necessário criar a role!"
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS EC2"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "KEY PAIR"
if ((aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$key_pair_name']").Count -gt 1) {
    Write-Output "O par de chaves $key_pair_name já foi criado!"
    aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$key_pair_name'].KeyName" --output text
} else {
    Write-Output "Listando todos os pares de chaves criados"
    aws ec2 describe-key-pairs --query "KeyPairs[*].KeyName" --output text

    Write-Output "Criando o par de chaves $key_pair_name"
    $key_pair_name = "remoteAccessEc2"
    $key_pair_path = "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\secrets"
    aws ec2 create-key-pair --key-name $key_pair_name --query 'KeyMaterial' --output text > "$key_pair_path\$key_pair_name.pem"

    Write-Output "Listando apenas o par de chave $key_pair_name"
    aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$key_pair_name'].KeyName" --output text
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2)"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tag_name_instance" --query "Reservations[].Instances[]").Count -gt 1) {
    Write-Output "Já existe uma instância EC2 com esse nome de tag $tag_name_instance!"
    # aws ec2 describe-instances --filters "Name=tag:Name,Values=$tag_name_instance" --query "Reservations[].Instances[]"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name' && Value=='$tag_name_instance'].Value" --output text

    Write-Output "Listando o IP público de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
} else {
    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "Criando a primeira instância EC2 de nome de tag $tag_name_instance"
    $security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
    $subnet_id = aws ec2 describe-subnets --query "Subnets[?AvailabilityZone=='$availability_zone'].SubnetId" --output text

    aws ec2 run-instances --image-id $image_id --instance-type t2.micro --key-name $key_pair_name --security-group-ids $security_group_id --subnet-id $subnet_id --count 1 --iam-instance-profile Name=$instance_profile_name --user-data "file://$user_data_path\$user_data_file" --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$tag_name_instance}]" --no-cli-pager

    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "Listando o IP público de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
}

# "-----//-----//-----//-----//-----//-----//-----"
## NÃO USAR
# Write-Output "SECURITY GROUP"
# if ((aws ec2 describe-security-groups --query "SecurityGroups[?Tags[?Key=='Name' && Value=='$tag_name_security_group']]").Count -gt 1) {
#     Write-Output "Já existe um grupo de segurança com esse nome de tag!"
#     aws ec2 describe-security-groups --query "SecurityGroups[?Tags[?Key=='Name' && Value=='$tag_name_security_group']]" --output text
# } else {
#     Write-Output "Listando o nome da tag de todos os grupos de segurança criado"
#     # aws ec2 describe-security-groups --query "SecurityGroups[].Tags[?Key=='Name'].Value" --output text

#     # Write-Output "Criando um nome da tag para o grupo de segurança padrão"
#     # $security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
#     # aws ec2 create-tags --resources $security_group_id --tags Key=Name,Value=$tag_name_security_group

#     # Write-Output "Listando o nome da tag de todos os grupos de segurança criado"
#     # aws ec2 describe-security-groups --query "SecurityGroups[].Tags[?Key=='Name'].Value" --output text
# }

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "INBOUND AND OUTBOUND RULES"
$security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
$exist_rule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$security_group_id' && !IsEgress && IpProtocol=='-1' && to_string(FromPort)=='-1' && to_string(ToPort)=='-1' && CidrIpv4=='0.0.0.0/0']"

if (($exist_rule).Count -gt 1) {
    Write-Output "Já existe a regra de entrada determinada no grupo de segurança padrão!"
    $exist_rule
} else {
    Write-Output "Listando o Id de todas as regras de entrada e saída do grupo de segurança padrão"
    aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$security_group_id" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text

    Write-Output "Adicionando uma regra de entrada ao grupo de segurança para liberação do protocolo TCP"
    aws ec2 authorize-security-group-ingress --group-id $security_group_id --protocol -1 --port -1 --cidr 0.0.0.0/0
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "TAGS"
Write-Output "Listando o nome de todas as tags criadas"
aws ec2 describe-tags --query "Tags[].Value" --output text




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS RDS"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS RELATIONAL DATABASE SERVICE (RDS)"
if ((aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='$db_instance_identifier']").Count -gt 1) {
    Write-Output "Já existe uma instância de RDS com a identificação $db_instance_identifier!"
    aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='$db_instance_identifier'].DBInstanceIdentifier" --output text

    Write-Output "Listando o endpoint da instância de banco de dados $db_instance_identifier"
    aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='$db_instance_identifier'].Endpoint[].Address" --output text
} else {
    Write-Output "Listando o nome de identificação de todas as instâncias de RDS criadas"
    aws rds describe-db-instances --query "DBInstances[].DBInstanceIdentifier" --output text

    Write-Output "Criando a instância de RDS de engine $engine e versão $engine_version"
    aws rds create-db-instance --db-instance-identifier $db_instance_identifier --db-instance-class db.t2.micro --engine $engine --engine-version $engine_version --master-username $db_master_username  --master-user-password $db_master_user_password --allocated-storage 20 --storage-type gp2 --db-name $db_name --availability-zone $availability_zone --no-cli-pager

    Write-Output "Listando o endpoint da instância de banco de dados $db_instance_identifier"
    aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='$db_instance_identifier'].Endpoint[].Address" --output text
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS S3"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS SIMPLE STORAGE SERVICE (S3)"
if ((aws s3api list-buckets --query "Buckets[?Name=='$bucket_name']").Count -gt 1) {
    Write-Output "Já existe um bucket com o nome $bucket_name!"
    aws s3api list-buckets --query "Buckets[?Name=='$bucket_name'].Name" --output text
} else {
    Write-Output "Listando todos os buckets existentes"
    aws s3api list-buckets --query "Buckets[].Name" --output text

    Write-Output "Criando um bucket de nome $bucket_name na região $region já com as configurações de ACL definidas"
    aws s3api create-bucket --bucket $bucket_name --region $region --object-ownership BucketOwnerPreferred --acl bucket-owner-full-control

    ## Write-Output "Criando um bucket de nome $bucket_name na região $region sem as configurações de ACL definidas"
    ## aws s3api create-bucket --bucket $bucket_name --region $region

    Write-Output "Listando todos os buckets existentes"
    aws s3api list-buckets --query "Buckets[].Name" --output text

    Write-Output "Listando o bucket $bucket_name"
    aws s3api list-buckets --query "Buckets[?Name=='$bucket_name']"
}

if ((aws s3api list-buckets --query "Buckets[?Name=='$bucket_name']").Count -gt 1) {
    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "PUBLIC ACCESS BLOCK CONFIGURATION"
    $public_access = aws s3api get-public-access-block --bucket $bucket_name --query "PublicAccessBlockConfiguration.{BlockPublicAcls: !BlockPublicAcls, IgnorePublicAcl: !IgnorePublicAcls, BlockPublicPolicy: !BlockPublicPolicy, RestrictPublicBuckets: !RestrictPublicBuckets}"
    if (($public_access).Count -gt 1) {
        Write-Output "Já existe esta configuração de bloqueio de acesso público definida para o bucket $bucket_name!"
        aws s3api get-public-access-block --bucket $bucket_name
    } else {
        Write-Output "Configurando os bloqueios de acesso público como Falso para o bucket $bucket_name"
        aws s3api put-public-access-block --bucket $bucket_name --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false"

        Write-Output "Listando as configurações de bloqueio de acesso público do bucket $bucket_name"
        aws s3api get-public-access-block --bucket $bucket_name
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "OWNERSHIP CONTROLS"
    $ownership_controls = aws s3api get-bucket-ownership-controls --bucket $bucket_name --query "OwnershipControls.{Rules: Rules[?ObjectOwnership=='BucketOwnerPreferred']}"
    if (($ownership_controls).Count -gt 1) {
        Write-Output "A propriedade do objeto já está definida como proprietário do bucket preferencial/proprietário do bucket preferido!"
        aws s3api get-bucket-ownership-controls --bucket $bucket_name --query "OwnershipControls.{ObjectOwnership: Rules[].ObjectOwnership}"
    } else {
        Write-Output "Alterando a proriedade do objeto do bucket $bucket_name de proprietário do bucket aplicado/imposto pelo proprietário (Bucket Owner Enforced) para proprietário do bucket preferencial/proprietário do bucket preferido (Bucket Owner Preferred)"
        aws s3api put-bucket-ownership-controls --bucket $bucket_name --ownership-controls="Rules=[{ObjectOwnership=BucketOwnerPreferred}]"

        Write-Output "Listando a proriedade do objeto do bucket"
        aws s3api get-bucket-ownership-controls --bucket $bucket_name
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "ACCESS CONTROL LIST (ACL)"
    $acl = aws s3api get-bucket-acl --bucket $bucket_name --query "Grants[?Permission=='FULL_CONTROL']"
    if (($acl).Count -gt 1) {
        Write-Output "A lista de controle de acesso (ACL) já possui definida a permissão FULL_CONTROL para o proprietárioo do bucket $bucket_name!"
        aws s3api get-bucket-acl --bucket $bucket_name --query "Grants[?Permission=='FULL_CONTROL'].Permission" --output text
    } else {
        Write-Output "Alterando a lista de controle de acesso (ACL) para permitir FULL_CONTROL ao proprietárioo do bucket $bucket_name"
        aws s3api put-bucket-acl --bucket $bucket_name --acl bucket-owner-full-control

        Write-Output "Listando a configuração da lista de controle de acesso (ACL)"
        aws s3api get-bucket-acl --bucket armazenamentos3 --query "Grants[?Permission=='FULL_CONTROL']"
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "STATIC SITE"
    try {
        $null = aws s3api get-bucket-website --bucket $bucket_name 2>$null
        $consultaBemSucedida = 2
    }
    catch {
        $consultaBemSucedida = 0
    }

    if ($consultaBemSucedida -gt 1) {
        Write-Output "Já existe uma definição de site estático para o bucket $bucket_name!"
        aws s3api get-bucket-website --bucket $bucket_name
    } else {
        Write-Output "Criando a configuração de site estático para o bucket $bucket_name"
        aws s3 website s3://$bucket_name --index-document $index_document --error-document $error_document

        Write-Output "Exibindo a configuração de site estático do bucket $bucket_name"
        aws s3api get-bucket-website --bucket $bucket_name
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "BUCKET POLICY"
    try {
        $null = aws s3api get-bucket-policy --bucket $bucket_name 2>$null
        $consultaBemSucedida = 2
    }
    catch {
        $consultaBemSucedida = 0
    }

    if ($consultaBemSucedida -gt 1) {
        Write-Output "Já existe uma política definida para o bucket $bucket_name!"
        aws s3api get-bucket-policy --bucket $bucket_name
    } else {
        Write-Output "Criando uma política para o bucket $bucket_name"
        aws s3api put-bucket-policy --bucket $bucket_name --policy "file://$policy_bucket_path\$policy_bucket"

        Write-Output "Exibindo a política criada pora o bucket $bucket_name"
        aws s3api get-bucket-policy --bucket $bucket_name
    }
} else {
    Write-Output "Não existe o bucket $bucket_name para realizar essas configurações!"
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS IAM"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "IAM USER"
if ((aws iam list-users --query "Users[?UserName=='$iam_username'].UserName").Count -gt 1) {
    Write-Output "Já existe um usuário do IAM com esse nome!"
    aws iam list-users --query "Users[?UserName=='$iam_username'].UserName" --output text
} else {
    Write-Output "Listando todos usuários do IAM criados"
    aws iam list-users --query "Users[].UserName" --output text

    Write-Output "Criando o usuário do IAM $iam_username"
    aws iam create-user --user-name $iam_username

    Write-Output "Listando o usuário do IAM criado"
    aws iam list-users --query "Users[?UserName=='$iam_username'].UserName" --output text
}

if ((aws iam list-users --query "Users[?UserName=='$iam_username'].UserName").Count -gt 1) {
    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "ACCESS KEY - IAM USER"
    if ((aws iam list-access-keys --user-name $iam_username --query "AccessKeyMetadata[?Status=='Active']").Count -gt 1) {
        Write-Output "Já existe uma chave de acesso ativa para o usuário do IAM com esse nome!"
        aws iam list-access-keys --user-name $iam_username --query "AccessKeyMetadata[?Status=='Active']"
    } else {
        Write-Output "Criando uma chave de acesso para o usuário do IAM $iam_username e armazenando em um arquivo CSV"
        aws iam create-access-key --user-name $iam_username --query 'AccessKey.[AccessKeyId,SecretAccessKey]' --output text > "$keyPair_iamUser_path\$keyPair_iamUser_file"

        Write-Output "Exibindo a chave de acesso ativa para o usuário do IAM com esse nome"
        aws iam list-access-keys --user-name $iam_username --query "AccessKeyMetadata[?Status=='Active']"
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "POLICY - IAM USER"
    if ((aws iam list-attached-user-policies --user-name $iam_username --query "AttachedPolicies[?PolicyName=='$policy2_name'].PolicyName").Count -gt 1) {
        Write-Output "Já existe a política $policy2_name atribuída ao usuário do IAM $iam_username"
        aws iam list-attached-user-policies --user-name $iam_username --query "AttachedPolicies[?PolicyName=='$policy2_name'].PolicyName" --output text
    } else {
        Write-Output "Atribuindo a política $policy2_name para o usuário do IAM $iam_username"
        aws iam attach-user-policy --user-name $iam_username --policy-arn $policy2_arn

        Write-Output "Listando todas as políticas atribuídas ao usuário do IAM $iam_username"
        aws iam list-attached-user-policies --user-name JoaoNinguem
    }
} else {
    Write-Output "Não existe o usuário do IAM $iam_username para executar essas configurações!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ARQUIVO: webScraping1.ps1"
if ((aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='banco' && DBInstanceStatus=='available']").Count -gt 1) {
    if ((aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name' && Value=='$tag_name_instance']").Count -gt 1) {
        Write-Output "Executando Web Scraping com o arquivo webScraping1"
        & "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\automation\webScraping1.ps1"
    } else {
        Write-Output "A instância EC2 $tag_name_instance ainda não foi criada!"
    }
} else {
    Write-Output "A instância de banco de dados $db_instance_identifier ainda não foi criada!"
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS EC2"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "CREATE IMAGE"
if ((aws ec2 describe-images --owners self --query "Images[?Name=='$img_name']").Count -gt 1) {
    Write-Output "Já existe uma imagem de instância com o nome de imagem $img_name!"
    aws ec2 describe-images --owners self --query "Images[?Name=='$img_name'].Name" --output text
} else {
    Write-Output "Exibindo todas as imanges criadas"
    aws ec2 describe-images --owners self --query "Images[].Name" --output text

    Write-Output "Criando a imagem da instância de nome de tag $tag_name_instance"
    $instance_id = aws ec2 describe-instances --filters "Name=tag:Name,Values=$tag_name_instance" --query "Reservations[].Instances[].InstanceId" --output text
    aws ec2 create-image --instance-id $instance_id --name $img_name --tag-specifications "ResourceType=image,Tags=[{Key=Name,Value=$img_name}]"

    Write-Output "Exibindo o nome da imagem criada"
    aws ec2 describe-images --owners self --query "Images[?Name=='$img_name'].Name" --output text

    Write-Output "Exibindo o nome da tag da imagem criada"
    aws ec2 describe-images --owners self --query "Images[].Tags[?Key=='Name' && Value=='$img_name'].Value" --output text
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2)"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tag_name_instance2" --query "Reservations[].Instances[]").Count -gt 1) {
    Write-Output "Já existe uma instância EC2 com o nome de tag $tag_name_instance2!"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name' && Value=='$tag_name_instance2'].Value" --output text

    Write-Output "Listando o IP público de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text    
} else {
    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "Criando a segunda instância EC2 de nome de tag $tag_name_instance2"
    $security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
    $subnet_id = aws ec2 describe-subnets --query "Subnets[?AvailabilityZone=='$availability_zone2'].SubnetId" --output text
    $image_id = aws ec2 describe-images --owners self --query "Images[?Name=='$img_name'].ImageId" --output text

    aws ec2 run-instances --image-id $image_id --instance-type t2.micro --key-name $key_pair_name --security-group-ids $security_group_id --subnet-id $subnet_id --count 1 --iam-instance-profile Name=$instance_profile_name --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$tag_name_instance2}]" --no-cli-pager

    Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    Write-Output "Listando o IP público de todas as instâncias EC2 criadas"
    aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS APPLICATION LOAD BALANCER (ALB)"
if ((aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$load_balancer']").Count -gt 1) {
    Write-Output "Já existe um Load Balancer com o nome $load_balancer!"
    aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$load_balancer'].LoadBalancerName" --output text
} else {
    Write-Output "Listando todos os Load Balancers criados"
    aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$load_balancer'].LoadBalancerName"

    Write-Output "Criando o Load Balancer de nome $load_balancer"
    $vpc_id = aws ec2 describe-vpcs --query "Vpcs[].VpcId" --output text
    $security_group_id = aws ec2 describe-security-groups --filters "Name=vpc-id,Values=$vpc_id" --query "SecurityGroups[].GroupId" --output text
    $subnets_length = aws ec2 describe-subnets --filters "Name=vpc-id,Values=$vpc_id" --query "length(Subnets[].SubnetId)"
    for ($i = 0; $i -lt $subnets_length; $i++) {
        $subnet_id1 = aws ec2 describe-subnets --query "Subnets[0].{ID:SubnetId}" --output text
        $subnet_id2 = aws ec2 describe-subnets --query "Subnets[1].{ID:SubnetId}" --output text
        $subnet_id3 = aws ec2 describe-subnets --query "Subnets[2].{ID:SubnetId}" --output text
        $subnet_id4 = aws ec2 describe-subnets --query "Subnets[3].{ID:SubnetId}" --output text
        $subnet_id5 = aws ec2 describe-subnets --query "Subnets[4].{ID:SubnetId}" --output text
        $subnet_id6 = aws ec2 describe-subnets --query "Subnets[5].{ID:SubnetId}" --output text
    }

    aws elbv2 create-load-balancer --name $load_balancer --scheme internet-facing --ip-address-type ipv4 --subnets $subnet_id1 $subnet_id2 $subnet_id3 $subnet_id4 $subnet_id5 $subnet_id6 --security-groups $security_group_id --no-cli-pager

    Write-Output "Listando o Load Balancer criado"
    aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$load_balancer'].LoadBalancerName" --output text
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "TARGET GROUP"
if ((aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$target_group']").Count -gt 1) {
    Write-Output "Já existe o Target Group com o nome $target_group!"
    aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$target_group'].TargetGroupName" --output text
} else {
    Write-Output "Listando todos os Target Groups criados"
    aws elbv2 describe-target-groups --query "TargetGroups[].TargetGroupName"

    Write-Output "Criando o Target Group de nome $target_group"
    $vpc_id = aws ec2 describe-vpcs --query "Vpcs[].VpcId" --output text

    aws elbv2 create-target-group --name $target_group --target-type instance --protocol HTTP --protocol-version HTTP1 --port 80 --vpc-id $vpc_id --health-check-protocol HTTP --health-check-port 80 --health-check-path /health --healthy-threshold 3 --unhealthy-threshold 2 --health-check-timeout-seconds 3 --health-check-interval-seconds 30 --matcher "HttpCode=200-299"

    Write-Output "Listando o Target Group criado"
    aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$target_group'].TargetGroupName" --output text
}

$load_balancer_condition = (aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$load_balancer']").Count -gt 1 || (aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$target_group']").Count -gt 1
if ($load_balancer_condition) {
    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "TARGET GROUP - INSTANCE"
    $target_group_arn = aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$target_group'].TargetGroupArn" --output text
    if ((aws elbv2 describe-target-health --target-group-arn $target_group_arn --query "TargetHealthDescriptions[]").Count -gt 1) {
        Write-Output "Já existem instâncias EC2 vinculadas a esse Target Group com o nome $target_group!"
        aws elbv2 describe-target-health --target-group-arn $target_group_arn
    } else {
        Write-Output "Listando as instâncias EC2 vinculada ao Target Group criado"
        aws elbv2 describe-target-health --target-group-arn $target_group_arn

        Write-Output "Criando o Target Group de nome $target_group"
        $instance_id1 = aws ec2 describe-instances --query "Reservations[0].Instances[].InstanceId" --output text
        $instance_id2 = aws ec2 describe-instances --query "Reservations[1].Instances[].InstanceId" --output text
        aws elbv2 register-targets --target-group-arn $target_group_arn --targets Id=$instance_id1 Id=$instance_id2

        Write-Output "Listando as instâncias EC2 vinculada ao Target Group criado"
        aws elbv2 describe-target-health --target-group-arn $target_group_arn
    }

    "-----//-----//-----//-----//-----//-----//-----"
    Write-Output "LISTENER"
    $target_group_arn = aws elbv2 describe-target-groups --query "TargetGroups[?TargetGroupName=='$target_group'].TargetGroupArn" --output text
    $load_balancer_arn = aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$load_balancer'].LoadBalancerArn" --output text
    if ((aws elbv2 describe-listeners --load-balancer-arn $load_balancer_arn --query "Listeners[]").Count -gt 1) {
        Write-Output "Já existe um Listener configurado para o Load Balancer $load_balancer!"
        aws elbv2 describe-listeners --load-balancer-arn $load_balancer_arn --query "Listeners[].ListenerArn" --output text

        Write-Output "Exibindo o DNS do Load Balancer $load_balancer"
        aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$load_balancer'].DNSName" --output text
    } else {
        Write-Output "Listando os Listener do Load Balancer $load_balancer"
        aws elbv2 describe-listeners --load-balancer-arn $load_balancer_arn

        Write-Output "Criando um Listener para o Load Balancer $load_balancer"
        aws elbv2 create-listener --load-balancer-arn $load_balancer_arn --protocol HTTP --port 80 --default-actions "Type=forward,TargetGroupArn=$target_group_arn"

        Write-Output "Listando os Listener do Load Balancer $load_balancer"
        aws elbv2 describe-listeners --load-balancer-arn $load_balancer_arn

        Write-Output "Exibindo o DNS do Load Balancer $load_balancer"
        aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$load_balancer'].DNSName" --output text
    }
} else {
    Write-Output "Não foi criado o Load Balancer $load_balancer e nem o Target Group $target_group!"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ARQUIVO: webScraping2.ps1"
if ((aws elbv2 describe-load-balancers --query "LoadBalancers[?LoadBalancerName=='$load_balancer'].DNSName" --output text).Count -gt 0) {
    Write-Output "Executando Web Scraping com o arquivo webScraping2"
    & "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\automation\webScraping2.ps1"
} else {
    Write-Output "O Load Balancer não foi criado ou não possui um DNSName!"
}