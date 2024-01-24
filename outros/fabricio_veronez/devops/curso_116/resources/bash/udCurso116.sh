#!/bin/bash

echo "-----//-----//-----//-----//-----//-----//-----"
echo "ETAPA 1: INSTALACOES DE SOFTWARES"

echo "***********************************************"
echo "LINUX TOOLS INSTALLATION"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Atualizando os pacotes"
sudo apt-get update -y

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Atualizando o sistema"
sudo apt-get upgrade -y

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Instalando os pacotes"
sudo apt-get install -y nano wget curl unzip




echo "***********************************************"
echo "GIT INSTALLATION"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Instalando o pacote"
sudo apt-get install -y git




echo "***********************************************"
echo "ZSHELL INSTALLATION"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Instalando o pacote"
sudo apt-get install -y zsh

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Definindo o ZSH como shell padrao"
sudo chsh -s /usr/bin/zsh ubuntu




echo "***********************************************"
echo "OH MY ZSHELL INSTALLATION"

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

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Executando o srcipt de instalação"
sh oh-my-zsh-install.sh --unattended --path=$HOME

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo o srcipt de instalacao do Oh My ZShell"
rm oh-my-zsh-install.sh




echo "***********************************************"
echo "POWER LEVEL PLUGIN"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Clonando o repositório para a pasta do Oh My Zsh"
sudo -E git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Adicionando o comando typeset no arquivo de configuração do Zsh"
sudo -E echo "typeset -g POWERLEVEL9K_INSTANT_PROMPT=off" | sudo -E tee -a ${ZDOTDIR:-$HOME}/.zshrc

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Verificando se existe o arquivo de configuração do Zsh"
$rc_file = "$HOME/.zshrc"
if [ -f "$rc_file" ]; then
  echo "-----//-----//-----//-----//-----//-----//-----"
  echo "Fazendo a alteração do tema no arquivo de configuração do Zsh"
  sed -i 's#ZSH_THEME=.*#ZSH_THEME="powerlevel10k/powerlevel10k"#' $HOME/.zshrc
else
  echo "O arquivo $rc_file não existe."
fi




echo "***********************************************"
echo "AUTO SUGGESTIONS PLUGIN"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Clonando o repositório para caminho personalizado"
sudo -E git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Adicionando o caminho deste arquivo no arquivo de configuração do Zsh"
sudo -E echo "source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" | sudo -E tee -a ${ZDOTDIR:-$HOME}/.zshrc




echo "***********************************************"
echo "SYNTAX HIGHLIGHTING PLUGIN"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Clonando o repositório para caminho personalizado"
sudo -E git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Adicionando o caminho deste arquivo no arquivo de configuração do Zsh"
sudo -E echo "source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" | sudo -E tee -a ${ZDOTDIR:-$HOME}/.zshrc

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Indicando que esse Shell deve ser iniciado"
echo "zsh" >> /home/ubuntu/.bashrc




echo "***********************************************"
echo "AWS CLI INSTALLATION"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Definindo variáveis"
link="https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando o pacote"
curl "$link" -o "awscliv2.zip"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Descompactando o pacote"
unzip awscliv2.zip

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Instalando o pacote"
sudo ./aws/install




echo "***********************************************"
echo "DOCKER INSTALLATION"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Instalando os pacotes necessários para realizar: download seguro (SSL) (ca-certificates), operações de transferência de dados (curl) e manipulação de chaves GPG (gnupg)"
sudo apt-get install -y ca-certificates curl gnupg

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando um diretório para armazenar chaves de repositórios"
sudo install -m 0755 -d /etc/apt/keyrings

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando a chave GPG oficial do Docker, desarmazenando e salvando ela no diretório de chaves (com o Gnupg)"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Garantindo que a chave GPG do Docker tenha as permissões corretas"
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Adicionando o repositório do Docker à lista de fontes de pacotes do sistema"
echo "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
"$(. /etc/os-release && echo "$UBUNTU_CODENAME")" stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Atualizando os pacotes"
sudo apt-get update -y

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Instalando os pacotes principais do Docker, incluindo o Docker Community Edition, o daemon (dockerd), a CLI (docker), o containerd (motor de execução de contêineres), e plugins adicionais (Docker Buildx e Docker Compose)."
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin




echo "***********************************************"
echo "DOCKER CONFIGURATION"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Definindo variáveis"
username="ubuntu"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Adicionando o usuário ao grupo do Docker"
sudo usermod -aG docker ${username}

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Confirmando as alterações realizadas no grupo"
sudo newgrp docker

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Reiniciando o serviço"  
sudo systemctl restart docker




echo "***********************************************"
echo "K3D INSTALLATION"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Definindo variáveis"
link="https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando e executando o script de instalação"
wget -q -O - $link | bash




echo "***********************************************"
echo "KUBECTL INSTALLATION"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando um diretório para armazenar chaves de repositórios"
sudo install -m 0755 -d /etc/apt/keyrings

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando a chave de assinatura pública para os repositórios de pacotes Kubernetes"
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Adicionando o repositório do pacote à lista de fontes de pacotes do sistema"
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Atualizando os pacotes"
sudo apt-get update -y

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Instalando o pacote"
sudo apt-get install -y kubectl

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Exibindo a versão"
kubectl version --client




echo "***********************************************"
echo "NPM INSTALLATION"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Instalando o pacote"
sudo apt-get install -y npm




echo "***********************************************"
echo "NODE JS INSTALLATION"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Instalando o pacote"
sudo apt-get install -y nodejs




