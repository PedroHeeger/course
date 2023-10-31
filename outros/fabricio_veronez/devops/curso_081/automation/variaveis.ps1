# Defina suas variáveis
# PATHS
$coursePath = "G:\Meu Drive\4_PROJ\course\outros\fabricio_veronez\devops\curso_081"
$buildEnvPath = "$coursePath\automation"
$projectPath = "$coursePath\imersao-devops-cloud-02"

# FOLDERS PATHS
$resourcesPath = "$buildEnvPath\resources"
$secretsPath = "$buildEnvPath\secrets"


# VM PATHS
$vmPath = "/home/ubuntu"
$vmProjectPath = "$vmPath/imersao-devops-cloud-02"
$vmProjectPath1 = "$vmProjectPath/conversao-temperatura"
$vmProjectPath1Src = "$vmProjectPath1/src"
$vmProjectPath2 = "$vmProjectPath/kube-news"
$vmProjectPath2k8s = "$vmProjectPath2/k8s"
$vmProjectPath2src = "$vmProjectPath2/src"


# FILES PATHS
$keyPairPath = "$secretsPath\keyPair"
$awsCliPath = "$secretsPath"
$dockerHubPath = "$secretsPath"
$userDataPath = "$resourcesPath\bash"
$dockerFilePath = "$resourcesPath\docker"
$deploymentFilePath = "$resourcesPath\kubernetes"
# $dataFilePath = "$resourcesPath"
$iac1 = "$resourcesPath\iac1"
$iac2 = "$resourcesPath\iac2"

# FILES




# DATA: AULA 1, 2 E 3
$userDataFile = "ec2Script.sh"
$awsCliFolder = ".aws"
$dockerHubFolder = ".docker"
$keyPairName = "remoteAccessEc2"
$instanceTypeCash = "t3.medium"

# DATA: AULA 1 E 2
$dockerFile = "Dockerfile"
$deploymentFile1 = "deployment1.yaml"
$deploymentFile2 = "deployment2.yaml"
$dataFile = "popula-dados.http"
$userDataFile2 = "ec2Script2.sh"
$tagNameInstance = "ec2DevOps1"
# $imageId = "ami-053b0d53c279acc90"
$imageId = "ami-0fc5d935ebf8bc3bc"
$instanceType = "t2.micro"
$availabilityZone = "us-east-1a"

# DATA: AULA 3 - ETAPA 1
$vpcName = "curso081VPC"
$subnetPubName = "curso081SubnetPub"
$subnetPrivName = "curso081SubnetPriv"
$internetGatewayName = "curso081Gateway"
$natGatewayName = "curso081NatGateway"
$routeTablePubName = "curso081RouteTablePub"
$routeTablePrivName = "curso081RouteTablePriv"
$securityGroupName = "curso081SecurityGroup"
$tagNameInstancePub = "curso081Ec2Pub2"
$tagNameInstancePriv = "curso081Ec2Priv2"

# DATA: AULA 3 - ETAPA 2
$deploymentFile3 = "deployment3.yaml"
$roleNameEks = "curso081RoleEks"
$roleNameEc2 = "curso081RoleEc2"
$stackName = "curso081Stack"
$clusterName = "curso081Cluster"
$region = "us-east-1"
$nodeGroupName = "curso081NodeGroup"
$amiType = "AL2_x86_64"     # Amazon Linux 2 Kernel 5.10 AMI 2.0.20231020.1 x86_64 HVM gp2
$tagNameNode1 = "curso081Ec2Node1"
$tagNameNode2 = "curso081Ec2Node2"

# DATA: AULA 3 - ETAPA 2 (TEACHER)
$vpcNameProf = "curso081Stack-VPC"
$subnetPub1NameProf = "curso081Stack-PublicSubnet01"
$subnetPub2NameProf = "curso081Stack-PublicSubnet02"
$subnetPriv1NameProf = "curso081Stack-PrivateSubnet01"
$subnetPriv2NameProf = "curso081Stack-PrivateSubnet02"
$securityGroupKeyProf = "aws:cloudformation:stack-name"
$securityGroupNameProf = "curso081Stack"


# DATA: AULA 5 - ETAPA 1
$terraformFile1 = "manifesto1.txt"
$terraformFile2 = "manifesto2.txt"
$terraformVariablesFile = "terraform.txt"
$keyPairName2 = "curso081KeyPair2"

