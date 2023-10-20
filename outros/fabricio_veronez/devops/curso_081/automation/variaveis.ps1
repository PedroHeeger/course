# Defina suas variáveis
# PATHS
$buildEnvPath = "G:\Meu Drive\4_PROJ\course\outros\fabricio_veronez\devops\curso_081\automation"
$resourcesPath = "$buildEnvPath\resources"
$secretsPath = "$buildEnvPath\secrets"
$projectPath = "/home/ubuntu/imersao-devops-cloud-02/conversao-temperatura/src"
$awsCliPath = "$secretsPath\.aws"
$dockerHub = "$secretsPath\.docker"

# FILES PATHS
$keyPairPath = "$secretsPath"
$userDataPath = "$resourcesPath"
$dockerFilePath = "$resourcesPath"

# FILES
$userDataFile = "ec2Script.sh"
$dockerFile = "Dockerfile"

# DATA
$keyPairName = "remoteAccessEc2"
$tagNameInstance = "ec2DevOps1"
$imageId = "ami-053b0d53c279acc90"
$availabilityZone = "us-east-1a"