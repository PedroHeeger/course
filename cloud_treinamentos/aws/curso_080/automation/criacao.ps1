



# Write-Output "Exibindo o usuário da conta AWS cadastrado no AWS CLI"
# aws sts get-caller-identity





# Write-Output "SERVIÇO: AWS IAM"
# Write-Output "ROLES"

# Write-Output "Listando o nome das roles criadas"
# aws iam list-roles --query 'Roles[].RoleName' --output text

# Write-Output "Criando a role a partir de arquivo de policy no formato JSON"
$role_name = "Ec2S3Read"
# aws iam create-role --role-name Ec2S3Read --assume-role-policy-document 'file://G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\resources\policy1.JSON'

# Write-Output "Listando o nome das roles criadas"
# aws iam list-roles --query 'Roles[].RoleName' --output text

# Write-Output "Listando apenas a role criada"
# aws iam list-roles --query "Roles[?RoleName=='$role_name']"


# Write-Output "INSTANCE PROFILE"

# Write-Output "Listando o nome dos perfis de instância criados"
# aws iam list-instance-profiles --query 'InstanceProfiles[].InstanceProfileName' --output text

# Write-Output "Criando um perfil de instância como mesmo nome da role"
$instance_profile_name = $role_name
# aws iam create-instance-profile --instance-profile-name $instance_profile_name

# Write-Output "Listando o nome do perfil de instância criado"
# aws iam list-instance-profiles --query "InstanceProfiles[?InstanceProfileName=='$instance_profile_name'].InstanceProfileName" --output text

# Write-Output "Anexando o perfil de instância a role criada"
# aws iam add-role-to-instance-profile --instance-profile-name $instance_profile_name --role-name $role_name

# Write-Output "Listando os perfis de instância anexado a role criada"
# aws iam list-instance-profiles-for-role --role-name $role_name


# Write-Output "POLICES"

# Write-Output "Listando todas as polices anexadas a role criada"
# aws iam list-attached-role-policies --role-name $role_name --query 'AttachedPolicies[].PolicyName' --output text

# Write-Output "Anexando uma police existente (AmazonS3ReadOnlyAccess) a uma role"
# $policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
# aws iam attach-role-policy --role-name $role_name --policy-arn $policy_arn

# Write-Output "Listando todas as polices anexadas a role criada"
# aws iam list-attached-role-policies --role-name $role_name --query 'AttachedPolicies[].PolicyName' --output text





# Write-Output "SERVIÇO: AWS EC2"
# Write-Output "KEY PAIR"
# Write-Output "Listando todos os pares de chaves criados"
# aws ec2 describe-key-pairs --query "KeyPairs[*].KeyName" --output text

# Write-Output "Criando um par de chaves"
$key_pair_name = "remoteAccessEc2"
$key_pair_path = "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\secrets"
# aws ec2 create-key-pair --key-name $key_pair_name --query 'KeyMaterial' --output text > "$key_pair_path\$key_pair_name.pem"

# Write-Output "Listando apenas o par de chave criado"
# aws ec2 describe-key-pairs --query "KeyPairs[?KeyName=='$key_pair_name'].KeyName" --output text


# Write-Output "INSTANCE"
# Write-Output "Listando o nome da tag de todas as instâncias criadas"
# aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

# Write-Output "Criando a primeira instância"
$image_id = "ami-0261755bbcb8c4a84"
$security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
$subnet_id = aws ec2 describe-subnets --query "Subnets[?AvailabilityZone=='us-east-1a'].AvailabilityZone" --output text
$user_data_path = "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\resources"
$user_data_file = "ec2Sript.sh"
$tag_name = "web"
# aws ec2 run-instances --image-id $image_id --instance-type t2.micro --key-name $key_pair_name --security-group-ids $security_group_id --subnet-id $subnet_id --count 1 --iam-instance-profile Name=$instance_profile_name --user-data 'file://$user_data_path\$user_data_file' --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=$tag_name}]'

# Write-Output "Listando o nome da tag de todas as instâncias criadas"
# aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

# Write-Output "Listando o IP público de todas as instâncias criadas"
# ws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text


# Write-Output "SECURITY GROUP"
# Write-Output "Criando um nome da tag para o grupo de segurança padrão"
$tag_name_security_group = "securityGroup1"
# aws ec2 create-tags --resources $security_group_id --tags Key=Name,Value=$tag_name_security_group

# Write-Output "Listando o nome da tag de todos os grupos de segurança criado"
# aws ec2 describe-security-groups --query "SecurityGroups[].Tags[?Key=='Name'].Value" --output text


# Write-Output "TAGS"
# Write-Output "Listando o nome de todas as tags criadas"
# aws ec2 describe-tags --query "Tags[].Value" --output text


# Write-Output "INBOUND AND OUTBOUND RULES"
# Write-Output "Listando todas as regras de entrada e saída do grupo de segurança padrão"
# aws ec2 describe-security-group-rules --filters "Name=group-id,Values=$security_group_id" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text





# Write-Output "SERVIÇO: AWS RDS"
# Write-Output "Listando o nome de identificação de todas as instâncias de RDS criadas"
# aws rds describe-db-instances --query "DBInstances[].DBInstanceIdentifier" --output text

# Write-Output "Criando a instância de RDS"
$db_instance_identifier = "banco"
$master_username = "admin"
$master_user_password = "20173002"
$db_name = "Banco"
$availability_zone = "us-east-1a"
# aws rds create-db-instance --db-instance-identifier $db_instance_identifier --db-instance-class db.t2.micro --engine mysql --engine-version 8.0.33 --master-username master_username --master-user-password $master_user_password --allocated-storage 20 --storage-type gp2 --db-name $db_name --availability-zone $availability_zone

# Write-Output "Listando o endpoint das instâncias de banco de dados criadas"
aws rds describe-db-instances --query "DBInstances[].Endpoint[].Address" --output text



# Write-Output "Adicionando uma regra ao grupo de segurança para liberação do protocolo TCP"
# aws ec2 authorize-security-group-ingress --group-id sg-0512af5eb9da2ccfb --protocol tcp --port -1 --cidr 0.0.0.0/0