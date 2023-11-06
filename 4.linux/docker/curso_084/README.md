# Containers Fundamentals   <img src="./0-aux/logo_course.jpg" alt="curso_084" width="auto" height="45">

### Repository: [course](../../../)   
### Platform: <a href="../../">4.Linux   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/4.linux.png" alt="4.linux" width="auto" height="25"></a>   
### Software/Subject: <a href="../">docker   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" alt="docker" width="auto" height="25"></a>
### Course: <a href="./">curso_084 (Containers Fundamentals)   <img src="./0-aux/logo_course.jpg" alt="curso_084" width="auto" height="25"></a>

#### <a href="https://github.com/PedroHeeger/main/blob/main/cert_ti/04-curso/os/linux/(23-08-22)%20Linux%20Fundamentals%20PH%204.Linux.pdf">Certificate</a>

---

### Theme:
- Operating System (OS)

### Used Tools:
- Operating System (OS): 
  - Linux <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" alt="linux" width="auto" height="25">
  - Windows 11 <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows11.png" alt="windows11" width="auto" height="25">
- Linux Distribution: 
  - Ubuntu <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ubuntu/ubuntu-plain.svg" alt="ubuntu" width="auto" height="25">
- Virtualization: 
  - Oracle VM VirtualBox   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/vm_virtualbox.png" alt="vm_virtualbox" width="auto" height="25">
- Cloud Services:
  - Google Drive <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/google_drive.png" alt="google_drive" width="auto" height="25">
- Containerization: 
  - Docker   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" alt="docker" width="auto" height="25">
- Language:
  - HTML   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" alt="html" width="auto" height="25">
  - Markdown   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/markdown/markdown-original.svg" alt="markdown" width="auto" height="25">
- Integrated Development Environment (IDE) and Text Editor:
  - Nano   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/nano.png" alt="nano" width="auto" height="25">
  - Vi   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/vi.png" alt="vi" width="auto" height="25">
  - VI iMproved (Vim)   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vim/vim-original.svg" alt="vim" width="auto" height="25">
  - Visual Studio Code (VS Code)   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" alt="vscode" width="auto" height="25">
- Versioning: 
  - Git   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="git" width="auto" height="25">
- Repository:
  - GitHub   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="github" width="auto" height="25">
- Command Line Interpreter (CLI):
  - Bash e Sh   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bash/bash-original.svg" alt="bash_sh" width="auto" height="25">
- Tools:
  - Advanced Package Tool (Apt)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/apt.png" alt="apt" width="auto" height="25">
  - Advanced Package Tool (Apt-Get)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/apt-get.jpg" alt="apt-get" width="auto" height="25">
  - Tar   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/tar.jpeg" alt="tar" width="auto" height="25">
  - Unrar   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/unrar.png" alt="unrar" width="auto" height="25">
  
---

<a name="item0"><h3>Course Strcuture:</h3></a>
1. <a href="#item01">Aula 01: Introdução</a><br>
2. <a href="#item02">Aula 02: Contêiner</a><br>
3. <a href="#item03">Aula 03: Mercado</a><br>
4. <a href="#item04">Aula 04: Microsserviços</a><br>
5. <a href="#item05">Aula 05: O SysAdmin, o Programador e o DBA</a><br>
6. <a href="#item06">Aula 06: Docker - Teoria</a><br>
7. <a href="#item07">Aula 07: Docker - Primeiros Passos</a><br>
8. <a href="#item08">Aula 08: Docker - Caminhando Sozinho</a><br>
9. <a href="#item09">Aula 09: Final</a><br>

---

### Objective:
Esse curso teve como objeto abordar sobre o assunto container, explicando seu conceito e como funcionam os containers, tendo como foco a principal ferramenta que é o **Docker**.

### Structure:
- O curso foi dividido em nove aulas.

### Development:

Todo conteúdo foi explicado neste arquivo de README, não sendo necessário nenhum outro arquivo. Os laboratórios foram executado na maquina virtual da plataforma do curso.

