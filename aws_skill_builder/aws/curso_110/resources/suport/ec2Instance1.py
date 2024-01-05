#!/usr/bin/env python

import boto3
from botocore.exceptions import ClientError

print("***********************************************")
print("SERVIÇO: AWS EC2")
print("EC2 CREATION")

print("-----//-----//-----//-----//-----//-----//-----")
print("Definindo variáveis")
tagNameInstance1 = "ec2Test1"
groupName = "default"
availabilityZone = "us-east-1a"
imageId = "ami-0fc5d935ebf8bc3bc"
instanceType = "t2.micro"
keyPairName = "keyPairTest"
userDataPath = "G:/Meu Drive/4_PROJ/course/aws_skill_builder/aws/curso_110/resources/suport/"
userDataFile = "udFileTest.sh"

print("-----//-----//-----//-----//-----//-----//-----")
resposta = input("Deseja executar o código? (y/n) ")
if resposta.lower() == 'y':
    try:
        print("-----//-----//-----//-----//-----//-----//-----")
        print(f"Criando um objeto de recurso para o serviço EC2")
        ec2 = boto3.resource('ec2')

        print("-----//-----//-----//-----//-----//-----//-----")
        print(f"Verificando se existe a instância {tagNameInstance1}")
        instances = list(ec2.instances.filter(Filters=[{'Name': 'tag:Name', 'Values': [tagNameInstance1]}]))
        if instances:
            print("-----//-----//-----//-----//-----//-----//-----")
            print(f"Já existe uma instância EC2 com o nome de tag {tagNameInstance1}")
            for instance in instances:
                print(f"ID da Instância: {instance.id}")
                print(f"IP Público: {instance.public_ip_address}")
        else:
            print("-----//-----//-----//-----//-----//-----//-----")
            print("Listando o nome da tag de todas as instâncias EC2 criadas")
            for instance in ec2.instances.all():
                for tag in instance.tags:
                    if tag['Key'] == 'Name':
                        print(f"Nome da Instância: {tag['Value']}")

            print("-----//-----//-----//-----//-----//-----//-----")
            print("Extraindo os Ids do grupo de segurança e sub-redes padrões")
            security_group_id = list(ec2.security_groups.filter(Filters=[{'Name': 'group-name', 'Values': [groupName]}]))[0].id
            subnet_id = list(ec2.subnets.filter(Filters=[{'Name': 'availabilityZone', 'Values': [availabilityZone]}]))[0].id

            print("-----//-----//-----//-----//-----//-----//-----")
            print(f"Criando a instância EC2 de nome de tag {tagNameInstance1}")
            instances = ec2.create_instances(
                ImageId=imageId,
                InstanceType=instanceType,
                KeyName=keyPairName,
                SecurityGroupIds=[security_group_id],
                SubnetId=subnet_id,
                MinCount=1,
                MaxCount=1,
                UserData=open(f"{userDataPath}/{userDataFile}", "r").read(),
                TagSpecifications=[{
                    'ResourceType': 'instance',
                    'Tags': [{'Key': 'Name', 'Value': tagNameInstance1}]
                }]
            )

            print("-----//-----//-----//-----//-----//-----//-----")
            print("Listando o nome da tag de todas as instâncias EC2 criadas")
            for instance in ec2.instances.all():
                for tag in instance.tags:
                    if tag['Key'] == 'Name':
                        print(f"Nome da Instância: {tag['Value']}")

            print("-----//-----//-----//-----//-----//-----//-----")
            print(f"Listando o IP público da instância {tagNameInstance1}")
            instances = list(ec2.instances.filter(Filters=[{'Name': 'tag:Name', 'Values': [tagNameInstance1]}]))
            for instance in instances:
                print(f"ID da Instância: {instance.id}")
                print(f"IP Público: {instance.public_ip_address}")

    except ClientError as e:
        print(f"Erro ao interagir com a AWS: {e}")

else:
    print("Código não executado")




#!/usr/bin/env python
    
import boto3
from botocore.exceptions import ClientError

print("***********************************************")
print("SERVIÇO: AWS EC2")
print("EC2 EXCLUSION")

print("-----//-----//-----//-----//-----//-----//-----")
print("Definindo variáveis")
tagNameInstance1 = "ec2Test1"

print("-----//-----//-----//-----//-----//-----//-----")
resposta = input("Deseja executar o código? (y/n) ")
if resposta.lower() == 'y':
    try:
        print("-----//-----//-----//-----//-----//-----//-----")
        print(f"Criando um objeto de recurso para o serviço EC2")
        ec2 = boto3.resource('ec2')

        print("-----//-----//-----//-----//-----//-----//-----")
        print(f"Criando um cliente para o serviço EC2")
        client = boto3.client('ec2')

        print("-----//-----//-----//-----//-----//-----//-----")
        print(f"Verificando se existe a instância {tagNameInstance1}")
        instances = list(ec2.instances.filter(Filters=[{'Name': 'tag:Name', 'Values': [tagNameInstance1]}]))
        
        if instances:
            print("-----//-----//-----//-----//-----//-----//-----")
            print(f"Listando o nome da tag de todas as instâncias EC2 criadas")
            for instance in ec2.instances.all():
                for tag in instance.tags:
                    if tag['Key'] == 'Name':
                        print(f"Nome da Instância: {tag['Value']}")
            
            print("-----//-----//-----//-----//-----//-----//-----")
            print(f"Extraindo o Id da instância de nome de tag {tagNameInstance1}")
            instance_id = instances[0].id
            
            print("-----//-----//-----//-----//-----//-----//-----")
            print(f"Removendo a instância de nome de tag {tagNameInstance1}")
            client.terminate_instances(InstanceIds=[instance_id], DryRun=False)
            
            print("-----//-----//-----//-----//-----//-----//-----")
            print(f"Listando o nome da tag de todas as instâncias EC2 criadas")
            for instance in ec2.instances.all():
                for tag in instance.tags:
                    if tag['Key'] == 'Name':
                        print(f"Nome da Instância: {tag['Value']}")
        else:
            print("-----//-----//-----//-----//-----//-----//-----")
            print(f"Não existe instâncias com o nome de tag {tagNameInstance1}")

    except ClientError as e:
        print(f"Erro ao interagir com a AWS: {e}")

else:
    print("Código não executado")