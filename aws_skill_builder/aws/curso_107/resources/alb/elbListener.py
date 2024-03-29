#!/usr/bin/env python

import boto3

print("***********************************************")
print("SERVIÇO: AWS EC2-ELB")
print("LISTENER CREATION")

print("-----//-----//-----//-----//-----//-----//-----")
print("Definindo variáveis")
alb_name = "albCurso107"
tg_name = "tgCurso107"
listener_protocol = "HTTP"
listener_port = 8080

print("-----//-----//-----//-----//-----//-----//-----")
resposta = input("Deseja executar o código? (y/n) ")
if resposta.lower() == 'y':
    print("-----//-----//-----//-----//-----//-----//-----")
    print(f"Criando um cliente para o serviço ELB")
    elbv2_client = boto3.client('elbv2')

    print("-----//-----//-----//-----//-----//-----//-----")
    print(f"Extraindo a ARN do load balancer {alb_name}")
    lb_response = elbv2_client.describe_load_balancers(Names=[alb_name])
    lb_arn = lb_response['LoadBalancers'][0]['LoadBalancerArn']

    print("-----//-----//-----//-----//-----//-----//-----")
    print(f"Extraindo a ARN do target group {tg_name}")
    tg_response = elbv2_client.describe_target_groups(Names=[tg_name])
    tg_arn = tg_response['TargetGroups'][0]['TargetGroupArn']

    print("-----//-----//-----//-----//-----//-----//-----")
    print(f"Obtendo todos os listeners do load balancer {alb_name}")
    listeners_response = elbv2_client.describe_listeners(LoadBalancerArn=lb_arn)
    all_listeners = listeners_response['Listeners']

    print("-----//-----//-----//-----//-----//-----//-----")
    print(f"Filtrando os listeners associados ao target group {tg_name}")
    filtered_listeners = [listener for listener in all_listeners if any(action.get('TargetGroupArn') == tg_arn for action in listener.get('DefaultActions', []))]

    print("-----//-----//-----//-----//-----//-----//-----")
    print(f"Verificando se existe um listener vinculando o target group {tg_name} ao load balancer {alb_name}")
    condition = len(all_listeners) > 0 or len(filtered_listeners) > 0
    if condition:
        print("-----//-----//-----//-----//-----//-----//-----")
        print(f"Já existe um listener vinculando o target group {tg_name} ao load balancer {alb_name}")
        listeners = elbv2_client.describe_listeners(LoadBalancerArn=lb_arn)['Listeners']
        for listener in listeners:
            print(listener['ListenerArn'])
    else:
        print("-----//-----//-----//-----//-----//-----//-----")
        print(f"Listando todos os listeners do load balancer {alb_name}")
        listeners = elbv2_client.describe_listeners(LoadBalancerArn=lb_arn)['Listeners']
        for listener in listeners:
            print(listener['ListenerArn'])

        print("-----//-----//-----//-----//-----//-----//-----")
        print(f"Criando um listener para vincular o target group {tg_name} ao load balancer {alb_name}")
        elbv2_client.create_listener(
            LoadBalancerArn=lb_arn,
            Protocol=listener_protocol,
            Port=listener_port,
            DefaultActions=[{'Type': 'forward', 'TargetGroupArn': tg_arn}]
        )

        print("-----//-----//-----//-----//-----//-----//-----")
        print(f"Listando o listener que vincula o target group {tg_name} ao load balancer {alb_name}")
        listeners = elbv2_client.describe_listeners(LoadBalancerArn=lb_arn)['Listeners']
        for listener in listeners:
            print(listener['ListenerArn'])
else:
    print("Código não executado")




#!/usr/bin/env python

import boto3

print("***********************************************")
print("SERVIÇO: AWS EC2-ELB")
print("LISTENER EXCLUSION")

print("-----//-----//-----//-----//-----//-----//-----")
print("Definindo variáveis")
alb_name = "albCurso107"
tg_name = "tgCurso107"

print("-----//-----//-----//-----//-----//-----//-----")
resposta = input("Deseja executar o código? (y/n) ")
if resposta.lower() == 'y':
    print("-----//-----//-----//-----//-----//-----//-----")
    print(f"Criando um cliente para o serviço ELB")
    elbv2_client = boto3.client('elbv2')

    print("-----//-----//-----//-----//-----//-----//-----")
    print(f"Extraindo a ARN do load balancer {alb_name}")
    lb_response = elbv2_client.describe_load_balancers(Names=[alb_name])
    lb_arn = lb_response['LoadBalancers'][0]['LoadBalancerArn']

    print("-----//-----//-----//-----//-----//-----//-----")
    print(f"Extraindo a ARN do target group {tg_name}")
    tg_response = elbv2_client.describe_target_groups(Names=[tg_name])
    tg_arn = tg_response['TargetGroups'][0]['TargetGroupArn']

    listeners = elbv2_client.describe_listeners(LoadBalancerArn=lb_arn)['Listeners']
    condition = len(listeners) > 0 and any(listener['DefaultActions'][0]['TargetGroupArn'] == tg_arn for listener in listeners)

    print("-----//-----//-----//-----//-----//-----//-----")
    print(f"Verificando se existe um listener vinculando o target group {tg_name} ao load balancer {alb_name}")
    if condition:
        print("-----//-----//-----//-----//-----//-----//-----")
        print(f"Listando todos os listeners do load balancer {alb_name}")
        listeners = elbv2_client.describe_listeners(LoadBalancerArn=lb_arn)['Listeners']
        for listener in listeners:
            print(listener['ListenerArn'])

        print("-----//-----//-----//-----//-----//-----//-----")
        print(f"Extraindo a ARN do listener que vincula o target group {tg_name} ao load balancer {alb_name}")
        listener_arn = listeners[0]['ListenerArn']

        print("-----//-----//-----//-----//-----//-----//-----")
        print(f"Removendo listener que vincula o target group {tg_name} ao load balancer {alb_name}")
        elbv2_client.delete_listener(ListenerArn=listener_arn)

        print("-----//-----//-----//-----//-----//-----//-----")
        print(f"Listando todos os listeners do load balancer {alb_name}")
        listeners = elbv2_client.describe_listeners(LoadBalancerArn=lb_arn)['Listeners']
        for listener in listeners:
            print(listener['ListenerArn'])
    else:
        print(f"Não existe um listener que vincula o target group {tg_name} ao load balancer {alb_name}")
else:
    print("Código não executado")