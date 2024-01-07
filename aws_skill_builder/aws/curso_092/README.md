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
- Network:
  - Filezilla   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/filezilla/filezilla-plain.svg" alt="filezilla" width="auto" height="25">
  - OpenSSH   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/openssh.png" alt="openssh" width="auto" height="25">
  - PuTTY   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/putty/putty-original.svg" alt="putty" width="auto" height="25">
  - PuTTYgen   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/puttygen.png" alt="puttygen" width="auto" height="25">
  - PuTTY PSCP   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/putty/putty-original.svg" alt="putty_pscp" width="auto" height="25">
  - WinSCP   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/winscp.png" alt="winscp" width="auto" height="25">

---

<a name="item0"><h3>Course Strcuture:</h3></a>
1. <a href="#item01">Introduction to Amazon Elastic Compute Cloud (EC2) (Portuguese)</a><br>

---

### Objective:
O objetivo desse curso foi introduzir o serviço **Amazon Elastic Compute Cloud (Amazon EC2)**, um Web service que oferece capacidade computacional segura e redimensionável na nuvem. Neste curso, foi apresentado uma visão geral do serviço e demonstrado como criar e configurar uma instância do Amazon EC2.

### Structure:
A estrutura do curso é formada por:
- Este arquivo de README.md.
- A pasta `resources` com o arquivos de teste de transferência, o arquivo `udFileTest.sh` (User Data) e o arquivo de script em **Python** para provisionamento da instância EC2.
- A pasta `0-aux`, pasta auxiliar com imagens utilizadas na construção desse arquivo de README. 

<div align="Center"><figure>
    <img src="./0-aux/img01.png" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:

