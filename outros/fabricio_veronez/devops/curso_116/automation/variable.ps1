# Defina suas variáveis
# LOCAL PATHS
$coursePath = "G:\Meu Drive\4_PROJ\course\outros\fabricio_veronez\devops\curso_116"
$automationPath = "$coursePath\automation"
$resourcesPath = "$coursePath\resources"
$projectPath = "$coursePath\project\kube-news"
$secretsPath = "$coursePath\secrets"


# VM PATHS
$vmPath = "/home/ubuntu"
$vmPathProject = "$vmPath/kube-news"
$vmPathProjectK8s = "$vmPathProject/k8s"
$vmPathProjectSrc = "$vmPathProject/src"


# FILES AND FOLDERS PATHS
$keyPairPath = "$secretsPath\keyPair"
$userDataPath = "$resourcesPath\bash"
$awsCliPath = "$secretsPath"
$dockerHubPath = "$secretsPath"
$dockerPath = "$resourcesPath\docker"
$deploymentFilePath = "$resourcesPath\kubernetes"



# FILES AND FOLDERS
$keyPairName = "keyPairCurso116"
$userDataFile = "udCurso116.sh"
$awsCliFolder = ".aws"
$dockerHubFolder = ".docker"
$dockerFile = "Dockerfile"
$composeFile = "compose.yaml"
$deploymentFile = "deployment.yaml"



# NAMES (INSTANCE)
$tagNameInstance = "ec2DevOps1"
# $instanceTypeCash = "t3.medium"
$instanceType = "t2.micro"
$imageId = "ami-0fc5d935ebf8bc3bc"
# $imageId = "ami-053b0d53c279acc90"
$groupName = "default"
$aZ = "us-east-1a"
$protocolo = "tcp"
$port1 = "8080"
$port2 = "5432"
$cidrIpv4 = "0.0.0.0/0"