echo "-----//-----//-----//-----//-----//-----//-----"
echo "ETAPA 2: BAIXANDO OS ARQUIVOS DO PROJETO DO GITHUB"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando o repositorio do projeto no GitHub"
cd /home/ubuntu
git clone https://github.com/KubeDev/kube-news.git

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Alterando o proprietario e grupo da pasta do projeto para o usuario ubuntu"
sudo chown -R ubuntu:ubuntu /home/ubuntu/kube-news

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando o sub-diretorio k8s na pasta do projeto"
cd /home/ubuntu/kube-news/
mkdir k8s

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Alterando o proprietario e grupo da pasta criada para o usuario ubuntu"
sudo chown -R ubuntu:ubuntu /home/ubuntu/kube-news/k8s




echo "-----//-----//-----//-----//-----//-----//-----"
echo "Aguardando 120 segundos para configuracao do Docker Hub..."
sleep 120




echo "-----//-----//-----//-----//-----//-----//-----"
echo "ETAPA 3: EXECUTANDO APLICACAO WEB DO PROJETO SEM O DOCKER (AULA 1)"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Acessando a pasta do arquivo Dockerfile"
cd /home/ubuntu/kube-news/src

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando um container de banco de dados para persistir os dados da aplicacao web"
docker container run --name db1 -d -p 5432:5432 -e POSTGRES_PASSWORD=Pg#123 -e POSTGRES_USER=kubedevnews -e POSTGRES_DB=kubedevnews postgres

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Instalar as dependencias da aplicacao"
npm install

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Executando a aplicacao sem container por alguns segundos"
timeout 200s node server.js




echo "-----//-----//-----//-----//-----//-----//-----"
echo "ETAPA 4: DOCKER COMPOSE PROJETO (AULA 2)"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo o container de banco de dados"
docker container rm -f db1

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Acessando a pasta do arquivo Dockerfile"
cd /home/ubuntu/kube-news/src

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando o arquivo .dockerignore"
echo "node_modules/" > .dockerignore

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando a imagem Docker da aplicacao"
docker build -t kube-news .

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Renomeando as tags da imagem"
docker tag kube-news pedroheeger/curso116_kube-news:v1
docker tag kube-news pedroheeger/curso116_kube-news:latest

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Enviando a imagem para o Docker Hub (Docker Registry)"
docker push pedroheeger/curso116_kube-news:v1
docker push pedroheeger/curso116_kube-news:latest

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Acessando a pasta do arquivo Docker Compose"
cd /home/ubuntu/kube-news

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Executando a aplicação com o Docker Compose"
docker compose up -d

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Startando o container da aplicação caso ele caia"
docker start kube-news-kubenews-1


echo "-----//-----//-----//-----//-----//-----//-----"
echo "Aguardando 200 segundos para verificacao do projeto..."
sleep 200




echo "-----//-----//-----//-----//-----//-----//-----"
echo "ETAPA 5: KUBERNETES PROJETO (AULA 3)"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo a aplicação com o Docker Compose"
docker compose down

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo tudo referente ao Docker que não está sendo utilizado para liberacao de espaco"
docker system prune -af

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Acessando a pasta do arquivo de manifesto do projeto"
cd /home/ubuntu/kube-news/k8s

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando o cluster com Port Bind e Load Balancer"
k3d cluster create meucluster -p "8080:30000@loadbalancer"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Alterando o proprietario e grupo da pasta .kube para o usuario ubuntu"
sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Executando o arquivo de Manifesto YAML"
kubectl apply -f deployment.yaml

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Aguardando 200 segundos para inserir os dados..."
sleep 200

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Realizando uma alteracao na aplicacao para versao v2"
sed -i 's/<a class="header__button" href="\/post">Novo Post<\/a>/<a class="header__button" href="\/post">Novo Post - V2<\/a>/' "/home/ubuntu/kube-news/src/views/partial/header.ejs"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Acessando a pasta do arquivo Dockerfile"
cd /home/ubuntu/kube-news/src

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando a imagem Docker da aplicacao na versao v2"
docker build -t pedroheeger/curso116_kube-news:v2 .

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Enviando a imagem da aplicacao na versao v2 para o Docker Hub (Docker Registry)"
docker push pedroheeger/curso116_kube-news:v2

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo tudo referente ao Docker que não está sendo utilizado para liberacao de espaco"
docker system prune -af

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Acessando a pasta do arquivo de manifesto do projeto"
cd /home/ubuntu/kube-news/k8s

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Realizando uma alteracao da versao da aplicacao no arquivo de manifesto YAML"
sed -i 's/image: pedroheeger\/curso116_kube-news:v1/image: pedroheeger\/curso116_kube-news:v2/' "/home/ubuntu/kube-news/k8s/deployment.yaml"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Executando o arquivo de manifesto YAML"
kubectl apply -f deployment.yaml

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Aguardando 200 segundos para verificar a aplicacao..."
sleep 200

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo o arquivo de manifesto YAML"
kubectl delete -f deployment.yaml

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo o cluster"
k3d cluster delete meucluster

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Desfazendo as alterações nos arquivos"
sed -i 's/<a class="header__button" href="\/post">Novo Post - V2<\/a>/<a class="header__button" href="\/post">Novo Post<\/a>/' "/home/ubuntu/kube-news/src/views/partial/header.ejs"
sed -i 's/image: pedroheeger\/curso116_kube-news:v2/image: pedroheeger\/curso116_kube-news:v1/' "/home/ubuntu/kube-news/k8s/deployment.yaml"