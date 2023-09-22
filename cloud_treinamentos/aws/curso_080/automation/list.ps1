"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Listando o nome das roles criadas"
aws iam list-roles --query 'Roles[].RoleName' --output text

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Listando o nome dos perfis de instância criados"
aws iam list-instance-profiles --query 'InstanceProfiles[].InstanceProfileName' --output text

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Listando todos os pares de chaves criados"
aws ec2 describe-key-pairs --query "KeyPairs[*].KeyName" --output text

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Listando o nome da tag de todos os grupos de segurança criado"
aws ec2 describe-security-groups --query "SecurityGroups[].Tags[?Key=='Name'].Value" --output text

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Listando o nome de todas as tags criadas"
aws ec2 describe-tags --query "Tags[].Value" --output text

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Listando o nome de identificação de todas as instâncias de RDS criadas"
aws rds describe-db-instances --query "DBInstances[].DBInstanceIdentifier" --output text

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Listando todos os buckets existentes"
aws s3api list-buckets --query "Buckets[].Name" --output text

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Listando todos usuários do IAM criados"
aws iam list-users --query "Users[].UserName" --output text

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Exibindo todas as imanges criadas"
aws ec2 describe-images --owners self --query "Images[].Name" --output text

"-----//-----//-----//-----//-----//-----//-----"
Write-Output "Listando o nome da tag de todas as instâncias EC2 criadas"
aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text