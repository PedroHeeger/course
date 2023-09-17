# Bootcamp de Cloud   <img src="./0-aux/logo_course.png" alt="curso_080" width="auto" height="45">

### Repository: [course](../../../)   
### Platform: <a href="./">cloud_treinamentos   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/cloud_treinamentos.jpeg" alt="cloud_treinamentos" width="auto" height="25"></a>
#### Software/Subject: <a href="./">aws   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original.svg" alt="aws" width="auto" height="25"></a>
### Course: <a href="./">curso_080 (Bootcamp de Cloud)   <img src="./0-aux/logo_course.png" alt="curso_080" width="auto" height="25"></a>

---

### Theme:
- Cloud Computing

### Used Tools:
- Operating System (OS): 
  - Linux   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" alt="linux" width="auto" height="25">
  - Windows 11 <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows11.png" alt="windows11" width="auto" height="25">
- Linux Distribution: 
  - Ubuntu <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ubuntu/ubuntu-plain.svg" alt="ubuntu" width="auto" height="25">
- Cloud:
  - AWS <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original.svg" alt="aws" width="auto" height="25">
  - Amazon IAM   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_iam.png" alt="amazon_iam" width="auto" height="25">
  - Amazon EC2   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_ec2.png" alt="amazon_ec2" width="auto" height="25">
  - Amazon RDS   <img src="" alt="amazon_rds" width="auto" height="25">
  - Amazon S3   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_s3.png" alt="amazon_s3" width="auto" height="25">
- Programming Language: 
  - Python   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" alt="python" width="auto" height="25">
- Integrated Development Environment (IDE):
  - VS Code   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" alt="vscode" width="auto" height="25">
- Versioning: 
  - Git   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="git" width="auto" height="25">
- Repository:
  - GitHub   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="github" width="auto" height="25">
- Others:
  - Google Drive <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/google_drive.png" alt="google_drive" width="auto" height="25">

---

### Objective:
O objetivo desse projeto prático é analisar a satisfação dos feedbacks dos talentos da DIO em relação a um Bootcamp qualquer (cujo os dados foram gerados hipoteticamente apenas para fins didáticos). Essa análise é feita através do o cálculo do Net Promoter Score (NPS), uma métrica utilizada para medir a experiência do cliente e prever o crescimento dos negócios, para notas dada para esse Bootcamp. Sendo utilizado também as técnicas de Natural Language Processing (NLP) para analisar os sentimentos expressos nos comentários associados às notas.

### Structure:
- A estrutura é composta por apenas um arquivo de script em Jupyter Notebook (**curso_066.ipynb**), utilizado para executar os códigos; um arquivo de Excel em CSV (**feedbacks.csv**), que é a base de dados; este arquivo de README e uma pasta contendo algumas imagens auxilares utilizadas nesse arquivo de README. A estrutura é exibida na imagem 01.

<div align="Center"><figure>
    <img src="./0-aux/img01.PNG" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:
Este projeto foi realizado em sete aulas. Por decisão própria, todo o projeto foi executado via **AWS CLI** utilizando o **Windows PowerShell** dentro do software **Terminal** da maquina física **Windows**, ressalvo quando não foi possível. Para isso foi necessário instalar o Command Line Interface (CLI), ou Interface de Linha de Comando da AWS com o comando `msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi`. Então foi aberto uma janela de instalação da CLI da AWS no **Windows**, o qual foi realizada instalação padrão do software.

Após a instalação com o comando `aws --version` foi verificado se tudo ocorreu corretamente, exibindo a versão da CLI instalada. Em seguida, com o comando `aws configure` foi executado a configuração para vincular a um `IAM User` ou um `Root User` (o acesso com este último deve ser sempre evitado) de uma conta da AWS. Foram solicitadas as credenciais de acesso `AWS Access Key ID` e `AWS Secret Access Key`, além de outros campos que podem ser mantindos em branco, como região que foi definida para `us-east-1` (N. Virginia), formato de saída que não foi definido. Para conseguir o acesso a conta pela AWS CLI foi necessário criar uma `Access Key` (Chave de Acesso), diferentemente do login realizado pelo console no site da AWS que é necessário o ID da conta, o nome de usuário do IAM e a senha deste usuário. Em ambos os casos, é necessário informar o código MFA, se tiver cadastrado.

Ao criar uma chave de acesso, foi necessário definir para qual caso ela seria usada, que nessa situação foi para acesso via CLI e uma tag para identificação. Assim, foi gerado uma `Access Key` para o usuário do IAM `PedroheegerAdmin`, que é o usuário administrador da minha conta da AWS. O `Access Key` fornece as credenciais de acesso `AWS Access Key ID` e `AWS Secret Access Key` que devem ser anotadas. Essas foram utilizadas para a configuração do AWS CLI.

Com a configuração feita, foi criado um diretório oculto `.aws` na pasta do usuário com dois arquivos `.txt` com as configurações estabelecidas, sendo um para as credenciais (`credentials`) e outro para as configurações adicionais (`config`). Com o comando `aws sts get-caller-identity` é exibidas as seguintes informações do usuário: `AWS Access Key ID` (`UserId`, o Id da chave de acesso criada), `Account` (número da conta do proprietário), o `Amazon Resources Names (ARN)` do usuário do IAM (nome do recurso da Amazon que identifica cada recurso da AWS).

#### Class 1

