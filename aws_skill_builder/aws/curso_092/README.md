# Introduction to Amazon Elastic Compute Cloud (EC2)   <img src="./0-aux/logo_course.png" alt="curso_092" width="auto" height="45">

### Repository: [course](../../../)   
### Platform: <a href="../../">aws_skill_builder   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/aws_skill_builder.png" alt="aws_skill_builder" width="auto" height="25"></a>
### Software/Subject: <a href="../">aws   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original.svg" alt="aws" width="auto" height="25"></a>
### Course: <a href="./">curso_092 (Introduction to Amazon Elastic Compute Cloud (EC2))   <img src="./0-aux/logo_course.png" alt="curso_092" width="auto" height="25"></a>

#### <a href="https://github.com/PedroHeeger/main/blob/main/cert_ti/04-curso/cloud/aws/(23-11-14)_Introduction...(EC2)_PH_AWSSB.pdf">Certificate</a>

---

### Theme:
- Cloud Computing

### Used Tools:
- Operating System (OS): 
  - Linux   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" alt="linux" width="auto" height="25">
  - Windows 11   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows11.png" alt="windows11" width="auto" height="25">
- Linux Distribution: 
  - Ubuntu   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ubuntu/ubuntu-plain.svg" alt="ubuntu" width="auto" height="25">
- Cloud:
  - Amazon Web Services (AWS)   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original.svg" alt="aws" width="auto" height="25">
- Cloud Services:
  - Amazon Elastic Compute Cloud (EC2)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_ec2.svg" alt="aws_ec2" width="auto" height="25">
  - AWS Software Development Kit (SDK) - Boto3   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_sdk_python.svg" alt="aws_sdk" width="auto" height="25">
  - Google Drive   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/google_drive.png" alt="google_drive" width="auto" height="25">
- Language:
  - HTML   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" alt="html" width="auto" height="25">
  - Markdown   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/markdown/markdown-original.svg" alt="markdown" width="auto" height="25">
  - Python   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" alt="python" width="auto" height="25">
- Integrated Development Environment (IDE) and Text Editor:
  - Visual Studio Code (VS Code)   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" alt="vscode" width="auto" height="25">
- Versioning: 
  - Git   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="git" width="auto" height="25">
- Repository:
  - GitHub   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="github" width="auto" height="25">
- Command Line Interpreter (CLI):
  - AWS Command Line Interface (CLI)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_cli.svg" alt="aws_cli" width="auto" height="25">
  - Bash e Sh   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bash/bash-original.svg" alt="bash_sh" width="auto" height="25">
  - Windows PowerShell   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows_power_shell.png" alt="windows_power_shell" width="auto" height="25">
- Tools:
  - Windows Terminal   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows_terminal.png" alt="windows_terminal" width="auto" height="25">
- Network:
  - Filezilla   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/filezilla/filezilla-plain.svg" alt="filezilla" width="auto" height="25">
  - OpenSSH   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/openssh.png" alt="openssh" width="auto" height="25">
  - PuTTY   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/putty/putty-original.svg" alt="putty" width="auto" height="25">
  - PuTTYgen   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/puttygen.png" alt="puttygen" width="auto" height="25">
  - PuTTY PSCP   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/putty/putty-original.svg" alt="putty_pscp" width="auto" height="25">
  - WinSCP   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/winscp.png" alt="winscp" width="auto" height="25">

---

<a name="item0"><h3>Course Strcuture:</h3></a>
1. <a href="#item01">1.0 Introduction to Amazon Elastic Compute Cloud (EC2) (Portuguese)</a><br>
  1.1 <a href="#item01.01">1.1 Prática 1: Instanciando uma maquina na AWS</a><br>
2. <a href="#item02">2.0 Remote Access (Windows-Linux)</a><br>
  2.1 <a href="#item02.01">Prática 2: OpenSSH (Windows-Linux) - Acesso Remoto</a><br>
  2.2 <a href="#item02.02">Prática 3: OpenSSH (Windows-Linux) - Execução Remota de Comandos</a><br>
  2.3 <a href="#item02.03">Prática 4: OpenSSH (Windows-Linux) - Transferência de Arquivos</a><br>
  2.4 <a href="#item02.04">Prática 5: OpenSSH (Windows-Linux) - Transferência de Pastas</a><br>
  2.5 <a href="#item02.05">Prática 6: PuTTY (Windows-Linux) - Acesso Remoto</a><br>
  2.6 <a href="#item02.06">Prática 7: PuTTY (Windows-Linux) - Execução Remota de Comandos</a><br>
  2.7 <a href="#item02.07">Prática 8: PuTTY (Windows-Linux) - Transferência de Arquivos</a><br>
  2.8 <a href="#item02.08">Prática 9: PuTTY (Windows-Linux) - Transferência de Pastas</a><br>

  
  2.9 <a href="#item02.09">Prática 10: VS Code (Windows-Linux) - Acesso Remoto</a><br>
  2.10 <a href="#item02.10">Prática 11: WinScp (Windows-Linux) - Transferência de Arquivos e Pastas</a><br>
  2.11 <a href="#item02.11">Prática 12: FileZilla (Windows-Linux) - Transferência de Arquivos e Pastas</a><br>

  2.12 <a href="#item02.13">Prática 13: PowerShell (Windows-Linux) - Acesso Remoto</a><br>
  2.13 <a href="#item02.12">Prática 14: PowerShell (Windows-Linux) - Execução Remota de Comandos</a><br>
  2.14 <a href="#item02.12">Prática 15: PowerShell (Windows-Linux) - Transferência de Arquivos</a><br>
  2.15 <a href="#item02.12">Prática 16: PowerShell (Windows-Linux) - Transferência de Pastas</a><br>

2. <a href="#item02">2.0 Remote Access (Linux-Windows)</a><br>




