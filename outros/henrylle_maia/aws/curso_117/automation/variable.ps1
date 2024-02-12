# Defina suas variáveis

## AULA 1
# SG 1
$sgName1 = "bia-dev"
$vpcName = "default"
$sgDescription1 = "Acesso da maquina de trabalho"
$sgTagName = "sgCurso117"
$port1 = "3001"
$protocol = "tcp"
$cidrIpv4 = "0.0.0.0/0"
$sgRuleDescription1 = "Liberado para o mundo"

# Role da Instância de Trabalho
$roleName1 = "role-acesso-ssm"
$serviceName1 = "ec2.amazonaws.com"
$policyName1_1 = "AmazonSSMManagedInstanceCore"
$policyName1_2 = "AmazonECS_FullAccess"
$policyName1_3 = "AmazonEC2ContainerRegistryFullAccess"
# $policyArn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
$instanceProfileName = $roleName1

# Instância de Trabalho
$tagNameInstance = "bia-dev"
$aZ1 = "us-east-1a"
$sgName1 = "bia-dev"
$imageId = "ami-02f3f602d23f1659d"    # Canonical, Ubuntu, 22.04 LTS, amd64 jammy image build on 2023-12-07
$instanceType = "t3.micro"
$userDataPath = "G:/Meu Drive/4_PROJ/course/outros/henrylle_maia/aws/curso_117/resources/bash"
$userDataFile = "udFileCurso117.sh"
$deviceName = "/dev/xvda" 
$volumeSize = 15
$volumeType = "gp2"




## AULAS 2 E 3
# SG 4 (AULA 3)
$sgName4 = "bia-alb-teste"
$sgDescription4 = "SG do ALB da Bia"
$fromPort4_1 = "80"
$toPort4_1 = "80"
$fromPort4_2 = "443"
$toPort4_2 = "443"
$cidrIpv4_4 = "0.0.0.0/0"
$sgRuleDescription4 = "Liberado para o Mundo"

# SG 2 (AULAS 2 E 3)
# $sgName2 = "bia-web-teste"
# $sgDescription2 = "Acesso do bia web"
# $port2 = "80"
# $cidrIpv4_2 = "0.0.0.0/0"
# $sgRuleDescription2 = "Liberado para o mundo"

$sgName2 = "bia-ec2-teste"
$sgDescription2 = "SG da EC2 com ALB"
$fromPort2 = "0"
$toPort2 = "65535"
$referencedGroupName = $sgName4
$sgRuleDescription2 = "Acesso do ALB"

# SG 3 (AULAS 2 E 3)
$sgName3 = "bia-db-teste"
$sgDescription3 = "Acesso do bia db"
$fromPort3 = "5432"
$toPort3 = "5432"
# $cidrIpv4_3A = "bia-web-teste"
# $sgRuleDescription3A = "Acesso do bia-web"
$referencedGroupName3A = $sgName2
$sgRuleDescription3A = "Acesso do bia-ec2"
$referencedGroupName3B = $sgName1
$sgRuleDescription3B = "Acesso do bia-dev"

# RDS (AULAS 2 E 3)
$dbInstanceName = "bia"
$dbInstanceClass = "db.t3.micro"
$engine = "postgres"
$engineVersion = "16.1"
$masterUsername = "postgres"
$masterPassword = "postgres"
$allocatedStorage = 20
$storageType = "gp2"
# $dbName = "dbTest1"
$periodBackup = 7
$sgName3 = "bia-db-teste"
$aZ1 = "us-east-1a"

# ECR (AULAS 2 E 3)
$repositoryName = "bia"
$repositoryPath = "001727357081.dkr.ecr.us-east-1.amazonaws.com"
$imageTag = "latest"

# ALB (AULAS 3)
$albName = "bia-alb"
$aZ1 = "us-east-1a"
$aZ2 = "us-east-1b"
$aZ3 = "us-east-1c"
$sgName = "bia-alb-teste"

