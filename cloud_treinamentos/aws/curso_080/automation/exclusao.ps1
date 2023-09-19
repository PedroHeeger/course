




# Write-Output "SERVIÇO: AWS IAM"
# Write-Output "POLICES, INSTANCE PROFILES E ROLES"
# Write-Output "Removendo a política anexada a role criada"
$role_name = "Ec2S3Read"
# $policy_arn = aws iam list-attached-role-policies --role-name $role_name --query 'AttachedPolicies[].PolicyArn' --output text
# aws iam detach-role-policy --role-name $role_name --policy-arn $policy_arn

# Write-Output "Removendo da role criada, o perfil de instância anexado"
$instance_profile_name = $role_name
# aws iam remove-role-from-instance-profile --instance-profile-name $instance_profile_name --role-name $role_name

# Write-Output "Removendo o perfil de instância criado"
# aws iam delete-instance-profile --instance-profile-name $instance_profile_name

# Write-Output "Removendo a role criada"
# aws iam delete-role --role-name $role_name




# Write-Output "SERVIÇO: AWS EC2"
# Write-Output "KEY PAIR"
# Write-Output "Removendo o par de chaves criado e os arquivos pem e ppk"
$key_pair_name = "remoteAccessEc2"
$key_pair_path = "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\secrets"
# aws ec2 delete-key-pair --key-name $key_pair_name
# rm "$key_pair_path\$key_pair_name.pem" && "$key_pair_path\$key_pair_name.ppk"


# Write-Output "INSTANCE"
Write-Output "Removendo as instâncias criadas"
$instance_id1 = aws ec2 describe-instances --query "Reservations[0].Instances[].InstanceId" --output text
$instance_id2 = aws ec2 describe-instances --query "Reservations[1].Instances[].InstanceId" --output text
aws ec2 terminate-instances --instance-ids $instance_id1 $instance_id2




# Write-Output "SERVIÇO: VPC"
# Write-Output "VPC"
# Write-Output "Removendo o grupo de segurança padrão"


# Write-Output "SECURITY GROUP"
# Write-Output "Removendo o grupo de segurança padrão"
# $security_group_id = aws ec2 describe-security-groups --query "SecurityGroups[].GroupId" --output text
# aws ec2 delete-security-group --group-id $security_group_id




# Write-Output "SERVIÇO: AWS RDS"
Write-Output "Removendo a instância de banco de dados criada"
$db_instance_identifier = aws rds describe-db-instances --query "DBInstances[].DBInstanceIdentifier" --output text
aws rds delete-db-instance --db-instance-identifier $db_instance_identifier  --skip-final-snapshot




# Write-Output "SERVIÇO: AWS ELB"
Write-Output "Removendo o listener criado"
$load_balancer_arn = aws elbv2 describe-load-balancers --query "LoadBalancers[].LoadBalancerArn" --output text
$listener_arn = aws elbv2 describe-listeners --load-balancer-arn $load_balancer_arn --query "Listeners[].ListenerArn" --output text
aws elbv2 delete-listener --listener-arn $listener_arn

# Write-Output "TARGET GROUP"
Write-Output "Removendo o grupo de destino criado"
$target_group_arn = aws elbv2 describe-target-groups --query "TargetGroups[].TargetGroupArn" --output text
aws elbv2 delete-target-group --target-group-arn $target_group_arn

# Write-Output "LOAD BALANCER"
Write-Output "Removendo o Load Balancer criado"
$load_balancer_arn = aws elbv2 describe-load-balancers --query "LoadBalancers[].LoadBalancerArn" --output text
Write-Output "$load_balancer_arn"
aws elbv2 delete-load-balancer --load-balancer-arn $load_balancer_arn




