# Workshop Linux - Do Zero ao Firewall   <img src="../curso_082/0-aux/logo_course.jpeg" alt="curso_082" width="auto" height="45">

### Repository: [course](../../../../)
### Platform: <a href="../../">vagner_fonseca   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/vagner_fonseca.png" alt="vagner_fonseca" width="auto" height="25"></a>
### Software/Subject: <a href="../">linux  <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/linux.png" alt="linux" width="auto" height="25"></a>
### Course: <a href="./">curso_082 (Workshop Linux - Do Zero ao Firewall)   <img src="../curso_082/0-aux/logo_course.jpeg" alt="curso_082" width="auto" height="25"></a>

---

### Theme:
- Network
- Operating System (OS)

### Used Tools:
- Operating System (OS): 
  - Linux   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" alt="linux" width="auto" height="25">
  - Windows 11   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows11.png" alt="windows11" width="auto" height="25">
- Linux Distribution: 
  - Ubuntu   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ubuntu/ubuntu-plain.svg" alt="ubuntu" width="auto" height="25">
- Cloud Services:
  - Google Drive <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/google_drive.png" alt="google_drive" width="auto" height="25">
- Containerization: 
  - Docker   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" alt="docker" width="auto" height="25">
- Language:
  - HTML   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" alt="html" width="auto" height="25">
  - Markdown   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/markdown/markdown-original.svg" alt="markdown" width="auto" height="25">
- Integrated Development Environment (IDE) and Text Editor:
  - Nano   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/nano.png" alt="nano" width="auto" height="25">
  - Visual Studio Code (VS Code)   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" alt="vscode" width="auto" height="25">
- Versioning: 
  - Git   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="git" width="auto" height="25">
- Repository:
  - GitHub   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="github" width="auto" height="25">
- Command Line Interpreter (CLI):
  - Bash e Sh   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bash/bash-original.svg" alt="bash_sh" width="auto" height="25">
  - Oh My Zshell (Oh My ZSh)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/oh_my_zshell.png" alt="oh_my_zshell" width="auto" height="25">
  - Systemctl   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/systemctl.png" alt="systemctl" width="auto" height="25">
  - Windows PowerShell   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows_power_shell.png" alt="windows_power_shell" width="auto" height="25">
  - ZShell   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/zshell.png" alt="zshell" width="auto" height="25">
- Server and Databases:
  - Nginx   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nginx/nginx-original.svg" alt="nginx" width="auto" height="25">
- Tools:
  - Advanced Package Tool (Apt)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/apt.png" alt="apt" width="auto" height="25">
  - Advanced Package Tool (Apt-Get)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/apt-get.jpg" alt="apt-get" width="auto" height="25">
  - Curl   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/curl.png" alt="curl" width="auto" height="25">
  - Node Package Manager (npm)   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/npm/npm-original-wordmark.svg" alt="npm" width="auto" height="25">
  - Unrar   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/unrar.png" alt="unrar" width="auto" height="25">
  - Wget   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/wget.webp" alt="wget" width="auto" height="25">
  
---

<a name="item0"><h3>Course Strcuture:</h3></a>
1. <a href="#item01">O que você precisa saber para começar no Linux do jeito certo + Preparação do Ambiente | Aula 1</a><br>
2. <a href="#item02">Potencializando seus ganhos + Seu primeiro projeto com Linux do início ao fim! | Aula 2</a><br>
3. <a href="#item03">O Mapa para se tornar um Especialista Linux e conseguir alavancar a sua carreira em TI | Aula 3</a><br>

---

### Objective:
O objetivo desse projeto prático foi introduzir algumas das principais ferramentas da área de **DevOps**, que são elas: **Docker**, **Kubernetes**, **AWS**, **GitHub Actions** e **Terraform**. Neste projeto foi desenvolvido uma aplicação web de um microblog (portal de notícias) escrito em **Node.js** que tem como persistência dos dados no banco **PostgreSQL**. Também foi desenvolvido um pipeline de entrega e integração contínua deste projeto utilizando os softwares **GitHub Actions**, **Kubernetes** como ambiente de execução da aplicação e o **Docker** como tecnologia para empacotar a imagem de container para rodar essa aplicação.

### Structure:
A estrutura do projeto (Imagem 01) é formada por:
- A pasta `automation` com os arquivos de scripts em **PowerShell** de automação (`criacao`, `exclusao` e `variaveis`) .
- Duas sub-pastas (`resources` e `secrets`) dentro da pasta `automation`. A primeira com recursos utilizados nesse projeto, seperados por sub-pastas, como arquivos de script em **Bash**, arquivos de manifesto **YAML**, arquivos **Dockerfile**, entre outros. Já a segunda com sub-pastas e arquivos de configuração do usuário da **AWS CLI** e do **Docker Hub**, além do arquivo par de chaves `.pem` para acesso remoto, sendo esta pasta não versionada para o **GitHub** por ter dados sensíveis.
- A pasta do repositório do projeto do **GitHub** do professor, com os projetos da aula 1 e da aula 2, utilizado também na aula 3, 4 e 5.
- A pasta `0-aux`, pasta auxiliar com imagens utilizadas na construção desse arquivo de README. 

<div align="Center"><figure>
    <img src="./0-aux/img01.png" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:
Este projeto foi desenvolvido em cinco aulas, além de conter quatro lives e três desafios. As etapas do projeto estão listadas abaixo.


<a name="item01"><h4>O que você precisa saber para começar no Linux do jeito certo + Preparação do Ambiente | Aula 1</h4></a>[Back to summary](#item0)


<div align="Center"><figure>
    <img src="./0-aux/img04.png" alt="img04"><br>
    <figcaption>Imagem 04.</figcaption>
</figure></div><br>

<a name="item02"><h4>Potencializando seus ganhos + Seu primeiro projeto com Linux do início ao fim! | Aula 2</h4></a>[Back to summary](#item0)


<a name="item03"><h4>O Mapa para se tornar um Especialista Linux e conseguir alavancar a sua carreira em TI | Aula 3</h4></a>[Back to summary](#item0)

