Write-Output "Importando o arquivo com as variáveis"
. "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\automation\variaveis.ps1"


# Write-Output "Exibindo o usuário da conta AWS cadastrado no AWS CLI"
# aws sts get-caller-identity

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS IAM"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "ROLES"
if ((aws iam list-roles --query "Roles[?RoleName=='$role_name']").Count -gt 1) {
    Write-Output "A role informada já existe!"
} else {
    Write-Output "Listando o nome das roles criadas"
    aws iam list-roles --query 'Roles[].RoleName' --output text

    Write-Output "Criando a role a partir de arquivo de policy no formato JSON"
    aws iam create-role --role-name $role_name --assume-role-policy-document "file://$policy1_path\$policy1_file"

    Write-Output "Listando o nome das roles criadas"
    aws iam list-roles --query 'Roles[].RoleName' --output text

    Write-Output "Listando apenas a role criada"
    aws iam list-roles --query "Roles[?RoleName=='$role_name']"
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "INSTANCE PROFILE"
if ((aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instance_profile_name'].InstanceProfileName").Count -gt 1) {
    Write-Output "O perfil de instância informado já existe!"
} else {
    Write-Output "Listando o nome dos perfis de instância criados"
    aws iam list-instance-profiles --query 'InstanceProfiles[].InstanceProfileName' --output text

    Write-Output "Criando um perfil de instância como mesmo nome da role"
    aws iam create-instance-profile --instance-profile-name $instance_profile_name

    Write-Output "Listando o nome do perfil de instância criado"
    aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instance_profile_name'].InstanceProfileName" --output text
}

if ((aws iam list-instance-profiles-for-role --role-name $role_name --query "InstanceProfiles[?InstanceProfileName=='$instance_profile_name']").Count -gt 1) {
    Write-Output "O perfil de instância informado já está anexado a role informada!"
} else {
    Write-Output "Anexando o perfil de instância a role criada"
    aws iam add-role-to-instance-profile --instance-profile-name $instance_profile_name --role-name $role_name

    Write-Output "Listando os perfis de instância anexado a role criada"
    aws iam list-instance-profiles-for-role --role-name $role_name
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "POLICES"
if ((aws iam list-attached-role-policies --role-name Ec2S3Read --query "AttachedPolicies[?PolicyName=='$policy_name']").Count -gt 1) {
    Write-Output "Esta policy já foi atribuída a role determinada!"
} else {
    Write-Output "Listando todas as polices anexadas a role criada"
    aws iam list-attached-role-policies --role-name $role_name --query 'AttachedPolicies[].PolicyName' --output text

    Write-Output "Anexando uma police existente (AmazonS3ReadOnlyAccess) a uma role"
    
    aws iam attach-role-policy --role-name $role_name --policy-arn $policy_arn

    Write-Output "Listando todas as polices anexadas a role criada"
    aws iam list-attached-role-policies --role-name $role_name --query 'AttachedPolicies[].PolicyName' --output text
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS EC2"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "KEY PAIR"
if ((aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$key_pair_name']").Count -gt 1) {
    Write-Output "Este par de chaves já foi criado!"
} else {
    Write-Output "Listando todos os pares de chaves criados"
    # aws ec2 describe-key-pairs --query "KeyPairs[*].KeyName" --output text

    # Write-Output "Criando um par de chaves"
    # $key_pair_name = "remoteAccessEc2"
    # $key_pair_path = "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\secrets"
    # aws ec2 create-key-pair --key-name $key_pair_name --query 'KeyMaterial' --output text > "$key_pair_path\$key_pair_name.pem"

    # Write-Output "Listando apenas o par de chave criado"
    # aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$key_pair_name'].KeyName" --output text
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS ELASTIC COMPUTE CLOUD (EC2)"
if ((aws ec2 describe-instances --filters "Name=tag:Name,Values=$tag_name_instance" --query "Reservations[].Instances[]").Count -gt 1) {
    Write-Output "Já existe uma instância com esse nome de tag!"
} else {
    Write-Output "Listando o nome da tag de todas as instâncias criadas"
    # aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    # Write-Output "Criando a primeira instância de nome de tag: $tag_name_instance"
    # $security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
    # $subnet_id = aws ec2 describe-subnets --query "Subnets[?AvailabilityZone=='$availability_zone'].AvailabilityZone" --output text

    # aws ec2 run-instances --image-id $image_id --instance-type t2.micro --key-name $key_pair_name --security-group-ids $security_group_id --subnet-id $subnet_id --count 1 --iam-instance-profile Name=$instance_profile_name --user-data "file://$user_data_path\$user_data_file" --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$tag_name_instance}]"

    # Write-Output "Listando o nome da tag de todas as instâncias criadas"
    # aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

    # Write-Output "Listando o IP público de todas as instâncias criadas"
    # ws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SECURITY GROUP"
if ((aws ec2 describe-security-groups --query "SecurityGroups[?Tags[?Key=='Name' && Value=='$tag_name_security_group']]").Count -gt 1) {
    Write-Output "Já existe um grupo de segurança com esse nome de tag!"
} else {
    Write-Output "Criando um nome da tag para o grupo de segurança padrão"
    # $security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
    # aws ec2 create-tags --resources $security_group_id --tags Key=Name,Value=$tag_name_security_group

    # Write-Output "Listando o nome da tag de todos os grupos de segurança criado"
    # aws ec2 describe-security-groups --query "SecurityGroups[].Tags[?Key=='Name'].Value" --output text
}

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "TAGS"
Write-Output "Listando o nome de todas as tags criadas"
aws ec2 describe-tags --query "Tags[].Value" --output text

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "INBOUND AND OUTBOUND RULES"
$security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
$exist_rule = aws ec2 describe-security-group-rules --query "SecurityGroupRules[?GroupId=='$security_group_id' && !IsEgress && IpProtocol=='-1' && to_string(FromPort)=='-1' && to_string(ToPort)=='-1' && CidrIpv4=='0.0.0.0/0']"

if (($exist_rule).Count -gt 1) {
    Write-Output "Já existe a regra de entrada determinada no grupo de segurança especificado!"
} else {
    Write-Output "Listando todas as regras de entrada e saída do grupo de segurança padrão"
    aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$security_group_id" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text

    Write-Output "Adicionando uma regra ao grupo de segurança para liberação do protocolo TCP"
    aws ec2 authorize-security-group-ingress --group-id sg-0512af5eb9da2ccfb --protocol tcp --port -1 --cidr 0.0.0.0/0
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS RDS"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS RELATIONAL DATABASE SERVICE (RDS)"
if ((aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='$db_instance_identifier']").Count -gt 1) {
    Write-Output "Já existe uma instância de RDS com essa identificação!"
} else {
    Write-Output "Listando o nome de identificação de todas as instâncias de RDS criadas"
    # aws rds describe-db-instances --query "DBInstances[].DBInstanceIdentifier" --output text

    # Write-Output "Criando a instância de RDS de engine $engine e versão $engine_version"
    # aws rds create-db-instance --db-instance-identifier $db_instance_identifier --db-instance-class db.t2.micro --engine $engine --engine-version $engine_version --master-username $db_master_username  --master-user-password $db_master_user_password --allocated-storage 20 --storage-type gp2 --db-name $db_name --availability-zone $availability_zone

    # Write-Output "Listando o endpoint da instância de banco de dados criadas"
    # aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='$db_instance_identifier'].Endpoint[].Address" --output text

    # Write-Output "Listando o endpoint de todas as instâncias de banco de dados criadas"
    # aws rds describe-db-instances --query "DBInstances[].Endpoint[].Address" --output text
}




"-----//-----//-----//-----//-----//-----//-----"
Write-Output "SERVIÇO: AWS S3"
"-----//-----//-----//-----//-----//-----//-----"
Write-Output "AWS Simple Storage Service (S3)"
if ((aws s3api list-buckets --query "Buckets[?Name=='$bucket_name']").Count -gt 1) {
    Write-Output "Já existe um bucket com esse nome!"
} else {
    Write-Output "Criando um bucket de nome $bucket_name na região $region"
    # aws s3api create-bucket --bucket $bucket_name --region $region
}









aws s3api list-buckets --query "Buckets[?Name=='armazenamentos3']"


aws s3api put-public-access-block --bucket armazenamentos3 --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false"
aws s3 ls --region us-east-1


Write-Output "$availability_zone"