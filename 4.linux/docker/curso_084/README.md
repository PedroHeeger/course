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

Na terceira aula a temática foi referente ao mercado de containers, onde foram apresentadas diversas pesquisas de como está o cenário do uso de containers e explicado o motivo de adotar containers do ponto de vista do negócio. A utilização de containers propicia economia e agilidade sem sacrificar a estabilidade. Foi realizado a introdução do conceito de orquestradores de containers, que são ferramentas capazes de gerenciar e monitorar os containers com a capacidade de movê-los de um lugar para o outro caso algo errado aconteça, balancear a carga entre as réplicas existentes, fornecer uma espécie de “auto discovery” (descoberta automática) para novos serviços, entre outras coisas. Por fim, foi apresentada a ferramenta mais utilizada hoje no mercado de orquestração que é o **Kubernetes**. 

<a name="item04"><h4>Aula 04: Microsserviços</h4></a>[Back to summary](#item0)

Na aula de número 4 deste curso foi abordado sobre as arquiteturas de desenvolvimento. A primeira delas, foi a arquitetura monolítica que é muito comum e quase sempre mais simples de conceber. Este tipo de arquitetura é como se todo o software fosse um grande pacote com tudo junto e esse é o grande problema desta arquitetura, pois caso haja qualquer problema com a aplicação, todo software terá que ser alterado. A segunda arquitetura é a orientada a serviços que surgiu antes dos anos 2000 e é uma abordagem para separar as aplicacões monolíticas em serviços independentes que utilizou uma forma de comunicação entre processos chamada SOAP (Simple Object Access Protocol). Contundo essa forma de comunicação não possuía um padrão, dificultando alterações e novas implementações. Para solucionar esse problema surgiu a figura do ESB (Enterprise Service Bus), uma espécie de tradutor comum para padronizar essa comunicação, porém o mesmo passou a ser um gargalo entre as aplicações e suas mensagens. 

Diversas abordagens para evitar o problema do ESB surgiram, mas a que acabou se tornando uma forma de implementação foi a arquitetura de microsserviços. Os microsserviços são uma implementação específica do SOA em que os serviços conversam diretamente entre si, sem a utilização do ESB, no lugar dele utiliza um protocolo e formato de dados padrão conhecido como APIs RET. Este tipo de arquitetura permite fragmentar a infraestrutura em pedaços, muito mais fácil e econômico para gerenciar. Os containers facilitaram drasticamente a adoção deste tipo de arquitetura.

<a name="item05"><h4>Aula 05: O SysAdmin, o Programador e o DBA</h4></a>[Back to summary](#item0)

Nesta aula foi explicado qual papel de um Sysadmin, de um Programador e de um DBA e o porque os três precisam ter conhecimento de containers. O papel do sysadmin, ou o time de operações, é trabalhar com os orquestradores, como **Kubernetes** ou **Docker Swarm**, e também trabalhar com as máquinas que possuem contêineres soltos, que apesar de não ser o cenário ideal, é bastante comum. O papel do programador, ou do time de desenvolvimento, é criar imagens e testá-las. Isso inclui praticamente todos os comandos e possibilidades disponíveis no **Docker**. Já o DBA, apesar de ser um pouco menos, também precisa ter conhecimento de containers já que nos últimos anos as comunidades do **MySQL**, **MongoDB** e **PostgreSQL** criaram formas de automatizar e gerenciar os bancos dentro do Kubernetes através do que chamamos de Operators, controlando-os de uma maneira mais inteligente e facilitando tarefas como backups e replicação.

<a name="item06"><h4>Aula 06: Docker - Teoria</h4></a>[Back to summary](#item0)

Nesta aula foi dado uma breve introdução sobre o software **Docker** foco deste curso e a ferramenta mais utilizada do mercado quando o assunto é containers. Foi explicado que um 
Docker utiliza de algumas tecnologias presentes no kernel do Linux como `Namespaces`, `Cgroups` e `Union Filesystems (UnionFS)` para criar containers através de imagens preexistentes. A imagem, por sua vez, é imutável e pode ser formada por diversas camadas que podem ser compartilhadas entre si, no qual essas camadas são de apenas leitura (R). A camada de leitura e escrita (RW) é justamente a camada do container quando ele é criado, sendo possível criar diversos containers a partir de uma mesma imagem. Dentro das imagens há um pequeno sistema operacional que compartilha o kernel com a máquina hospedeira, além da aplicação, binários, bibliotecas e qualquer outro tipo de arquivo especificado durante a criação desta imagem.

Através do `Namespaces` os processos do container ficam isolados do sistema operacional, isso significa que os processos dos containers podem ser vistos da máquina hospedeira, mas os processos da máquina hospedeira não podem ser vistos pelo container. O mesmo funciona para a interface de rede, por padrão um container **Docker** acredita que é o “localhost” e possui sua própria interface de rede física. Mas esta interface pode ser vista da máquina hospedeira como uma interface virtual começando com o prefixo `veth`. O `Union Filesystems (UnionFS)` é um tipo de `Union Mount`, um sistema de arquivos formado por todas as camadas tanto da imagem como do próprio container, sendo este também isolado do sistema de arquivos da maquina hospedeira. Já o `Cgroups` é o responsável por fazer a limitação de recurso computacional, limitação de CPU, limitação de memória.




<a name="item07"><h4>Aula 07: Docker - Primeiros Passos</h4></a>[Back to summary](#item0)



<a name="item08"><h4>Aula 08: Docker - Caminhando Sozinho</h4></a>[Back to summary](#item0)




<a name="item09"><h4>Aula 09: Final</h4></a>[Back to summary](#item0)