# TG (AULAS 3)
$tgName = "tg-bia"
$tgType = "instance"
$tgProtocol = "HTTP"
$tgProtocolVersion = "HTTP1"
$tgPort = 80
$tgHealthCheckProtocol = "HTTP"
$tgHealthCheckPort = "traffic-port"
$tgHealthCheckPath = "/"

# LISTENER 1 E 2 (AULAS 3)
$listenerProtocol = "HTTP"
$listenerPort1 = "80"

# ROLE, POLICY AND INSTANCE PROFILE 2 (AULA 2)
$roleName2 = "ecs-ec2InstanceRole"
$serviceName2 = "ec2.amazonaws.com"
$policyName2_1 = "AmazonEC2ContainerServiceforEC2Role"
$instanceProfileName2 = "ecs-ec2InstanceIProfile"

# LAUNCH TEMPLATE (AULAS 2 E 3)
$launchTempName = "launchTempCurso117"
$versionNumber = 1
$versionDescription = "My version 1"
$amiId = "ami-0f90bd3669358d247"    # al2023-ami-ecs-hvm-2023.0.20240201-kernel-6.1-x86_64
$instanceTypeAsg = "t3.micro"
$sgNameLaunchTemplate = $sgName2
$keyPair = "keyPairUniversal"
$deviceName2 = "/dev/sda1" 
$volumeSize2 = 8
$volumeType2 = "gp2"

# AUTO SCALING GROUP (AULAS 2 E 3)
$asgName = "asgCurso117"
$versionNumber = 1
$tgName = "tg-bia"        # Para aula 2 tem que tirar o Target Group, pois foi sem Load Balancer
$aZ1 = "us-east-1a"
$aZ2 = "us-east-1b"
$aZ3 = "us-east-1c"
$tagNameInstanceAsg = "ECS Instances - cluster-bia"

# CAPACITY PROVIDER
$capacityProviderName = "capacityProviderCurso117"
$asgName = "asgCurso117"

# ECS - Cluster (AULAS 2 E 3)
# $clusterName = "cluster-bia"
$clusterName = "cluster-bia-alb"
$region = "us-east-1"
$accountId = "001727357081"
$clusterArn = "arn:aws:ecs:${region}:${accountId}:cluster/${clusterName}"

# IAM - ROLE E POLICY 3 (AULAS 2 E 3)
$roleName3 = "ecsTaskExecutionRole"
$serviceName3 = "ecs-tasks.amazonaws.com"
$policyName3_1 = "AmazonECSTaskExecutionRolePolicy"
$policyArn = "arn:aws:iam::aws:policy/AmazonECSTaskExecutionRolePolicy"

# ECS - TASK (AULAS 2 E 3)
# $taskName = "task-def-bia"
$taskName = "task-def-bia-alb"
$executionRoleName = $roleName3
$launchType = "EC2"
$containerName1 = "bia"
$dockerImage1 = "001727357081.dkr.ecr.us-east-1.amazonaws.com/bia:latest"
# $hostPort = 80
$hostPort = 0
$revision = "3"

# ECS - SERVICE (AULAS 2 E 3)
# $ecsServiceName = "service-bia"
# $clusterName = "cluster-bia"
# $taskName = "task-def-bia"
$ecsServiceName = "service-bia-alb"
$clusterName = "cluster-bia-alb"
$taskName = "task-def-bia-alb"
$taskVersion = $revision
# $taskAmount = 1
$taskAmount = 2
$launchType = "EC2"
# $minHealthyPercent = 0
# $maxHealthyPercent = 100
$minHealthyPercent = 50
$maxHealthyPercent = 100
$containerPort1 = 8080

# ROUTE 53 (AULAS 2 E 3)
$hostedZoneName = "pedroheeger.dev.br."
$domainName = "pedroheeger.dev.br"
$hostedZoneReference = "hostedZoneReferenceTest1"
$resourceRecordName2 = "www.pedroheeger.dev.br"
$albName = "albTest1"

# ACM (AULAS 2 E 3)
$fullDomainName = $resourceRecordName2

# LISTENER 2 (AULAS 3)
$listenerProtocol2 = "HTTPS"
$listenerPort2 = "443"

# REGISTRO BR
$siteName = $resourceRecordName2