Na primeira aula, com o usuário do IAM administrador (`PedroheegerAdmin`) configurado no AWS CLI é criada uma role com o comando `aws iam create-role --role-name Ec2S3Read --assume-role-policy-document 'file://G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\policy1.JSON'`. Essa role utiliza o arquivo [policy1.JSON](policy1.JSON) que cria uma política padrão de `Trusted entities`, determinando qual entidade pode assumir essa role. Neste caso, a entidade é o serviço Amazon EC2, ou seja, este serviço pode utilizar essa role. Para verificar se a role foi criada, o comando `aws iam list-roles` lista todas as roles no formato JSON, mas para melhor formatação da saída, o comando `aws iam list-roles --query 'Roles[].RoleName' --output text` exibe apenas os nomes das roles. 

Para consultar apenas essa role e verificar que a policy foi atribuída a ela, é utilizado o comando `aws iam list-roles --query "Roles[?RoleName=='Ec2S3Read']"`. Com o comando seguinte, é atribuída a role criada, a policy existente `AmazonS3ReadOnlyAccess` que contém todas as permissões de acesso a leitura no serviço Amazon S3, através do ARN.

```
aws iam attach-role-policy --role-name Ec2S3Read --policy-arn arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess
```

Para consultar apenas essa role e verificar que a policy foi atribuída a ela, é utilizado o comando `aws iam list-attached-role-policies --role-name Ec2S3Read` que lista todas as polices no formato JSON e o comando `aws iam list-attached-role-policies --role-name Ec2S3Read --query 'AttachedPolicies[].PolicyName' --output text` que filtra e exibe apenas os nomes das polices atribuída a essa role. Na imagem 02 abaixo é mostrada a policy padrão de criação da role e a policy atribuída.

<div align="Center"><figure>
    <img src="./0-aux/img02.PNG" alt="img02"><br>
    <figcaption>Imagem 02.</figcaption>
</figure></div><br>

Antes de instanciar uma maquina no serviço Amazon EC2, é necessário criar um par de chaves para conseguir realizar o acesso remoto a essa maquina. Com o comando abaixo, foi criado uma chave de nome `RemoteAccessEc2` copiando as informações para um novo arquivo, de extensão `.pem` com mesmo nome da chave `RemoteAccessEc2.pem`, sendo armazenada neste diretório. Este arquivo é utilizado no lugar das credenciais para executar um acesso remoto a uma maquina EC2 na cloud.

```
aws ec2 create-key-pair --key-name RemoteAccessEc2 --query 'KeyMaterial' --output text > "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\RemoteAccessEc2.pem"
```

Caso seja cometido algum erro na criação dessa chave e seja necessário removê-la, o comando utilizado é o `aws ec2 delete-key-pair --key-name RemoteAccessEc2`. Se não houver nenhum erro, o comando `aws ec2 describe-key-pairs --query "KeyPairs[*].KeyName" --output text` lista as chaves existentes do EC2, filtrando apenas o nomes dessas chaves e exibindo em um formato de texto ao invés de JSON. Lembrando que foi utilizado a região `us-east-1` ao configurar o AWS CLI, então tudo será criado nesse região, para visualizar pelo console, é necessário alterar para a mesma região.

Dando sequência, é iniciada as definições de uma instância do EC2, cuja Amazon Machine Image (AMI) utilizada é de um **Linux Ubuntu** e o tipo da instância é `t2.micro`. A AMI são imagens de sistemas operacionais utilizadas durante a criação de uma maquina virtual. É possível criar imagens a partir de maquinas já existentes e com configurações realizadas dentro dela para serem utilizadas para construção de outra maquina virtual, evitando ter que configurar tudo novamente nesta nova maquina.

Na configuração desta maquina também é definida uma **Virtual Private Cloud (VPC)**, que é uma rede privada virtual, onde é configurado diversos recursos, como sub-rede, grupo de segurança, entre outros. Por padrão, a própria maquina virtual EC2 já cria uma configuração de rede, não sendo necessário configurá-la. Porém, em um ambiente de produção, não se deve utilizar essa rede padrão e sim configurar uma rede específica para o desenvolvimento do projeto. Mas neste curso, foi mantida a rede padrão. Assim, na execução do comando de configuração maquina é informado os IDs do grupo de segurança e da sub-rede desta rede padrão. 

Em uma região existem zonas de disponibilidades e ao criar uma rede, uma sub-rede pode ser criada para cada zona. Neste caso, é utilizado apenas para zona `us-ast-1a`, cujo Id da sub-rede é o `subnet-0abaa13bbd5424edd`. Com relação ao grupo de segurança dessa rede, que é o Firewall, pode ser criado um grupo ou utilizado um que também é criado por padrão junto com a rede. Neste caso, é utilizado o grupo default construído junto com a rede, cujo Id é o `sg-0512af5eb9da2ccfb`. Também é possível configurar o armazenamento, que por padrão vem com 8 GB, e alguns detalhes adicionais. O único detalhe adicional configurado foi a determinação de execução de um script assim que a maquina tivesse instanciada.







`aws ec2 run-instances --image-id ami-024e6efaf93d85776 --instance-type t2.micro --key-name RemoteAccessEc2 --security-group-ids sg-0512af5eb9da2ccfb --subnet-id subnet-0abaa13bbd5424edd`


`aws iam create-instance-profile --instance-profile-name Ec2S3Read`
`aws iam add-role-to-instance-profile --instance-profile-name Ec2S3Read --role-name Ec2S3Read`


`aws ec2 run-instances --image-id [ID da AMI] --instance-type [Tipo de instância] --key-name [Nome da chave] --security-group-ids [ID do grupo de segurança] --subnet-id [ID da sub-rede]`



#### Class 2


  