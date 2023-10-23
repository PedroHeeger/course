#!/bin/bash

echo "-----//-----//-----//-----//-----//-----//-----"
echo "INSTALACOES BASICAS"
echo "-----//-----//-----//-----//-----//-----//-----"
echo "Atualizando os pacotes e o sistema"
cd /home/ubuntu
sudo apt-get update -y
sudo apt-get upgrade -y

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Instalando pacotes"
sudo apt-get install nano wget curl nginx -y