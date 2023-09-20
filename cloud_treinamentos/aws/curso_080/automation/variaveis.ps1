# Defina suas variáveis
# PATHS
$project_path = "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080"
$resources_path = "$project_path\resources"
$secrets_path = "$project_path\secrets"

# FILES PATHS
$policy1_path = "$secrets_path"
$key_pair_path = "$secrets_path"
$user_data_path = "$resources_path"

# FILES
$policy1_file = "policy1.JSON"
$user_data_file = "ec2Sript.sh"

# DATA
$role_name = "Ec2S3Read"
$instance_profile_name = $role_name
$policy_name = "AmazonS3ReadOnlyAccess"
$policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
$key_pair_name = "remoteAccessEc2"
$tag_name_instance = "web"
$image_id = "ami-0261755bbcb8c4a84"
$availability_zone = "us-east-1a"
$tag_name_security_group = "securityGroup1"
$db_instance_identifier = "banco"
$db_master_username = "admin"
$db_master_user_password = "20173002"
$db_name = "Banco"
$engine = "mysql"
$engine_version = "8.0.33"
$bucket_name = "armazenamentos3"
$region = "us-east-1"