<a name="item01"><h4>Introduction to Amazon Elastic Compute Cloud (EC2) (Portuguese)</h4></a>[Back to summary](#item0)

O **Amazon EC2** significa Elastic Compute Cloud, onde *Compute* refere-se à capacidade computacional ou recursos do servidor. *Cloud* refere-se ao fato que esses são recursos de computação armazenados na nuvem e *Elastic* refere-se ao fato que propriamente configurado, é possível aumentar ou diminuir a quantidade de servidores necessários para uma aplicação de forma automática de acordo com as demandas atuais da aplicação. O **Amazon EC2** pode ser utilizado para diversos fins, sendo o principal o provisionamento de servidores. Um servidor é uma maquina ou um computador que é destinado para alguma finalidade específica. Existem vários tipos de servidores como: Application Server; Web Server; Database Server; Game Server; Mail Server; Media Server; Catalog Server; File Server; Computing Server; Proxy Server; Etc.

No **Amazon EC2** é utilizado o conceito de *Instâncias EC2*, as instâncias são virtualizações a nível de hardware em uma mesma maquina. Ou seja, em um computador através de um **Hyper Visor**, maquinas virtuais são criadas para serem utilizadas pelos usuários da cloud da **AWS**, essas maquinas virtuais que são chamadas de instâncias. Existe a possibilidade de provisionar uma maquina inteira como uma única instância, sem ter que dividir os recursos de uma mesma maquina em várias maquinas virtuais. Ao utilizar instâncias EC2 de uma mesma maquina, o isolamento entre elas impedem que uma possa acessar as informações da outra ou interagi-lás. Porém é possível permitir a comunicação de uma instância com outras instâncias da mesma maquina ou de outras maquinas e também com outros serviços da cloud.

Ao instanciar uma maquina virtual no EC2, algumas configurações devem ser determindas e, algumas delas influenciam na capacidade computacional e no custo, quanto maior a capacidade maior o custo da maquina. A primeira definição realizada é um valor para a tag padrão nome, outras tags podem ser criadas com suas chaves e valores específicas. Uma outra definição é qual sistema operacional será utilizado pela maquina virtual, para isso deve-se escolher uma *Amazon Machine Image (AMI)* que são imagens de sistemas operacionais já definidas para diversos tipos de sistemas operacionais. Também é possível escolher a arquitetura do processador (x86, ARM, etc.). Uma outra importante definição é o tipo de instância, onde é definido quantas CPUs e quantidade de memória ram serão utilizadas. Em seguida é definido um arquivo par de chaves que serve para conectar à instância.

Com relação as configurações de rede, deve-se definir qual **Virtual Private Cloud (VPC)** será utilizada, quais sub-redes dessa rede serão utilizadas, se será criado um novo grupo de segurança (Firewall) para esta rede ou será utilizado o padrão. Caso seja criado um novo grupo de segurança é necessário definir um nome e uma descrição para o grupo, além das regras que este contemplará. Também deve ser definido se o IP público será atribuído automaticamente ou não. Por padrão, cada região da **AWS** já possui uma VPC padrão com uma sub-rede para cada zona de disponibilidade desta região, além de um grupo de segurança padrão com uma única regra configurada que libera todas as portas de todos os protocolos para esta VPC, possibilitando a comunicação interna da rede, ou seja, comunicação entre as sub-redes da mesma VPC.

Na configuração de armazenamento é definido a quantidade de memória em gigas e qual tipo de volume de armazenamento que será associado às instâncias EC2. O tipo de volume de armazenamento é gerenciado pelo serviço **Amazon Elastic Block Store (EBS)**, onde cada tipo tem características e desempenho específicos. Também é possível fazer uma configuração avançada determinando outros parâmetros do volume que será criado associado à instância.

Já na parte de detalhes avançados, existem várias definições, porém a que mais utilizo é a opção *User data* onde passo um script ou um arquivo de script que é executado logo após a maquina virtual ser instanciada.

Neste curso, foi utilizado o arquivo [ec2.py](./resources/ec2.py) que é uma cópia deste mesmo arquivo do meu repositório privado de modelos, onde existem dois scripts em **Python** um para criação e outro para exclusão de uma maquina virtual simples apenas para praticar e realizar alguns tipos de acesso remoto à ela. O script utiliza o SDK **Boto3** para interagir a linguagem **Python** com as APIs dos serviços da **AWS** e executar os comandos, utilizando as credenciais já configuradas na **AWS CLI**. Para iniciar a criação e exclusão há um comando que verifica uma entrada fornecida pelo usuário, se ela for positiva o comando é executado, caso contrário, não é executado. As variáveis utilizadas são definidas antes desses comandos. A AMI utilizada nesse caso foi a `Ubuntu Server 22.04 LTS (HVM), SSD Volume Type`, o tipo de instância foi a `t2.micro` para seguir no modo *free tier* e o arquivo *User data* foi o [udFileTest.sh](./resources/udFileTest.sh). Este arquivo apenas atualiza os pacotes, o sistema, baixa e instala os pacotes **Nano**, **Curl** e **Wget**. O par de chaves utilizado foi um já criado no repositório de modelos, caso não tenha criado é necessário gerá-lo para associar a instância. Com relação a configuração de rede, foi utilizada a VPC padrão da região `Norte da Virgínia`, enquanto a sub-rede foi da zona de disponibilidade `us-east-1a`. Nas duas imagens (02 e 03) a seguir é exibido a execução do código em **Python** criando a instância e o dashboard das instâncias do EC2 no console da **AWS** mostrando a instância em execução.

<div align="Center"><figure>
    <img src="./0-aux/img02.png" alt="img02"><br>
    <figcaption>Imagem 02.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img03.png" alt="img03"><br>
    <figcaption>Imagem 03.</figcaption>
</figure></div><br>

##### Acesso Remoto

Para realizar acesso remoto em uma instância EC2 existem algumas formas, porém antes deve-se liberar a porta `22` do protocolo `TCP` no grupo de segurança associado a essa instância, pois o acesso remoto é feito por conexões SSH. A forma mais simples de realizar o acesso remoto é instalando o **OpenSSH** na maquina física, que contempla instalar o server e o client. Pode ser instalado tanto no **Windows** como no **Linux**. Com o comando `ssh -i` deve-se informar o caminho para o arquivo par de chaves privada formato `.pem` e o endereço de conexão que pode ser da forma simples `ubuntu@3.85.96.44` ou da forma completa `ubuntu@ec2-3-85-96-44.compute-1.amazonaws.com`, sendo esse endereço formado pelo nome do usuário do sistema operacional, que no caso do **Linux Ubuntu** o usuário é o `ubuntu`, e o IP ou DNS público da instância. Abaixo é exibida as duas formas conexão com o **OpenSSH**.

```
ssh -i "G:\Meu Drive\4_PROJ\scripts\scripts_model\python\.default\secrets\keyPairTest.pem" ubuntu@54.221.65.206
```

```
ssh -i "G:\Meu Drive\4_PROJ\scripts\scripts_model\python\.default\secrets\keyPairTest.pem" ubuntu@ec2-54-221-65-206.compute-1.amazonaws.com
```

Caso prefira solicitar que a instância execute um comando sem ter que fazer o acesso remoto, basta acrescentar um comando, no caso em **Bash** porque é **Linux**, ao final e entre aspas. Abaixo na imagem 04 é ilustrado o acesso remoto feito à instância criada pela maquina física **Windows** com o **OpenSSH**. Já na imagem 05 é exibido o comando sendo executado na instância EC2 sem acessá-la remotamente. Ao acessar pela primeira vez a instância pode ser questionado se deseja continuar, pois a autenticidade da instância não foi estabelecida, neste caso, basta confirmar com `yes`.

<div align="Center"><figure>
    <img src="./0-aux/img04.png" alt="img04"><br>
    <figcaption>Imagem 04.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img05.png" alt="img05"><br>
    <figcaption>Imagem 05.</figcaption>
</figure></div><br>

Uma outra forma de realizar o acesso remoto é pelo sofware **PuTTY**, para isso é necessário baixá-lo e baixar também o **PuTTYgen**. O **PuTTYgen** é utilizado para salvar o arquivo par de chaves no formato `.pem` em `.ppk`, formato utilizado pelo **PuTTY** para realização do acesso remoto. Para converter o arquivo par de chaves formato `.pem` em `.ppk`, deve-se abrir o **PuTTYgen**, carregar o arquivo `.pem`, manter o parâmetro `Type of key to generate` em `RSA` e `Number of bits in a generated key` em `2048` e então clicar na opção `Save private key` e salvar com a extensão `.ppk`. Não é necessáio criar uma senha, então caso seja questionado sobre a não criação de senha, pode escolher a opção `Sim`. A imagem 06 a seguir demonstra geração da chave `.ppk`.

<div align="Center"><figure>
    <img src="./0-aux/img06.png" alt="img06"><br>
    <figcaption>Imagem 06.</figcaption>
</figure></div><br>

A conexão com o **PuTTY** pode ser feita tanto por uma interface gráfica que vai gerar uma interface de linha de comando para executar os comandos na instância, ou também pelo próprio terminal da maquina física. No primeiro caso deve-se abrir o software, digitar o IP público da instância, manter a porta `22` e a conexão `SSH`. É possível salvar e carregar configurações estabelecidas para as instâncias que serão acessadas. A imagem 07 mostra a configuração na opção inicial (`Session`). Dentro da opção `Connection` e em `SSH`, `Auth`, tem a opção `Credentials` e no campo `Private key file for authentication` é onde deve ser inserido o caminho até o arquivo par de chave no formato `.ppk`, a imagem 08 ilustra essa etapa. Já a imagem 09 mostra a interface de linha de comando fornecida pelo **PuTTY** para executar os comandos na instância. Uma aviso de alerta pode aparecer, basta escolher a opção `Accept`. Em seguida, deve ser digitado o nome do usuário que neste caso é `ubuntu` e então o acesso remoto é concretizado.

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

A execução direta pela interface de linha de comando da maquina física pode ser feita através dos seguintes comandos. Observe que assim como no software **OpenSSH**, existem duas formas de realizar o acesso remoto, uma com o endereço com o IP público e a outra com o DNS público da instância. Também, com o **PuTTY** é possível passar um comando ao final para executar um comando na instância sem ter que acessá-la. As imagens 10 e 11 mostram o acesso remoto e a execução de um comando através do software **PuTTY**. Assim como nos outros casos, na primeira vez sempre aparece uma mensagem questionando se a maquina que está sendo acessada é confiável, como é uma maquina que criei, então confirmo com `y`.

```
plink -i "G:\Meu Drive\4_PROJ\scripts\scripts_model\python\.default\secrets\keyPairTest.ppk" -ssh ubuntu@54.221.65.206
```

```
plink -i "G:\Meu Drive\4_PROJ\scripts\scripts_model\python\.default\secrets\keyPairTest.ppk" -ssh ubuntu@ec2-54-221-65-206.compute-1.amazonaws.com  
```

<div align="Center"><figure>
    <img src="./0-aux/img10.png" alt="img10"><br>
    <figcaption>Imagem 10.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img11.png" alt="img11"><br>
    <figcaption>Imagem 11.</figcaption>
</figure></div><br>

Uma outra forma de acesso remoto é através do ambiente de desenvolvimento integrado (IDE) **Visual Studio Code**, com a utilização da extensão **Remote - SSH (Remote Explorer)** é possível abrir o **VS Code** na instância criada ou até em uma pasta específica desta instância através de uma conexão `SSH`. As configurações são armazenadas em um arquivo `config` dentro da pasta `.ssh` que fica no diretório do usuário. Através desse arquivo de configuração, a extensão **Remote Explorer** consegue listar as conexões existentes, e assim é possível executar o acesso remoto em uma nova janela ou na janela atual do **VS Code**. Para criar uma nova conexão SSH, dentro do **VS Code** é necessário ir na extensão e na opção `SSH` clicar no `+` para abrir a paleta de comandos já na opção `Remote-SSH:Add New SSH Host...`, ou então pesquisar essa opção ao abrir a paleta de comandos com `Ctrl + Shift + P` e então digitar o comando `ssh -i "G:\Meu Drive\4_PROJ\scripts\scripts_model\python\.default\secrets\keyPairTest.pem" ubuntu@54.221.65.206` passando a chave privada no formato `.pem`. Com isso, será questionado onde serão salvas as informações de configuração, que neste caso é salvo em `.ssh/config` no diretório do usuário. Assim aparecerá como opção a nova instância configurada na barra lateral do **VS Code**, pode ser que seja necessário atualizar para as alterações serem realizadas. O arquivo de configuração armazena cada configuração SSH criada na seguinte estrutura:

```
Host 54.221.65.206
  HostName 54.221.65.206
  IdentityFile "G:\Meu Drive\4_PROJ\scripts\scripts_model\python\.default\secrets\keyPairTest.pem"
  User ubuntu
```

Também é possível criar a conexão diretamente no arquivo passando as informações `Host`, `HostName`, `IdentityFile` (Caminho para o arquivo par de chaves privada formato `.pem`) e `User`, outras configurações adicionais podem ser realizadas. Após configurar é só ir na nova instância configurada e escolher se será aberta na janela atual ou em uma nova janela do **VS Code**, se for em uma nova janela, após abrir deve escolher qual será a pasta de trabalho. Vale lembrar que a instância é uma maquina **Linux Ubuntu**, logo o sistema de arquivos é diferente da maquina física **Windows**. Na imagem 12 é evidenciado uma janela do **VS Code** aberta no diretório `/home/ubuntu` da instância. Na imagem 13 é mostrada a lista de maquinas e diretórios de trabalhos configurados na extensão **Remote SSH**. Já na imagem 13 é exibido o arquivo de configuração `.ssh/config`.

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

##### Transferência de Arquivos

Além do acesso remoto, uma outra execução importante é a transferência de arquivos entre as maquina. Existem várias formas de realizar isso, aqui serão apresentadas quatro formas, duas pela interface de linha de comando (CLI) com os softwares **OpenSSH** e **PuTTY**, e duas pela interface gráfica do usuário com os softwares **FileZilla** e **WinSCP**. No **OpenSSH** para transferer um arquivo da maquina física para instância é utilizado o comando abaixo. Este é bem parecido com o comando de acesso remoto, as diferenças são a adição do parâmetro `-r "path_file"` para indicar qual arquivo da maquina local vai ser transferido para outra maquina, e uma complementação do endereço da maquina de destino adicionando o caminho para onde esses arquivos devem ir `:/home/ubuntu/teste`. Aqui também tem a possibilidade de utilizar o endereço da maquina tanto o curto como o completo, lembrando de adicionar o caminho de destino. 

```
scp -i "G:\Meu Drive\4_PROJ\scripts\scripts_model\python\.default\secrets\keyPairTest.pem" -r "G:\Meu Drive\4_PROJ\course\aws_skill_builder\aws\curso_092\resources\fileTransfer.txt" ubuntu@ec2-54-221-65-206.compute-1.amazonaws.com:/home/ubuntu/teste
```

Neste caso, foi criado o arquivo [fileTransfer.txt](./resources/fileTransfer.txt) para executar o processo, enviado este arquivo da maquina física para instância provisionada no serviço **Amazon EC2**. Perceba que o arquivo vai ser armazenado na pasa `/home/ubuntu/teste`, para que isso aconteça, este diretório tem que existir lá. Então foi criado o diretório `teste` na instância. Abaixo na imagem 15 mostra a transferência de arquivo para instância na pasta determinada. Na imagem 16 é mostrado o arquivo na pasta aberto pelo **VS Code**.

<div align="Center"><figure>
    <img src="./0-aux/img15.png" alt="img15"><br>
    <figcaption>Imagem 15.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img16.png" alt="img16"><br>
    <figcaption>Imagem 16.</figcaption>
</figure></div><br>

Também é possível enviar uma pasta com arquivos dentro para instância. Para isso foi criado o diretório [folderTest](./resources/folderTest/) com dois arquivos igual o anterior ([fileTranfer1.txt](./resources/folderTest/fileTransfer1.txt) e [fileTranfer2.txt](./resources/folderTest/fileTransfer2.txt)). Com o comando abaixo foi enviado para o diretório `teste` da instância esta pasta com os respectivos arquivos. As imagens 17 e 18 mostram essa execução.

```
scp -i "G:\Meu Drive\4_PROJ\scripts\scripts_model\python\.default\secrets\keyPairTest.pem" -r "G:\Meu Drive\4_PROJ\course\aws_skill_builder\aws\curso_092\resources\folderTest" ubuntu@ec2-54-221-65-206.compute-1.amazonaws.com:/home/ubuntu/teste
```

<div align="Center"><figure>
    <img src="./0-aux/img17.png" alt="img17"><br>
    <figcaption>Imagem 17.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img18.png" alt="img18"><br>
    <figcaption>Imagem 18.</figcaption>
</figure></div><br>

Já com o **PuTTY** utiliza-se o comando abaixo que é bem parecido do **OpenSSH**. As imagens 19 e 20 mostram o envio do arquivo. Com relação ao envio de uma pasta com arquivos, a estrutura é a mesma do **OpenSSH**, acrescenta o parâmetro `-r` antes do arquivo que no caso será uma pasta. Uma opção é acrescentar o parâmetro `-batch` após o `pscp` que faz com que seja aceita a conexão sem questionar ao usuário. Importante comentar novamente, que sempre que o envio for para uma pasta, esta pasta tem que existir na instância.

```
pscp -i "G:\Meu Drive\4_PROJ\scripts\scripts_model\python\.default\secrets\keyPairTest.ppk" "G:\Meu Drive\4_PROJ\course\aws_skill_builder\aws\curso_092\resources\fileTransfer.txt" ubuntu@54.221.65.206:/home/ubuntu/teste
```

<div align="Center"><figure>
    <img src="./0-aux/img19.png" alt="img19"><br>
    <figcaption>Imagem 19.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img20.png" alt="img20"><br>
    <figcaption>Imagem 20.</figcaption>
</figure></div><br>

```
pscp -i "G:\Meu Drive\4_PROJ\scripts\scripts_model\python\.default\secrets\keyPairTest.ppk" -r "G:\Meu Drive\4_PROJ\course\aws_skill_builder\aws\curso_092\resources\folderTest" ubuntu@54.221.65.206:/home/ubuntu/teste
```

A terceira forma de transferir arquivos é através do software **Winscp** que possui uma interface gráfica. Para utilizá-lo, é necessário baixar e instalar o software. Com ele na maquina, ao abrir deve escolher a opção `Nova Aba` para configurar uma sessão. Na janela que abrirá, os campos devem ser preenchidos, o `Protocolo de arquivo` é o `SFTP`, o `Host` é o IP ou DNS público da instância, a porta é `22`, o usuário é o `ubuntu` e a senha deve ser deixada em branco, pois ao clicar na opção `Avançado...` uma nova janela será aberta. Nesta nova janela deve-se ir na opção `SSH` em `Autenticação` e no campo `Arquivo de Chave Privada` inserir o caminho até o arquivo par de chaves formato `.ppk`, as demais configurações podem deixar como estão e então pode ser feita a confirmação das duas janelas. As imagens 21 e 22 mostram as configurações dessas duas janelas.

<div align="Center"><figure>
    <img src="./0-aux/img21.png" alt="img21"><br>
    <figcaption>Imagem 21.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img22.png" alt="img22"><br>
    <figcaption>Imagem 22.</figcaption>
</figure></div><br>

Após confirmar em `Login` a conexão será realizada, uma mensagem será apresentada informando que o servidor é desconhecido e se quer adicionar a chave ao cache, pode ser confirmado com `Sim`. Assim do lado direito será aberto no diretório `/home/ubuntu` da instância e do lado esquerdo no diretório que for escolhido na maquina física, neste caso foi selecionado o diretório `resources` deste curso, onde estão os arquivos que devem ser transferidos. No diretório do usuário da instância, foi acessado a pasta `teste` que foi criada, é nela que será enviado os arquivos e pastas de teste. Para enviar é só arrastar o arquivo do lado esquerdo (maquina físca) para o lado direito (instância) e o envio é executado. As imagens 23 e 24 mostram o antes e o depois do envio dos arquivos. Ao enviar uma mensagem de confirmação aparecerá, podendo ser confirmado no `ok`.

<div align="Center"><figure>
    <img src="./0-aux/img23.png" alt="img23"><br>
    <figcaption>Imagem 23.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img24.png" alt="img24"><br>
    <figcaption>Imagem 24.</figcaption>
</figure></div><br>

A interface do outro softare, o **Filezilla** é parecida com o do **Winscp**. Também é necessário baixar e instalar o software. Com o **FileZilla** aberto, observe que a tela também é divida em esquerda (diretório da maquina física) e direita (diretório da instância). Para criar uma nova conexão, existe opção rápida que já é visível na tela, onde deve ser informado o `Host`, `Nome de usuário`, `Senha` e `Porta`. Para configurar o arquivo par de chaves deve ir em `Arquivos` e escolher a opção `Gerenciador de Sites...` para abrir a janela de configuração. O protocolo selecionado é o `SFTP` que utiliza o `SSH` junto com o protocolo `FTP`, o `Host` é o IP ou DNS público da instância, a porta é a `22`, já que é uma conexão `SSH`. No campo `Tipo de logon` deve selecionar a opção `Arquivo chave`, o usuário é o `ubuntu` e em `Arquivo com chave` inserir o caminho para o arquivo par de chaves `.pem` ou `.ppk`. Na imagem 25 logo abaixo é exibida a configuração de conexão com a instância.

<div align="Center"><figure>
    <img src="./0-aux/img25.png" alt="img25"><br>
    <figcaption>Imagem 25.</figcaption>
</figure></div><br>

Um ponto legal do **FileZilla** é que em cada lado (esquerdo e direto), ele divide em cima e baixo, onde em cima mostra a estrutura de pastas e em baixo mostra os arquivos da pasta selecionada em cima, isso nas duas maquinas. O processo de transferência é o mesmo, só arrastar o arquivo de um lado para o outro. Na imagem 26 é ilustrado após a transferência dos arquivos.

<div align="Center"><figure>
    <img src="./0-aux/img26.png" alt="img26"><br>
    <figcaption>Imagem 26.</figcaption>
</figure></div><br>

Por fim, para mostrar que arquivo [udFileTest.sh](./resources/udFileTest.sh) foi executado e os pacotes foram instalados, a imagem 27 é exibida. Note que os software `Nano`, `Wget` e `Curl` foram instalados corretamente. Com o mesmo arquivo de **Python**, o segundo script foi executado para remover a instância.

<div align="Center"><figure>
    <img src="./0-aux/img27.png" alt="img27"><br>
    <figcaption>Imagem 27.</figcaption>
</figure></div><br>