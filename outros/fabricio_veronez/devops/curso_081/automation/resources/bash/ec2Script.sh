#!/bin/bash

echo "-----//-----//-----//-----//-----//-----//-----"
echo "ETAPA 1: INSTALACOES BASICAS"
start_time=$(date +%s)

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
echo "Baixando e instalando o pacote AWS CLI"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

end_time=$(date +%s)
runtime=$((end_time - start_time))
echo "TEMPO ETAPA 1: $runtime segundos"


echo "-----//-----//-----//-----//-----//-----//-----"
echo "ETAPA 2: AULA 01-DOCKER INSTALACAO"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando o repositorio do projeto no GitHub"
cd /home/ubuntu
git clone https://github.com/KubeDev/imersao-devops-cloud-02.git

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Alterando o proprietario e grupo da pasta do projeto para o usuario ubuntu"
sudo chown -R ubuntu:ubuntu /home/ubuntu/imersao-devops-cloud-02

# echo "-----//-----//-----//-----//-----//-----//-----"
# echo "Removendo o arquivo popula-dados.http da pasta do projeto principal"
# rm /home/ubuntu/imersao-devops-cloud-02/kube-news/popula-dados.http

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando o sub-diretorio k8s na pasta do projeto principal"
cd /home/ubuntu/imersao-devops-cloud-02/kube-news
mkdir k8s

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Alterando o proprietario e grupo da pasta criada para o usuario ubuntu"
sudo chown -R ubuntu:ubuntu /home/ubuntu/imersao-devops-cloud-02/kube-news/k8s

end_time=$(date +%s)
runtime=$((end_time - start_time))
echo "TEMPO ETAPA 1: $runtime segundos"

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
sudo newgrp docker

end_time=$(date +%s)
runtime=$((end_time - start_time))
echo "TEMPO ETAPA 1: $runtime segundos"

# echo "-----//-----//-----//-----//-----//-----//-----"
# echo "Fazendo o login no Docker Hub (Docker Registry)"
# echo '{"auths":{"https://index.docker.io/v1/":{"auth":"SEU_USUARIO:SEU_TOKEN"}}}' > ~/.docker/config.json

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Aguardando 100 segundos para configuracao do Docker Hub..."
sleep 100


echo "-----//-----//-----//-----//-----//-----//-----"
echo "ETAPA 3: AULA 01-DOCKER PROJETO 1"

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
echo "ETAPA 4: AULA 02-KUBERNETES INSTALACAO"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando o script de instalacao do K3D e executando"
wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Baixando e instalando os pacotes necessarios para instalacao do Kubectl"
sudo apt-get install -y apt-transport-https ca-certificates curl
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update -y

echo "Baixando o Kubectl"
sudo apt-get install -y kubectl
kubectl cluster-info

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Alterando o proprietario e grupo da pasta .kube para o usuario ubuntu"
sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Aguardando 100 segundos para verificacao do projeto 1..."
sleep 100


echo "-----//-----//-----//-----//-----//-----//-----"
echo "ETAPA 5: AULA 02-KUBERNETES PROJETO 2"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo o container da aplicacao do projeto 1"
docker container rm -f aplicacao1

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo tudo referente ao Docker que não está sendo utilizado para liberação de espaço"
docker system prune -af

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Acessando a pasta do projeto"
cd /home/ubuntu/imersao-devops-cloud-02/kube-news

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Alterando o proprietario e grupo do arquivo .kube/config para o usuario ubuntu"
sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube/config

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando o cluster com Port Bind e Load Balancer"
k3d cluster create meucluster1 -p "8080:30000@loadbalancer"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Alterando o proprietario e grupo do arquivo .kube/config para o usuario ubuntu"
sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube/config

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Executando o arquivo de Manifesto YAML"
kubectl apply -f deployment1.yaml

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Aguardando 100 segundos para verificacao do projeto 2..."
sleep 100

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Realizando uma alteracao de URL para insercao de dados na aplicacao"
sed -i 's|fabricioveronez/web-color:blue|fabricioveronez/web-color:green|' "/home/ubuntu/imersao-devops-cloud-02/kube-news/deployment1.yaml"
# sed -i 's|fabricioveronez/web-page:blue|fabricioveronez/web-page:green|' "/home/ubuntu/imersao-devops-cloud-02/kube-news/deployment1.yaml"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Executando o arquivo de Manifesto YAML"
kubectl apply -f deployment1.yaml

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Aguardando 100 segundos para verificacao do projeto 2..."
sleep 100

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo o arquivo de Manifesto YAML"
kubectl delete -f deployment1.yaml

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo o cluster"
k3d cluster delete meucluster1

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo tudo referente ao Docker que não está sendo utilizado para liberação de espaço"
docker system prune -af

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Aguardando 45 segundos para exclusao do projeto 2..."
sleep 45


echo "-----//-----//-----//-----//-----//-----//-----"
echo "ETAPA 6: AULA 02-KUBERNETES PROJETO 3"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Acessando a pasta do projeto da aula 2"
cd /home/ubuntu/imersao-devops-cloud-02/kube-news/src

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando o arquivo .dockerignore"
echo "node_modules/" > .dockerignore

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando a imagem Docker da aplicacao"
docker build -t pedroheeger/curso081_kube-news:v1 .

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Renomeando a tag da imagem"
docker tag pedroheeger/curso081_kube-news:v1 pedroheeger/curso081_kube-news:latest

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Enviando as imagens para o Docker Hub (Docker Registry)"
docker push pedroheeger/curso081_kube-news:v1
docker push pedroheeger/curso081_kube-news:latest

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando o cluster com Port Bind e Load Balancer"
k3d cluster create meucluster2 -p "8080:30000@loadbalancer"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Acessando a pasta do arquivo de Manifesto YAML"
cd /home/ubuntu/imersao-devops-cloud-02/kube-news/k8s

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Executando o arquivo de Manifesto YAML"
kubectl apply -f deployment2.yaml

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Aguardando 150 segundos para inserir os dados..."
sleep 150

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Realizando uma alteracao na aplicacao para versao v2"
sed -i 's/<img class="logo" src="\/img\/kubenews-logo\.svg" alt="Kubenews" srcset="" \/>/<img class="logo" src="\/img\/kubenews-logo\.svg" alt="Kubenews" srcset="" \/> - v2/' "/home/ubuntu/imersao-devops-cloud-02/kube-news/src/views/partial/header.ejs"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Acessando a pasta do projeto da aula 2"
cd /home/ubuntu/imersao-devops-cloud-02/kube-news/src

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Criando a imagem Docker da aplicacao na versao v2"
docker build -t pedroheeger/curso081_kube-news:v2 .

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Enviando a imagem da aplicacao na versao v2 para o Docker Hub (Docker Registry)"
docker push pedroheeger/curso081_kube-news:v2

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Acessando a pasta do arquivo de Manifesto YAML"
cd /home/ubuntu/imersao-devops-cloud-02/kube-news/k8s

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Realizando uma alteracao da versao da aplicacao no arquivo de manifesto YAML"
sed -i 's/image: pedroheeger\/curso081_kube-news:v1/image: pedroheeger\/curso081_kube-news:v2/' "/home/ubuntu/imersao-devops-cloud-02/kube-news/k8s/deployment2.yaml"

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Executando o arquivo de Manifesto YAML"
kubectl apply -f deployment2.yaml

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Aguardando 150 segundos para verificar a aplicacao..."
sleep 150

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo o arquivo de Manifesto YAML"
kubectl delete -f deployment2.yaml

echo "-----//-----//-----//-----//-----//-----//-----"
echo "Removendo o cluster"
k3d cluster delete meucluster2