<a name="item01"><h4>Aula 01: Introdução</h4></a>[Back to summary](#item0)

A primeira aula foi teórica assim como todas as outras do curso, no qual foi apresentado o assunto do curso que foi sobre containers, cujo o foco seria na principal ferramenta de containers hoje no mercado, o **Docker**. Contudo, existem outras ferramentas equivalentes ao Docker como o **LXD** e o **Podman**, além de ferramentas de outras categorias como o **Containerd**, **Katacontainer** e **Cri-o**. Estas estão atreladas a um tipo de arquitetura mais complexa, geralmente distribuída e possuem um propósito diferente.

<a name="item02"><h4>Aula 02: Contêiner</h4></a>[Back to summary](#item0)

Na aula 2 foi explicado sobre o conceito de containers que são pequenos pacotes de software com todas as dependências dentro de si, leves e fáceis de mover entre os mais variados tipos de infraestrutura. Os containers são baseados em imagens que possuem camadas que podem ser compartilhadas entre si. Logo, foram abordados também os conceitos de imagens e camadas. Foi explanado a diferença entre maquinas virtuais e containers, como que é a infraestrutura de cada uma dels e como elas funcionam, sendo a maior diferença entre elas, o seu tamanho que o container é bem mais leve. Por fim, foi explicado porque o nome container foi adotado para essa tecnologia, ou melhor, um conjunto de tecnologias do kernel do **Linux**.

<a name="item03"><h4>Aula 03: Mercado</h4></a>[Back to summary](#item0)



<a name="item04"><h4>Aula 04: Microsserviços</h4></a>[Back to summary](#item0)


<a name="item05"><h4>Aula 05: O SysAdmin, o Programador e o DBA</h4></a>[Back to summary](#item0)


<a name="item06"><h4>Aula 06: Docker - Teoria</h4></a>[Back to summary](#item0)


<a name="item07"><h4>Aula 07: Docker - Primeiros Passos</h4></a>[Back to summary](#item0)



<a name="item08"><h4>Aula 08: Docker - Caminhando Sozinho</h4></a>[Back to summary](#item0)




<a name="item09"><h4>Aula 09: Final</h4></a>[Back to summary](#item0)













##### Lab 1: (15:03)
Com a conclusão da primeira, foi realizado o laboratório 1, onde foram executados algumas ações utilizando alguns comandos. Primeiro foi criado um arquivo de texto com o software editor de texto **Vim**, escrevendo uma mensagem nele, salvando e fechando o arquivo. Depois, foi novamente aberto o arquivo e no modo de comandos (digitar `esc` para esse modo) foi digitado o comando `:%s/Software/Source/g` para alterar a palavra `Software` por `Source`. No exercício seguinte foi aberto o arquivo de novo no modo de comandos, copiado e colado a primeira linha com o comando `yyp`, e então digitando o comando `:1;2y` foi copiado o intervalo da linha 1 até a 2 e colado esse intervalo com `p`, salvando e saindo do arquivo com o comando `:wq`. Continuando, foi aberto o arquivo e no modo de comandos digitado `?4Linux` para procurar esse conjunto de caracteres de baixo para cima, confirmando com `enter` e subindo com o `n`. Novamente no arquivo no modo de comandos foi utilizado o comando `:set hlsearch` que serve para localizar palavras iguais. Já com o comando `:!cat /etc/issue.net` foi inserido o comando `cat /etc/issue.net` no final do arquivo. Por fim, foi criado um novo arquivo com o **Vim** e ativado o modo de sytanx com o comando `: sytanx on`, e então foi escrito um comando python.

##### Lab 2: (12:03)
Com a conclusão da segunda aula, foi realizado o laboratório 2. Neste laboratório foi inserido um repositório na soruces.list, em seguida, foi executado os comandos `apt-get update` para atualização dos pacotes e `apt-get upgrade` para atualização do sistema. Com o comando `apt-get remove nmap` foi desinstalado o software **Nmap**. Com o comando `apt-get clean` foi realizado a limpeza do cache do **Apt-Get**. Na sequência, com o comando `aptitude search make` foi localizado o pacote **Make**. Já com o comando `aptitude show make` foi exibindo as informações desse pacote. Com o comando `aptitude install figlet` foi instalado o pacote **Figlet**. Enquanto com o comando `aptitude purge ntp`, o ntp foi removido. Por fim, com o comando `aptitude -f install` foi corrijido as dependências de instalação dos pacotes caso houvesse algum erro.

##### Lab 3: (06:28)
Com a conclusão da quarta aula foi realizado o último laboratório. Com o comando `pstree` foi exibido os processos em formato de árvore. Já com o comando `ps aux` foram filtradas as informações sobre os processos. Na atividade seguinte foi utilizado o comando `ps aux` novamente para identificar o número do processo (`pid`) `tail -f /dev/random` e alterar a prioridade do processo com o comando `renice -n 10 pid`. Para pausar o processo foi utilizado o comando `kill -19 pid`. Já com o comando `jobs`, todos os processos em segundo plano eram listados. O processo `tail -f /dev/random` que estava em segundo plano ao ser pausado foi enviado de volta para o primeiro plano com o comando `fg 2`, sendo `2` o número do processo listado no comando `jobs`. Como este comando ficava preso, foi utilizado o atalho `Ctrl + C` para interrompe-lo. Na atividade seguinte, foi executado o comando `nohup ping 4linux.com.br &` que ficava rodando em segundo plano. Por fim, com o comando `fuser -u /bin/ping` foi exibido o usuário que executou o comando `ping`.