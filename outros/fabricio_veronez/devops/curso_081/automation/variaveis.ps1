# Defina suas variáveis
# PATHS
$buildEnvPath = "G:\Meu Drive\4_PROJ\course\outros\fabricio_veronez\devops\curso_081\automation"
$resourcesPath = "$buildEnvPath\resources"
$secretsPath = "$buildEnvPath\secrets"

# VM PATHS
$vmPath = "/home/ubuntu"
$projectPath = "/home/ubuntu/imersao-devops-cloud-02"
$projectPath1 = "/home/ubuntu/imersao-devops-cloud-02/conversao-temperatura/src"
$projectPath2k8s = "/home/ubuntu/imersao-devops-cloud-02/kube-news/k8s"
$projectPath2src = "/home/ubuntu/imersao-devops-cloud-02/kube-news/src"
$projectPath2 = "/home/ubuntu/imersao-devops-cloud-02/kube-news"

# FILES PATHS
$keyPairPath = "$secretsPath"
$userDataPath = "$resourcesPath"
$awsCliPath = "$secretsPath"
$dockerHubPath = "$secretsPath"
$dockerFilePath = "$resourcesPath"
$deploymentFilePath = "$resourcesPath"
$dataFilePath = "$resourcesPath"

# FILES
$userDataFile = "ec2Script.sh"
$awsCliFolder = ".aws"
$dockerHubFolder = ".docker"
$dockerFile = "Dockerfile"
$deploymentFile1 = "deployment1.yaml"
$deploymentFile2 = "deployment2.yaml"
$dataFile = "popula-dados.http"


# DATA
$keyPairName = "remoteAccessEc2"
$tagNameInstance = "ec2DevOps2"
# $imageId = "ami-053b0d53c279acc90"
$imageId = "ami-0fc5d935ebf8bc3bc"
$availabilityZone = "us-east-1a"