2. <a href="#item02">2.0 Remote Access (Windows-Windows Server)</a><br>
  2.13 <a href="#item02.13">Prática X: PowerShell (Windows-Windows Server) - Acesso Remoto</a><br>
  2.13 <a href="#item02.13">Prática 14: PowerShell (Windows-Windows Server) - Execução Remota de Comandos</a><br>


2. <a href="#item02">2.0 Remote Access (Windows-Windows Server)</a><br>
  2.13 <a href="#item02.13">Prática X: PowerShell (Windows-Windows) - Acesso Remoto</a><br>
  2.14 <a href="#item02.14">Prática 15: PowerShell (Windows-Windows) - Execução Remota de Comandos</a><br>



  2.12 <a href="#item02.12">Prática 13: RDP Client (Windows-Windows Server) - Acesso Remoto Gráfico</a><br>
  2.13 <a href="#item02.13">Prática 14: RDP Client (Windows-Linux) - Acesso Remoto Gráfico</a><br>
  2.14 <a href="#item02.14">Prática 15: RDP Client (Windows-Windows) - Acesso Remoto Gráfico</a><br>
  2.15 <a href="#item02.15">Prática 16: Server Manager (Windows Server-Windows Server) - Acesso Remoto</a><br>


  2.14 <a href="#item02.14">Prática 15: AnyDesk (Windows-Android) - Acesso Remoto</a><br>





---

### Objective:
O objetivo desse curso foi introduzir o serviço **Amazon Elastic Compute Cloud (Amazon EC2)**, um Web service que oferece capacidade computacional segura e redimensionável na nuvem. Neste curso, foi apresentado uma visão geral do serviço e demonstrado como criar e configurar uma instância do Amazon EC2.

### Structure:
A estrutura do curso é formada por:
- Este arquivo de README.md.
- A pasta `resources` com os arquivos de teste de transferência, o arquivo `udFileTest.sh` (User Data) e o arquivo de script em **Python** para provisionamento da instância EC2.
- A pasta `0-aux`, pasta auxiliar com imagens utilizadas na construção desse arquivo de README. 

<div align="Center"><figure>
    <img src="./0-aux/img01.png" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:

<a name="item01"><h4>1.0 Introduction to Amazon Elastic Compute Cloud (EC2) (Portuguese)</h4></a>[Back to summary](#item0)

O **Amazon EC2** significa Elastic Compute Cloud, onde *Compute* refere-se à capacidade computacional ou recursos do servidor. *Cloud* refere-se ao fato que esses são recursos de computação armazenados na nuvem e *Elastic* refere-se ao fato que propriamente configurado, é possível aumentar ou diminuir a quantidade de servidores necessários para uma aplicação de forma automática de acordo com as demandas atuais da aplicação. O **Amazon EC2** pode ser utilizado para diversos fins, sendo o principal o provisionamento de servidores. Um servidor é uma maquina ou um computador que é destinado para alguma finalidade específica. Existem vários tipos de servidores como: Application Server; Web Server; Database Server; Game Server; Mail Server; Media Server; Catalog Server; File Server; Computing Server; Proxy Server; Etc.

No **Amazon EC2** é utilizado o conceito de *Instâncias EC2*, as instâncias são virtualizações a nível de hardware em uma mesma maquina. Ou seja, em um computador através de um **Hyper Visor**, maquinas virtuais são criadas para serem utilizadas pelos usuários da cloud da **AWS**, essas maquinas virtuais que são chamadas de instâncias. Existe a possibilidade de provisionar uma maquina inteira como uma única instância, sem ter que dividir os recursos de uma mesma maquina em várias maquinas virtuais. Ao utilizar instâncias EC2 de uma mesma maquina, o isolamento entre elas impedem que uma possa acessar as informações da outra ou interagi-lás. Porém é possível permitir a comunicação de uma instância com outras instâncias da mesma maquina ou de outras maquinas e também com outros serviços da cloud.

Ao instanciar uma maquina virtual no EC2, algumas configurações devem ser determindas e, algumas delas influenciam na capacidade computacional e no custo, quanto maior a capacidade maior o custo da maquina. A primeira definição realizada é um valor para a tag padrão nome, outras tags podem ser criadas com suas chaves e valores específicas. Uma outra definição é qual sistema operacional será utilizado pela maquina virtual, para isso deve-se escolher uma *Amazon Machine Image (AMI)* que são imagens de sistemas operacionais já definidas para diversos tipos de sistemas operacionais. Também é possível escolher a arquitetura do processador (x86, ARM, etc.). Uma outra importante definição é o tipo de instância, onde é definido quantas CPUs e quantidade de memória ram serão utilizadas. Em seguida é definido um arquivo par de chaves que serve para conectar à instância.

Com relação as configurações de rede, deve-se definir qual **Virtual Private Cloud (VPC)** será utilizada, quais sub-redes dessa rede serão utilizadas, se será criado um novo grupo de segurança (Firewall) para esta rede ou será utilizado o padrão. Caso seja criado um novo grupo de segurança é necessário definir um nome e uma descrição para o grupo, além das regras que este contemplará. Também deve ser definido se o IP público será atribuído automaticamente ou não. Por padrão, cada região da **AWS** já possui uma VPC padrão com uma sub-rede para cada zona de disponibilidade desta região, além de um grupo de segurança padrão com uma única regra configurada que libera todas as portas de todos os protocolos para esta VPC, possibilitando a comunicação interna da rede, ou seja, comunicação entre as sub-redes da mesma VPC.

Na configuração de armazenamento é definido a quantidade de memória em gigas e qual tipo de volume de armazenamento que será associado às instâncias EC2. O tipo de volume de armazenamento é gerenciado pelo serviço **Amazon Elastic Block Store (EBS)**, onde cada tipo tem características e desempenho específicos. Também é possível fazer uma configuração avançada determinando outros parâmetros do volume que será criado associado à instância.

Já na parte de detalhes avançados, existem várias definições, porém a que mais utilizo é a opção *User data* onde é indicado um script ou um arquivo de script que é executado logo após a maquina virtual ser instanciada.

<a name="item01.01"><h4>1.1 Prática 1: Instanciando uma maquina na AWS</h4></a>[Back to summary](#item0)

Neste curso, foi utilizado o arquivo [ec2Instance.py](./resources/ec2Instance.py), armazenado no diretório [resources](./resources/), que era uma cópia deste mesmo arquivo do meu repositório privado de modelos. Neste arquivo existiam dois scripts em **Python**, um para criação e outro para exclusão de uma maquina virtual no serviço **Amazon Elastic Compute Cloud (EC2)** da **AWS**. O script utilizou o SDK **Boto3** para interagir a linguagem **Python** com as APIs dos serviços da **AWS**. Como na maquina física **Windows** onde o script era executado já possuía instalada a **AWS CLI** e configurada com o usuário do IAM administrador da minha conta da **AWS** (`PedroHeegerAdmin`), o **Boto3** utilizou as mesmas credenciais. Ao iniciar os scripts de criação e/ou exclusão, existiam estruturas de condição que verificavam uma entrada fornecida pelo usuário, se ela fosse positiva o comando era executado, caso contrário, não era executado. Também existiam outras condicionais que verificavam a existência ou não do elemeneto que deseja-se construir, no caso, uma instância do EC2. As variáveis utilizadas eram definidas antes desses comandos. 

Com relação as configurações da instância, a AMI utilizada foi `Ubuntu Server 22.04 LTS (HVM), SSD Volume Type` que era de um **Linux Ubuntu**, o tipo de instância foi a `t2.micro` para seguir no modo *free tier* e o arquivo de user data foi o [udFile.sh](./resources/udFile.sh). Este arquivo apenas atualizava os pacotes, o sistema, baixava e instalava os pacotes **Nano**, **Vim**, **Curl**, **Wget**, **Unzip**, **Zip** e **Git**. O par de chaves utilizado foi o `keyPairUniversal` que era um par de chaves já criado e que era utilizado na maioria dos meus projetos. Sobre a configuração de rede, foi utilizada a VPC padrão da região `us-east-1` (Norte da Virgínia), enquanto a sub-rede foi da zona de disponibilidade `us-east-1a`. O grupo de segurança foi o padrão desta VPC. Nas duas imagens (02 e 03) a seguir é exibido a execução do código em **Python** criando a instância e o dashboard das instâncias do EC2 no console da **AWS** mostrando a instância em execução.

<div align="Center"><figure>
    <img src="./0-aux/img02.png" alt="img02"><br>
    <figcaption>Imagem 02.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img03.png" alt="img03"><br>
    <figcaption>Imagem 03.</figcaption>
</figure></div><br>

Por fim, para mostrar que arquivo [udFile.sh](./resources/udFile.sh) foi executado e os pacotes foram instalados, a imagem 04 é exibida. Note que os software `Nano`, `Wget`, `Curl` e os demais foram instalados corretamente. Com o mesmo arquivo de **Python**, o segundo script foi executado para remover a instância quando ela não fosse mais necessária.

<div align="Center"><figure>
    <img src="./0-aux/img04.png" alt="img04"><br>
    <figcaption>Imagem 04.</figcaption>
</figure></div><br>


<a name="item02"><h4>2.0 Remote Access</h4></a>[Back to summary](#item0)

Este tópico foi elaborado para explicar como realizar procedimentos específicos de acesso remoto entre maquinas diferentes. O acesso remoto refere-se à capacidade de interagir com e controlar um sistema computacional, dispositivo ou rede a partir de um local diferente, permitindo a administração, transferência de arquivos ou execução de comandos à distância. Esse recurso é comumente utilizado para gerenciamento eficiente de servidores, máquinas virtuais ou dispositivos remotos. Aqui será apresentado como realizar acesso remoto, como executar um comando remotamente e como transferir arquivos entre maquinas. 

Para fins de melhor compreensão, algumas considerações a serem feitas. A maquina física ou maquina local utilizada é minha maquina **Windows** principal que uso no dia a dia, quando estiver utilizando outra maquina física que não seja essa, será mencionado. A cloud utilizada para criação de maquinas virtuais é a **AWS** e foi explicado no item anterior como instanciar uma maquina no serviço EC2 da **AWS**. Serão instanciadas três maquinas, a primeira um **Linux Ubuntu**, cujo usuário dessa instância é `ubuntu` e já foi criada no item anterior. A segunda instância será um **Windows Server**, cujo usuário será `Administrator`.



este caso, o usuário dessa instância será `ubuntu`, mas se a maquina fosse um **Amazon Linux**, o usuário seria `ec2-user`. É importante confirmar as informações de login do sistema operacional escolhido. 


Durante boa parte deste tópico, o processo será maquina física **Windows** para maquina virtual **Linux**, a instância. O inverso desse processo também será executado. 



Com relação as tranferências de arquivos, foram criados arquivos e pastas de testes para comprovar as execuções. O arquivo [fileTransfer.txt](./resources/fileTransfer.txt) foi elaborado para simular uma transferência de arquivos. Já pasta [folderTest](./resources/folderTest/) foi criada com dois arquivos, iguais o anterior, de nomes [fileTranfer1.txt](./resources/folderTest/fileTransfer1.txt) e [fileTranfer2.txt](./resources/folderTest/fileTransfer2.txt), para simular uma transferência de pasta recursivamente. A pasta [receiveTest] foi desenvolvida sem nenhum item dentro, apenas para receber as transferências quando o processo fosse inverso (instância para maquina física). Nesse caso, após cada execução os arquivos dentro desta pasta tinham que ser excluídos para executar o processo novamente, seja de uma outra forma ou da mesma forma.

<a name="item02.01"><h4>2.1 Prática 2: OpenSSH (Windows-Linux) - Acesso Remoto</h4></a>[Back to summary](#item0)

Nessa primeira prática de acesso remoto foi utilizada a instância do serviço **Amazon Elastic Compute Cloud (EC2)** criada no item anterior desse curso através do arquivo em **Python** [ec2Instance.py](./resources/ec2Instance.py). Esta instância possuía o sistema operacional de um **Linux Ubuntu** e foi utilizada como maquina remota na maioria das práticas desenvolvidas nesse item. Assim o usuário utilizado para acesso remoto nesta instância foi o `ubuntu`. Na instanciação da maquina foi definido o arquivo par de chaves `keyPairUniversal` que é um par de chaves já criado e utilizado como padrão nos meus projetos. Esse par de chaves foi utilizado para autenticação sempre que necessário.

O protocolo SSH foi também o mais utilizado durante essas práticas, por tanto foi necessário criar uma regra de entrada permitindo acesso na porta `22` do protocolo `TCP` no grupo de segurança associado a essa instância. *Secure Shell (SSH)* é um protocolo de rede criptografado que permite o acesso remoto seguro a um computador ou servidor. Ele fornece uma maneira segura de autenticar e transmitir dados pela internet. O SSH é comumente usado para administração remota de sistemas, transferência segura de arquivos e execução de comandos remotamente. Ele criptografa todas as informações transmitidas, incluindo senhas, para proteger contra ataques e interceptações não autorizadas.

Uma forma bem simples de realizar o acesso remoto é com o software **OpenSSH**. Este foi instalado na maquina física **Windows**, mas também poderia ser instalado em uma maquina **Linux**. Sua instalação contemplava instalar o server e o client. O **OpenSSH** pode ser utilizado pela interface de linha de comando (CLI), um shell como o **PowerShell** no **Windows** e o **Bash** no **Linux**, ou ainda através de software específicos que fazem uso do **OpenSSH** como é o caso do **Visual Studio Code (VS Code)**.

O comando `ssh username@host_name` é o comando básico utilizado para iniciar uma conexão SSH com uma maquina, onde `username` é o nome de usuário da maquina que deseja-se acessar e `host_name` é o nome do host, que pode ser o DNS ou IP público da instância. O parâmetro `-i` é adicionado quando é necessário informar um arquivo par de chaves privada, deve ser informado o caminho completo até o arquivo. Com os comandos `ssh -i G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.pem ubuntu@ec2-3-85-96-44.compute-1.amazonaws.com` e `ssh -i G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.pem ubuntu@3.85.96.44` executado no **PowerShell** aberto pelo software **Windows Terminal**, o acesso remoto a instância do EC2 foi realizada. Na imagem 04 abaixo é exibido o acesso remoto sendo realizado da maquina física a instância do EC2 através do **OpenSSH** no **PowerShell**.

<div align="Center"><figure>
    <img src="./0-aux/img04.png" alt="img04"><br>
    <figcaption>Imagem 04.</figcaption>
</figure></div><br>











<a name="item02.02"><h4>2.2 Prática 3: OpenSSH (Windows-Linux) - Execução Remota de Comandos</h4></a>[Back to summary](#item0)

Caso prefira solicitar que a instância execute um comando sem ter que fazer o acesso remoto, basta acrescentar um comando, no caso em **Bash** porque era um **Linux Ubuntu**, ao final do comando SSH e entre aspas. O comando `ssh -i "G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.pem" ubuntu@3.85.96.44 "ls /"` executou o comando `ls /` para listar tudo dentro da raíz do instância do EC2. Na imagem 05 é exibido o comando sendo executado na instância EC2 sem acessá-la remotamente. Ao acessar remotamente instância ou solicitar a execução de um comando, na primeira vez pode ser questionado se deseja continuar, pois a autenticidade da instância não foi estabelecida, neste caso, basta confirmar com `yes`. 

<div align="Center"><figure>
    <img src="./0-aux/img05.png" alt="img05"><br>
    <figcaption>Imagem 05.</figcaption>
</figure></div><br>

<a name="item02.03"><h4>2.3 Prática 4: OpenSSH (Windows-Linux) - Transferência de Arquivos</h4></a>[Back to summary](#item0)

Além do acesso remoto, uma outra execução importante é a transferência de arquivos entre as maquinas. Também existem várias formas de realizar isso, por enquanto ainda será utilizado apenas o **OpenSSH**. Para transferir arquivos entre maquinas com o **OpenSSH**, o comando base é o `scp path_file username@host_name:path_destination` que é bastante parecido com o anterior. O *Secure Copy (SCP)* é um utilitário associado ao **OpenSSH** e é usado para transferir arquivos de forma segura entre máquinas remotas usando o protocolo SSH. Neste comando é indicado o arquivo que deseja-se transferir e sua extensão, a depender da pasta corrente pode ser necessário indicar o caminho completo para o arquivo, e também o caminho de destino, onde esse arquivo deverá ser armazenado na outra maquina. O processo inverso também é possível, ficando da seguinte maneira `scp username@host_name:path_destination path_file`. Caso seja necessário indicar um arquivo par de chaves, o parâmetro é o mesmo (`-i`). 

Com o comando `scp -i "G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.pem" fileTransfer.txt ubuntu@ec2-54-221-65-206.compute-1.amazonaws.com:/home/ubuntu`, o arquivo [fileTransfer.txt](./resources/fileTransfer.txt) foi transferido da maquina física para o diretório `/home/ubuntu` da instância EC2. O processo inverso foi executado com o comando `scp -i "G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.pem" ubuntu@ec2-54-221-65-206.compute-1.amazonaws.com:/home/ubuntu/fileTransfer.txt "G:/Meu Drive/4_PROJ/course/aws_skill_builder/aws/curso_092/resources/receiveTest/"` e esse mesmo arquivo foi transferido da instância para a pasta [receiveTest](./resources/receiveTest/) na maquina física. A imagem 06 evidencia esses dois processos.

<div align="Center"><figure>
    <img src="./0-aux/img06.png" alt="img06"><br>
    <figcaption>Imagem 06.</figcaption>
</figure></div><br>

<!-- Abaixo na imagem 15 mostra a transferência de arquivo para instância na pasta determinada. Na imagem 16 é mostrado o arquivo na pasta aberto pelo **VS Code**.

<div align="Center"><figure>
    <img src="./0-aux/img15.png" alt="img15"><br>
    <figcaption>Imagem 15.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img16.png" alt="img16"><br>
    <figcaption>Imagem 16.</figcaption>
</figure></div><br> -->


<a name="item02.04"><h4>2.4 Prática 5: OpenSSH (Windows-Linux) - Transferência de Pastas</h4></a>[Back to summary](#item0)

Com relação a transferência de pastas com arquivos, ou seja, recursivamente, o comando é o mesmo do anterior adicionando o parâmetro `-r "path_folder"` e informando o caminho da pasta. Com o comando `scp -i "G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.pem" -r "G:/Meu Drive/4_PROJ/course/aws_skill_builder/aws/curso_092/resources/folderTest" ubuntu@ec2-54-221-65-206.compute-1.amazonaws.com:/home/ubuntu`, a pasta `folderTest` foi enviada para o diretório do usuário `/home/ubuntu` da instância EC2. O processo inversou funcionou com o comando `scp -i "G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.pem" -r ubuntu@ec2-54-221-65-206.compute-1.amazonaws.com:/home/ubuntu/folderTest "G:/Meu Drive/4_PROJ/course/aws_skill_builder/aws/curso_092/resources/receiveTest"`. As imagens 17 e 18 mostram essa execução.

<div align="Center"><figure>
    <img src="./0-aux/img17.png" alt="img17"><br>
    <figcaption>Imagem 17.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img18.png" alt="img18"><br>
    <figcaption>Imagem 18.</figcaption>
</figure></div><br>

<a name="item02.05"><h4>2.5 Prática 6: PuTTY (Windows-Linux) - Acesso Remoto</h4></a>[Back to summary](#item0)

Uma outra forma de realizar o acesso remoto é pelo sofware **PuTTY**, para isso foi necessário baixá-lo e baixar também o **PuTTYgen**. O **PuTTYgen** é utilizado para salvar o arquivo par de chaves privada no formato `.pem` em `.ppk`, formato utilizado pelo **PuTTY** para realização do acesso remoto. Para converter o arquivo par de chaves formato `.pem` em `.ppk`, deve-se abrir o **PuTTYgen**, carregar o arquivo `.pem`, manter o parâmetro `Type of key to generate` em `RSA` e `Number of bits in a generated key` em `2048` e então clicar na opção `Save private key` e salvar com a extensão `.ppk`. Não foi necessáio criar uma senha, então caso seja questionado sobre a não criação de senha, pode escolher a opção `Sim`. A imagem 06 a seguir demonstra geração da chave `.ppk`.

<div align="Center"><figure>
    <img src="./0-aux/img06.png" alt="img06"><br>
    <figcaption>Imagem 06.</figcaption>
</figure></div><br>

A conexão com o **PuTTY** pode ser feita tanto por uma interface gráfica que vai gerar uma interface de linha de comando para executar os comandos na instância, ou também pelo próprio terminal da maquina física utilizando uma interface de linha de comando como o **PowerShell**. No primeiro caso deve-se abrir o software, digitar o IP público da instância, manter a porta `22` e a conexão `SSH`. É possível salvar e carregar configurações estabelecidas para as instâncias que serão acessadas. A imagem 07 mostra a configuração na opção inicial (`Session`). Dentro da opção `Connection` e em `SSH`, `Auth`, tem a opção `Credentials` e no campo `Private key file for authentication` é onde deve ser inserido o caminho até o arquivo par de chave no formato `.ppk`, a imagem 08 ilustra essa etapa. Já a imagem 09 mostra a interface de linha de comando fornecida pelo **PuTTY** para executar os comandos na instância. Uma aviso de alerta pode aparecer, basta escolher a opção `Accept`. Em seguida, deve ser digitado o nome do usuário que neste caso é `ubuntu` já que a maquina instanciada era um **Linux Ubuntu**. Assim o acesso remoto pela interface gráfica do próprio **PuTTY** foi concretizada.

<div align="Center"><figure>
    <img src="./0-aux/img07.png" alt="img07"><br>
    <figcaption>Imagem 07.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img08.png" alt="img08"><br>
    <figcaption>Imagem 08.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img09.png" alt="img09"><br>
    <figcaption>Imagem 09.</figcaption>
</figure></div><br>

Para executar o acesso remoto pelo **PuTTY** de uma interface de linha de comando da própria maquina, o comando básico é `plink -ssh ubuntu@host_name`, praticamente igual ao com o software **OpenSSH**. Lembrando que `ubuntu` é o nome de usuário da maquina instanciada e o `host_name` pode ser o DNS ou IP público da instância. O parâmetro `-i` pode ser adicionado com o caminho do arquivo par de chaves privada no formato `.ppk`. O comando `plink -i "G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.ppk" -ssh ubuntu@54.221.65.206` foi executado para realizar esse acesso remoto pelo **PuTTY** na CLI, conforme apresentado na imagem 10 a seguir.

<div align="Center"><figure>
    <img src="./0-aux/img10.png" alt="img10"><br>
    <figcaption>Imagem 10.</figcaption>
</figure></div><br>

<a name="item02.06"><h4>2.6 Prática 7: PuTTY (Windows-Linux) - Execução Remota de Comandos</h4></a>[Back to summary](#item0)

Assim como no **OpenSSH**, no **PuTTY** é possível passar um comando ao final do comando `plink` para que ele seja executado dentro da instância, sem a necessidade de acessá-la. Isso foi feito com o comando `plink -i "G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.ppk" -ssh ubuntu@54.221.65.206 "ls /"` que executando o comando `ls /` dentro da instância para listar o diretório raíz. A imagem 11 exibe o resultado dessa execução. No **PuTTY**, igualmente ao **OpenSSH**, na primeira vez que um comando é executado ou um acesso remoto é realizado sempre aparece uma mensagem questionando se a maquina que está sendo acessada é confiável, como é uma maquina conhecida pode ser confirmado com `y`.

<div align="Center"><figure>
    <img src="./0-aux/img11.png" alt="img11"><br>
    <figcaption>Imagem 11.</figcaption>
</figure></div><br>

<a name="item02.07"><h4>2.7 Prática 8: PuTTY (Windows-Linux) - Transferência de Arquivos</h4></a>[Back to summary](#item0)

Para transferir arquivos com o **PuTTY** utiliza-se o comando base `pscp "path_file" username@host_name:path_destination` que é bastante semelhante com o do **OpenSSH**. O processo inverso funciona também no **PuTTY** através do comando `pscp username@host_name:path_destination "path_file"`. Nestes comandos, além do nome de usuário e do nome de host, tem que ser fornecido o caminho do arquivo que deseja-se transferir e a pasta de destino na instância. No caso do processo inverso, o arquivo tem que ser informado na instância e a pasta destino é da maquina física. A adição do parâmetro `-i` pode ser utilizado se for necessária a autenticação do usuário através de arquivo par de chaves. Com o comando `pscp -i "G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.ppk" fileTransfer.txt ubuntu@ec2-54-221-65-206.compute-1.amazonaws.com:/home/ubuntu`, o arquivo [fileTransfer.txt](./resources/fileTransfer.txt) foi transferido da maquina física para o diretório `/home/ubuntu` da instância EC2. O processo inverso foi executado com o comando `pscp -i "G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.ppk" ubuntu@ec2-54-221-65-206.compute-1.amazonaws.com:/home/ubuntu/fileTransfer.txt "G:/Meu Drive/4_PROJ/course/aws_skill_builder/aws/curso_092/resources/receiveTest/"` e esse mesmo arquivo foi transferido da instância para a pasta [receiveTest](./resources/receiveTest/) na maquina física. A imagem 12 (19) evidencia esses dois processos.

<div align="Center"><figure>
    <img src="./0-aux/img12.png" alt="img12"><br>
    <figcaption>Imagem 12.</figcaption>
</figure></div><br>


<a name="item02.08"><h4>2.8 Prática 9: PuTTY (Windows-Linux) - Transferência de Pastas</h4></a>[Back to summary](#item0)

Com relação a transferência de pastas com arquivos dentro, o comando é o mesmo anterior adicionando o parâmetro `-r` que significa recursivamente, similar ao comando do **OpenSSH**. Nesse caso, foi executado o comando `pscp -i "G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.ppk" -r "G:/Meu Drive/4_PROJ/course/aws_skill_builder/aws/curso_092/resources/folderTest" ubuntu@54.221.65.206:/home/ubuntu/` que transferiu a pasta [folderTest](./resources/folderTest/) com seus dois arquivos para o diretório do usuário `/home/ubuntu/` na instância do EC2. O processo inverso funcionou com o comando `pscp -i "G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.ppk" -r ubuntu@54.221.65.206:/home/ubuntu/folderTest "G:/Meu Drive/4_PROJ/course/aws_skill_builder/aws/curso_092/resources/receiveTest/"`. Uma opção é acrescentar o parâmetro `-batch` após o `pscp` que faz com que seja aceita a conexão sem questionar ao usuário. Importante ressaltar que sempre que o envio for para uma pasta, esta pasta tem que existir na instância. A imagem 20 mostra essas duas transferências.

<div align="Center"><figure>
    <img src="./0-aux/img20.png" alt="img20"><br>
    <figcaption>Imagem 20.</figcaption>
</figure></div><br>

<a name="item02.09"><h4>2.9 Prática 10: VS Code (Windows-Linux) - Acesso Remoto</h4></a>[Back to summary](#item0)

Uma outra forma de acesso remoto é através do ambiente de desenvolvimento integrado (IDE) **Visual Studio Code (VS Code)**. Com a utilização da extensão **Remote - SSH (Remote Explorer)** é possível abrir o **VS Code** na instância criada ou até em uma pasta específica desta instância através de uma conexão SSH. As configurações são armazenadas em um arquivo `config` dentro da pasta `.ssh` que fica no diretório do usuário. Através desse arquivo de configuração, a extensão **Remote Explorer** consegue listar as conexões existentes, e assim é possível executar o acesso remoto em uma nova janela ou na janela atual do **VS Code**. 

Para criar uma nova conexão SSH, dentro do **VS Code** foi necessário ir na extensão e na opção `SSH` clicar no `+` para abrir a paleta de comandos já na opção `Remote-SSH:Add New SSH Host...`, ou então pesquisar essa opção ao abrir a paleta de comandos com `Ctrl + Shift + P`. Em seguida, digitar o comando do **OpenSSH** (`ssh -i "G:/Meu Drive/4_PROJ/scripts/scripts_model/.default/secrets/awsKeyPair/keyPairUniversal.pem" ubuntu@54.221.65.206`) passando o arquivo par de chaves privada no formato `.pem`. Com isso, foi questionado onde seriam salvas as informações de configuração, que neste caso foi salvo em `.ssh/config` no diretório do usuário. Assim aparecereu como opção a nova instância configurada na barra lateral do **VS Code**. Em alguns casos, pode ser necessário atualizar para as alterações serem realizadas. O arquivo de configuração armazena cada configuração SSH criada na seguinte estrutura abaixo.

```
Host 54.221.65.206
  HostName 54.221.65.206
  IdentityFile "G:\Meu Drive\4_PROJ\scripts\scripts_model\python\.default\secrets\keyPairTest.pem"
  User ubuntu
```

O `HostName` é o nome do host, ou seja, o IP ou DNS da maquina, o `IdentityFile` é o caminho completo para o arquivo par de chaves privada no formato `.pem` e o `User` é o nome de usuário no qual deseja-se acessar, que no caso foi `ubuntu`, pois era uma maquina **Linux Ubuntu**. Também é possível criar a conexão diretamente no arquivo passando as informações: `Host`, `HostName`, `IdentityFile` e `User`. Outras configurações adicionais podem ser realizadas. Após a configuração da instância, bastava ir nela e escolher se seria aberta na janela atual ou em uma nova janela do **VS Code**. Se fosse em uma nova janela, após abrir deveria ser escolhido qual era a pasta de trabalho. Vale lembrar que a instância é uma maquina **Linux Ubuntu**, logo o sistema de arquivos é diferente da maquina física **Windows**. Na imagem 12 é evidenciado uma janela do **VS Code** aberta no diretório `/home/ubuntu` da instância. Na imagem 13 é mostrada a lista de maquinas e diretórios de trabalhos configurados na extensão **Remote SSH**. Já na imagem 14 é exibido o arquivo de configuração `.ssh/config`.

<div align="Center"><figure>
    <img src="./0-aux/img12.png" alt="img12"><br>
    <figcaption>Imagem 12.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img13.png" alt="img13"><br>
    <figcaption>Imagem 13.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img14.png" alt="img14"><br>
    <figcaption>Imagem 14.</figcaption>
</figure></div><br>

<a name="item02.10"><h4>2.10 Prática 11: WinScp (Windows-Linux) - Transferência de Arquivos e Pastas</h4></a>[Back to summary](#item0)

Uma outra forma de transferir arquivos foi através do software **Winscp** que possui uma interface gráfica. Para utilizá-lo, foi necessário baixar e instalar esse software. Com ele na maquina, ao abri-lo, teve que ser escolhida a opção `Nova Aba` para configurar uma sessão. Na janela que abriu, os campos foram preenchidos da seguinte forma: o `Protocolo de arquivo` foi o `SFTP`, o `Host` foi o IP ou DNS público da instância, a porta foi `22`, o usuário foi `ubuntu` e a senha foi mantida em branco, pois ao clicar na opção `Avançado...` uma nova janela foi aberta. Nesta nova janela foi selecionada a opção `SSH` em `Autenticação` e no campo `Arquivo de Chave Privada` foi inserido o caminho até o arquivo par de chaves formato `.ppk`, as demais configurações foram mantidas como estavam e então pode ser feita a confirmação das duas janelas. As imagens 21 e 22 mostram as configurações dessas duas janelas.

<div align="Center"><figure>
    <img src="./0-aux/img21.png" alt="img21"><br>
    <figcaption>Imagem 21.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img22.png" alt="img22"><br>
    <figcaption>Imagem 22.</figcaption>
</figure></div><br>

Após confirmar em `Login` a conexão foi realizada e uma mensagem foi apresentada informando que o servidor era desconhecido e se queria adicionar a chave ao cache, que foi confirmado com `Sim`. Assim do lado direito era aberto no diretório `/home/ubuntu` da instância e do lado esquerdo no diretório que fosse escolhido na maquina física, neste caso foi selecionado o diretório `resources` deste curso, onde estavamaos arquivos que devem ser transferidos. Na instância, foi acessado o diretório do usuário (`/home/ubuntu/`), era nela que seria enviado os arquivos e pastas de teste. Para enviar era só arrastar o arquivo do lado esquerdo (maquina físca) para o lado direito (instância) e o envio era executado. As imagens 23 e 24 mostram o antes e o depois do envio dos arquivos. Ao enviar os arquivos, uma mensagem de confirmação aparecia e que podia ser confirmado no `ok`.

<div align="Center"><figure>
    <img src="./0-aux/img23.png" alt="img23"><br>
    <figcaption>Imagem 23.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img24.png" alt="img24"><br>
    <figcaption>Imagem 24.</figcaption>
</figure></div><br>

<a name="item02.11"><h4>2.11 Prática 12: WinScp (Windows-Linux) - Transferência de Arquivos e Pastas</h4></a>[Back to summary](#item0)

A interface do outro softare, o **Filezilla** é parecida com o do **Winscp**. Também foi necessário baixar e instalar esse software. Com o **FileZilla** aberto, observe que a tela também era divida em esquerda (diretório da maquina física) e direita (diretório da instância). Para criar uma nova conexão, existia opção rápida que já era visível na tela, onde deveria ser informado o `Host`, `Nome de usuário`, `Senha` e `Porta`. Para configurar o arquivo par de chaves teve que ir em `Arquivos` e escolher a opção `Gerenciador de Sites...` para abrir a janela de configuração. O protocolo selecionado foi o `SFTP` que utiliza o `SSH` junto com o protocolo `FTP`, o `Host` era o IP ou DNS público da instância, a porta foi a `22`, já que é uma conexão `SSH`. No campo `Tipo de logon` foi selecionado a opção `Arquivo chave`, o usuário foi o `ubuntu` e em `Arquivo com chave` foi inserido o caminho para o arquivo par de chaves `.pem` ou `.ppk`. Na imagem 25 logo abaixo é exibida a configuração de conexão com a instância.

<div align="Center"><figure>
    <img src="./0-aux/img25.png" alt="img25"><br>
    <figcaption>Imagem 25.</figcaption>
</figure></div><br>

Um ponto legal do **FileZilla** foi que em cada lado (esquerdo e direto), ele dividia em superior e inferior, onde em superior mostrava a estrutura de pastas e em inferior mostrava os arquivos da pasta selecionada em cima, isso nas duas maquinas. O processo de transferência era o mesmo, só arrastar o arquivo de um lado para o outro. Na imagem 26 é ilustrado após a transferência dos arquivos.

<div align="Center"><figure>
    <img src="./0-aux/img26.png" alt="img26"><br>
    <figcaption>Imagem 26.</figcaption>
</figure></div><br>






























<a name="item02.12"><h4>2.12 Prática 13: RDP Client (Windows-Windows Server) - Acesso Remoto</h4></a>[Back to summary](#item0)

Neste caso foi explorado como realizar o acesso remoto gráfico da maquina física na instância do EC2 através do software **RDP Client**. Para isso foi preciso instanciar uma outra maquina no serviço **Amazon Elastic Compute Cloud (EC2)**. O **Remote Desktop Protocol Client (RDP Client)** é uma aplicação que permite aos usuários acessar e controlar remotamente um computador **Windows**, possibilitando a visualização e interação com a área de trabalho do sistema remoto. Dessa forma, como o **RDP Client** é destinado a maquinas **Windows** foi instanciada uma maquina **Windows Server**, cuja AMI era `ami-0f9c44e98edf38a2b`. O mesmo arquivo **Python** foi utilizado, apenas trocando a variável `image_id` por essa AMI.

Com a instância em execução, no console da **AWS**, ela foi selecionada e opção `Connect` foi clicada, direcionando para uma nova página que era a página `Connect to instance`. Nesta, existiam três abas, sendo cada uma com uma forma de conexão. As abas eram: `Session Manager` que é um recurso do serviço **AWS System Manager (SSM)**, `RDP client` que foi a forma utilizada, e `EC2 serial console`. Em `RDP client` as instruções fornecidas para conexão remota via qualquer software **RDP Client**. A única informação que não era fornecida de imediato era a senha. No campo `Password` tinha a opção `Get Password` que ao clicá-la era redirecionado para a página `Get Windows password`, conforme mostrada na imagem XX abaixo. A opção `Upload private key file` foi selecionada para escolher um arquivo par de chaves. O par de chaves utilizado por essa instância era o `keyPairUniversal`, um arquivo par de chaves já criado que é utilizado na maioria dos meus projetos. Ao selecioná-lo, as informações da chave são preenchidas no campo e ao clicar em `Descrypt password`, a senha é gerada retornando para a página anterior, conforme exibido na imagem XX.

<div align="Center"><figure>
    <img src="./0-aux/imgXX.png" alt="imgXX"><br>
    <figcaption>Imagem XX.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/imgXX.png" alt="imgXX"><br>
    <figcaption>Imagem XX.</figcaption>
</figure></div><br>

Com as informações, o próximo passo foi abrir o software **RDP Client** na maquina física, ele pode ser encontrado como o nome `Conexão de Área de Trabalho Remota (Remote Desktop Connection)`. Então a janela desse software foi aberta na aba `Geral` e na opção `Configurações de logon` tinha os campos `Computador` que deveria ser preenchido com o DNS ou IP público da instância e o nome de usuário que era o mesmo exibido no console, no caso, `Administrator`. Diversas outras configurações poderiam ser realizadas, inclusive salvar uma configuração já estabelecida. A imagem XX exibe a janela do **RDP Client** com as informações preenchidas. Ao clicar em `Conectar`, uma outra janela foi aberta solicitando a senha, conforme mostrado na imagem XX. A senha gerada lá no console deveria ser utilizada aqui. Após a confirmação da senha, a conexão foi realizada e uma outra janela exibiu uma mensagem de alerta questionando sobre a confiabilidade nesta maquina que desejava-se conectar, conforme imagem XX. Como era uma maquina conhecida, a instância EC2 no caso, foi clicado em `Sim` para indicar que era confiável. Após isso, uma a janela já com o acesso remoto gráfico foi aberta e era só esperar para acessar a área de trabalho dessa instância. Na imagem XX é mostrada área de trabalho ao realizar o primeiro acesso. Perceba que um questionamento referente ao `Networks` é feito perguntando se gostaria de permitir que este PC, no caso a instância, fosse descoberto por outros computadores ou dispositivos nessa rede, como isso não ia ser utilizado foi selecionado `No`. Para finalizar o acesso remoto era só clicar no `X` e confirmar a desconexão.

<div align="Center"><figure>
    <img src="./0-aux/imgXX.png" alt="imgXX"><br>
    <figcaption>Imagem XX.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/imgXX.png" alt="imgXX"><br>
    <figcaption>Imagem XX.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/imgXX.png" alt="imgXX"><br>
    <figcaption>Imagem XX.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/imgXX.png" alt="imgXX"><br>
    <figcaption>Imagem XX.</figcaption>
</figure></div><br>


<a name="item02.13"><h4>2.13 Prática 14: RDP Client (Windows-Linux) - Acesso Remoto</h4></a>[Back to summary](#item0)

Neste caso foi explorado como realizar o acesso remoto gráfico da maquina física na instância do EC2 através do software **RDP Client**. Para isso foi preciso instanciar uma outra maquina no serviço **Amazon Elastic Compute Cloud (EC2)** que contivesse ambiente gráfico. A única imagem de maquina (AMI) encontrada que atendia a esse requisito foi de uma **Amazon Linux**, cuja AMI era `ami-02aead0a55359d6ec`. O mesmo arquivo **Python** foi utilizado, apenas trocando as variáveis `image_id` e `device_name` para `/dev/xvda` que na **Amazon Linux**, o dispositivo de armazenamento é esse. 

Com a instância em execução, no console da **AWS**, ela foi selecionada e opção `Connect` foi clicada, direcionando para uma nova página que era a página `Connect to instance`. Nesta, existiam três abas, sendo cada uma com uma forma de conexão. As abas eram: `Session Manager` que é um recurso do serviço **AWS System Manager (SSM)**, `RDP client` que foi a forma utilizada, e `EC2 serial console`. Em `RDP client` as instruções fornecidas para conexão remota via qualquer software **RDP Client**. O **Remote Desktop Protocol Client (RDP Client)** é uma aplicação que permite aos usuários acessar e controlar remotamente um computador **Windows**, possibilitando a visualização e interação com a área de trabalho do sistema remoto.

A única informação que não era fornecida de imediato era a senha. No campo `Password` tinha a opção `Get Password` que ao clicá-la era redirecionado para a página `Get Windows password`. 





`sudo apt install xrdp xorgxrdp freerdp2-x11`
`sudo ufw status`
`sudo ufw enable`
`sudo ufw allow from ip to any port 3389`


<a name="item02.14"><h4>2.14 Prática 15: AnyDesk (Windows-Android) - Acesso Remoto</h4></a>[Back to summary](#item0)








