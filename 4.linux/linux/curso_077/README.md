# Linux Fundamentals   <img src="./0-aux/logo_course.jpg" alt="curso_077" width="auto" height="45">

### Repository: [course](../../../)   
### Platform: <a href="../../">dio   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/dio.jpeg" alt="dio" width="auto" height="25"></a>   
### Software/Subject: <a href="../">linux   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" alt="linux" width="auto" height="25"></a>
### Course: <a href="./">curso_077 (Linux Fundamentals)   <img src="./0-aux/logo_course.jpg" alt="curso_077" width="auto" height="25"></a>

#### <a href="https://github.com/PedroHeeger/main/blob/main/cert_ti/03-conclu/os/linux/(23-08-03)%20Cert%20Linux%20do%20Zero%20PH%20DIO.pdf">Certificate</a>

---

### Theme:
- Operating System (OS)

### Used Tools:
- Operating System (OS): 
  - Linux <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" alt="linux" width="auto" height="25">
  - Windows 11 <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows11.png" alt="windows11" width="auto" height="25">
- Linux Distribution: 
  - Ubuntu <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ubuntu/ubuntu-plain.svg" alt="ubuntu" width="auto" height="25">
- Environment: 
  - VM VirtualBox <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/vm_virtualbox.png" alt="vm_virtualbox" width="auto" height="25">
- Integrated Development Environment (IDE):
  - VS Code   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" alt="vscode" width="auto" height="25">
- Versioning: 
  - Git   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="git" width="auto" height="25">
- Repository:
  - GitHub   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="github" width="auto" height="25">
- Command Line Interpreter (CLI):
  - bash <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bash/bash-original.svg" alt="bash" width="auto" height="25">
- Others:
  - Google Drive <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/google_drive.png" width="auto" height="25">

---

### Course Structure
1. Aula 01: Bem-vindo ao Maravilhoso Mundo do Linux
2. Aula 02: Primeiros passos no Linux
3. Aula 03: Obtendo ajuda no Linux
4. Filesystem Hierarchy Standard e Comandos Indispensáveis 

---

### Objective:
Esse curso teve como objeto apresentar as ferramentas e comandos básicos do sistema operacional Linux.

### Structure:
- O curso foi dividido em quatro aulas e três laboratórios (dentro da plataforma do curso).

<div align="Center"><figure>
    <img src="./0-aux/img01.PNG" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:

Todo conteúdo foi explicado neste arquivo de README, não sendo necessário nenhum outro arquivo. O acompanhamento do curso foi realizado em uma maquina virtual **Linux Ubuntu** com ambiente gráfico instanciada através do software **VM Virtual Box**. Os laboratórios foram executado na maquina virtual da plataforma do curso.

#### Class 1:
Na primeira aula foram apresentados alguns assuntos teóricos inicias como: o mercado para o sistema Linux, os tipos de certificaçÕes Linux, a história do Linux, as licenças OpenSource, a evolução do sistema Linux e algumas distribuições existentes. Também foi apresentado o terminal e explicado superficialmente como funciona o sistema linux: representação por arquivos (tudo no Linux é arquivo), aspecto case-sensitive, permissões para executar arquivos, arquivos e diretórios ocultos, divisão em camadas, superusuário (root) e aspecto multitarefa / multiusuário.

#### Class 2:
A aula 2 foi inciada com uma explicação dos componentes básicos de uma rede (gateway, broadcast e máscara de rede) e a estrutura de um sistema operacional (Terminais Virtuas-TTY, Display Manager-DM, Sessões, Interface de Linha de Comando-CLI, etc.). Em seguida, foram introduzidos alguns comandos básicos (`shutdown`, `halt -p`, `poweroff`, `init 0`, `init 6`, `reboot`, `exit`, `logout`), foi explicado também como criar novas sessões no mesmo terminal e como sair delas, a diferença entre usuário comum e superusuário. Foi apresentado os conceitos de Shell, variáveis locais, variáveis globais e alias. Também foi ensinado sobre os arquivos de configuração do Shell. Por fim, o último tópico foi com relação aos caminhos e diretórios do Linux, utilizando comandos como `ls`, `cd`, `pwd`, entre outros.

#### Class 3:

Na terceira aula 3, o primeiro conteúdo apresentado foi as formas de documentação, que podem ser três: Howto's, Manuais e Documentação. No segundo conteúdo foi utilizado alguns comandos de ajuda como `help`, `apropos` e `whatis`. No assunto seguinte, foi explicado sobre o comando `man`, que guarda os manuais mais completos sobre determinados comandos, sendo divididos em nove pastas. O próximo conteúdo exibiu os comandos de informação `info`, `whereis` e `which`, além de apresentar outros programas como `yelp`, com ele é possível acessar manuais de forma gráfica, desde que esteja em uma distribuição Linux com ambiente gráfico. O software `xman`, que é um front-end para o comando `man`, que tenta facilitar o acesso as `man pages`, também através de uma interface gráfica.

#### Class 4:

Na última aula, foi explicado sobre o **File Hierarchy Standard (FHS)** e a estrutura principal de diretórios do sistema, definindo cada diretório da raíz. Também foi mostrado alguns caracteres coringas que podem ser utilizados com os comandos, alguns deles são `*`, `!`, `?` e `[]`. No último conteúdo foi explorado o comando `find` com diversas flags existentes.

#### Lab 1: 15:03

Com a conclusão da primeira e segunda aula, foi realizado o laboratório 1, onde foram executados os seguintes comandos: `pwd`, `man ls`, `cd`, `cd -`, `apropos print`, `clear`, `ls /usr/share/man`, `fc -l -3`, `cd /`, `which halt` e `shutdown -r 15`.

#### Lab 2: 11:21

Com a conclusão da terceira aula, foi realizado o laboratório 2, onde foram executados os seguintes comandos: `touch /tmp/auditoria.log`, `mkdir /etc/skel/Documentos`, `mkdir /etc/skel/Planilhas`, `mkdir /etc/skel/Lixeira`, `ls -R /etc/skel`, `ls -a /etc`, `cp /var/log/*.log /tmp`, `cp /etc/profile /tmp`, `mv /tmp/profile /tmp/perfil`, `find /etc/*.conf` e `rm -rf /tmp/*`.

#### Lab 3: 11:00

Com a conclusão da quarta aula, foi realizado o último laboratório, onde foram executados os seguintes comandos: `cat /etc/passwd | wc -l`, `w`, `uname -r`, `df -h`, `file /etc/passwd`, `file /usr/bin/passwd`, `env`, `free -m` e `echo $HISTSIZE`.