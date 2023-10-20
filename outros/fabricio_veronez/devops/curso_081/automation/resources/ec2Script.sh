#!/bin/bash

echo "-----//-----//-----//-----//-----//-----//-----"
echo "PRIMEIRA ETAPA: INSTALACOES BASICAS"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Executando o script como usuario Ubuntu"
cd /home/ubuntu
sudo apt-get update -y
sudo apt-get upgrade -y

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Instalando pacotes"
sudo apt-get install nano wget curl unzip git zsh -y

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Definindo o ZSH como shell padrao"
sudo chsh -s /usr/bin/zsh ubuntu

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Definindo variaveis"
echo "Usuario atual: $(whoami)"
export HOME="/home/ubuntu"
export ZSH_CUSTOM="/home/ubuntu/.oh-my-zsh/custom"
echo "$HOME"
echo "$ZSH_CUSTOM"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando o srcipt de instalacao do Oh My ZShell"
echo "$(pwd)"
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -o oh-my-zsh-install.sh
echo "Executando o srcipt de instalacao do Oh My ZShell"
sh oh-my-zsh-install.sh --unattended --path=$HOME
echo "Removendo o srcipt de instalacao do Oh My ZShell"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando e configurando a extensao Power Level 10k"
sudo -E git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo "Adiciona o comando typeset do PowerLevel"
sudo -E echo "typeset -g POWERLEVEL9K_INSTANT_PROMPT=off" | sudo -E tee -a ${ZDOTDIR:-$HOME}/.zshrc

$rc_file = "$HOME/.zshrc"
echo "Alterando o theme do Oh My ZShell para PowerLevel10k se existir o arquivo .zshrc"
if [ -f "$rc_file" ]; then
  # Faz a substituição no arquivo usando o sed
  sed -i 's#ZSH_THEME=.*#ZSH_THEME="powerlevel10k/powerlevel10k"#' $HOME/.zshrc
else
  echo "O arquivo $rc_file não existe."
fi

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando e configurando a extensao ZSH Auto Suggestions"
sudo -E git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo -E echo "source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" | sudo -E tee -a ${ZDOTDIR:-$HOME}/.zshrc

echo "Baixando e configurando a extensao ZSH Syntax Highlighting"
sudo -E git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo -E echo "source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" | sudo -E tee -a ${ZDOTDIR:-$HOME}/.zshrc

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Indicando que esse Shell deve ser iniciado"
echo "zsh" >> /home/ubuntu/.bashrc


echo "-----//-----//-----//-----//-----//-----//-----"
echo "SEGUNDA ETAPA: AULA 01-DOCKER"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando o repositório do GitHub"
cd /home/ubuntu
git clone https://github.com/KubeDev/imersao-devops-cloud-02.git

# echo "-----//-----//-----//-----//-----//-----//-----"
# echo "Baixando e instalando o pacote AWS CLI"
# curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
# unzip awscliv2.zip
# sudo ./aws/install

# echo "-----//-----//-----//-----//-----//-----//-----"
# echo "Baixando pacote Nodejs versão 20.x"
# curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash -

# echo "-----//-----//-----//-----//-----//-----//-----"
# echo "Instalando o Nodejs v20 e o NPM v10.1.0"
# sudo apt-get install nodejs -y
# sudo apt-get install npm -y
# sudo npm install -g npm@10.1.0

# sudo npm install

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando e instalando os pacotes necessarios para instalacao do Docker"
sudo apt-get install ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$UBUNTU_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

echo "Baixando e instalando o Docker"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Adicionando o usuario padrao do ubuntu ao grupo do Docker, para executar os comandos sem o Sudo"
# sudo groupadd docker
sudo usermod -aG docker ubuntu
newgrp docker

# echo "-----//-----//-----//-----//-----//-----//-----"
# echo "Fazendo o login no Docker Hub (Docker Registry)"
# echo '{"auths":{"https://index.docker.io/v1/":{"auth":"SEU_USUARIO:SEU_TOKEN"}}}' > ~/.docker/config.json

# echo "-----//-----//-----//-----//-----//-----//-----"
# echo "Instalando o Python 3"
# sudo apt-get install python3 -y


echo "-----//-----//-----//-----//-----//-----//-----"
echo "TERCEIRA ETAPA: AULA 01-DOCKER PROJETO"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Aguardando 200 segundos..."
sleep 200

# echo "-----//-----//-----//-----//-----//-----//-----"
# echo "Testando o Docker"
# docker container run --name meucontainer hello-world

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Acessando a pasta do arquivo Dockerfile"
cd /home/ubuntu/imersao-devops-cloud-02/conversao-temperatura/src

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando o arquivo .dockerignore"
echo "node_modules/" > .dockerignore

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando a imagem Docker da aplicacao"
docker build -t conversao-temperatura .

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Renomeando as tags da imagem"
docker tag conversao-temperatura pedroheeger/curso081_conversao-temperatura:v1
docker tag conversao-temperatura pedroheeger/curso081_conversao-temperatura:latest

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Enviando a imagem para o Docker Hub (Docker Registry)"
docker push pedroheeger/curso081_conversao-temperatura:v1
docker push pedroheeger/curso081_conversao-temperatura:latest

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando o container da aplicacao"
docker container run --name aplicacao1 -d -p 8080:8080 conversao-temperatura


echo "-----//-----//-----//-----//-----//-----//-----"
echo "QUARTA ETAPA: KUBERNETES"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando o script de instalacao do K3D e executando"
wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando e instalando os pacotes necessarios para instalacao do Kubectl"
sudo apt-get install -y apt-transport-https ca-certificates curl
# sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update -y

echo "Baixando o Kubectl"
sudo apt-get install -y kubectl
kubectl cluster-info

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Alterando o proprietário e grupo da pasta .kube para o usuário ubuntu"
sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube