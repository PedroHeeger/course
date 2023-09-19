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
  - AWS Command Line Interface (CLI) <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original.svg" alt="aws_cli" width="auto" height="25">
  - AWS Identity and Access Management (IAM)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_iam.png" alt="aws_iam" width="auto" height="25">
  - Amazon Elastic Compute Cloud (EC2)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_ec2.png" alt="amazon_ec2" width="auto" height="25">
  - Amazon Relational Database Service (RDS)   <img src="" alt="amazon_rds" width="auto" height="25">
  - Amazon Simple Storage Service (S3)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_s3.png" alt="amazon_s3" width="auto" height="25">
  - Amazon Elastic Load Balancer (ELB)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_iam.png" alt="amazon_elb" width="auto" height="25">
  - Amazon Application Load Balancer (ALB)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_iam.png" alt="amazon_iam" width="auto" height="25">
  - Amazon Route 53   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_iam.png" alt="amazon_route53" width="auto" height="25">
  - AWS Certificate Manager   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_ec2.png" alt="amazon_ec2" width="auto" 
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
  - Windows PowerShell <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/google_drive.png" alt="windows_powershell" width="auto" height="25">
  - PuTTY

---

<a name="item0"><h3>Course Strcuture:</h3></a>
0. <a href="#item00">Class 00</a><br>
1. <a href="#item01">Class 01</a><br>
2. <a href="#item02">Class 02</a><br>
3. <a href="#item03">Class 03</a><br>
4. <a href="#item04">Class 04</a><br>
5. <a href="#item05">Class 05</a><br>
6. <a href="#item06">Class 06</a><br>
7. <a href="#item07">Class 07</a><br>

---

### Objective:
O objetivo desse projeto prático é analisar a satisfação dos feedbacks dos talentos da DIO em relação a um Bootcamp qualquer (cujo os dados foram gerados hipoteticamente apenas para fins didáticos). Essa análise é feita através do o cálculo do Net Promoter Score (NPS), uma métrica utilizada para medir a experiência do cliente e prever o crescimento dos negócios, para notas dada para esse Bootcamp. Sendo utilizado também as técnicas de Natural Language Processing (NLP) para analisar os sentimentos expressos nos comentários associados às notas.

### Structure:
- A estrutura é composta por apenas um arquivo de script em Jupyter Notebook (**curso_066.ipynb**), utilizado para executar os códigos; um arquivo de Excel em CSV (**feedbacks.csv**), que é a base de dados; este arquivo de README e uma pasta contendo algumas imagens auxilares utilizadas nesse arquivo de README. A estrutura é exibida na imagem 01.

<div align="Center"><figure>
    <img src="./0-aux/img01.png" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:

<a name="item00"><h4>Class 00</h4></a>[Back to summary](#item0)

Este projeto foi realizado em sete aulas. Por decisão própria todo o projeto foi executado via **AWS Command Line Interface (CLI)** utilizando o **Windows PowerShell** dentro do software **Terminal** da maquina física **Windows**. Para isso, foi necessário instalar a CLI (Interface de Linha de Comando) da AWS com o comando `msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi`. Então foi aberto uma janela de instalação da CLI da AWS no **Windows**, onde executada a instalação padrão do software.

Após a instalação, com o comando `aws --version` foi verificada a versão instalada para confirmação de instalação. Em seguida, com o comando `aws configure` foi executada a configuração para vincular a CLI à um **IAM User** (usuário criado) ou um **Root User** (usuário raíz, o acesso com este último deve ser sempre evitado) de uma conta da AWS. Foram solicitadas as credenciais de acesso **AWS Access Key ID** e **AWS Secret Access Key**, além de outros campos, que podiam ser mantindos em branco, como: região, que foi definida para `us-east-1` (N. Virginia), e o formato de saída, que não foi definido. Para conseguir o acesso a conta pela AWS CLI foi necessário criar uma **Access Key** (Chave de Acesso), diferentemente do login realizado pelo console no site da AWS que é necessário o ID da conta, o nome de usuário do IAM e a senha deste usuário, além do código MFA, se tiver cadastrado.

Ao criar uma chave de acesso, foi necessário definir para qual situação ela seria usada, que neste projeto foi para acesso via CLI, e uma tag para identificação. Assim, foi gerado uma **Access Key** para o usuário do IAM **PedroheegerAdmin**, que é o usuário administrador da minha conta da AWS. **Access Key** fornece as credenciais de acesso **AWS Access Key ID** e **AWS Secret Access Key** que devem ser anotadas, pois uma vez criada, a senha não pode ser mais acessada. Essas credenciais foram utilizadas para a configuração do AWS CLI.

Com a configuração feita, foi criado um diretório oculto `.aws` na pasta do usuário com dois arquivos `.txt` com as configurações estabelecidas, sendo um para as credenciais (`credentials`) e outro para as configurações adicionais (`config`). Com o comando `aws sts get-caller-identity` é exibidas as seguintes informações do usuário: `AWS Access Key ID / UserId` (id da chave de acesso criada), `Account` (número da conta do proprietário), o `Amazon Resources Names (ARN)` do usuário do IAM (nome do recurso da Amazon que identifica cada recurso da AWS).

<a name="item01"><h4>Class 01</h4></a>[Back to summary](#item0)

Na primeira aula, com o usuário do IAM administrador (`PedroheegerAdmin`) configurado no AWS CLI foi criada uma role com o comando abaixo. Essa role utilizou o arquivo [policy1.JSON](resources/policy1.JSON) que criou uma política padrão de `Trusted entities`, determinando qual entidade poderia assumir essa role. Neste caso, a entidade foi o serviço **Amazon Elastic Compute Cloud (EC2)**, ou seja, este serviço pôde utilizar essa role. Para verificar se a role foi criada, o comando `aws iam list-roles` listou todas as roles no formato JSON, mas para melhor formatação da saída, o comando `aws iam list-roles --query 'Roles[].RoleName' --output text` exibiu apenas os nomes das roles em formato de texto. 

```shell
aws iam create-role --role-name Ec2S3Read --assume-role-policy-document 'file://G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\resources\policy1.JSON'
```

Para consultar apenas essa role e verificar que a policy foi atribuída a ela foi utilizado o comando `aws iam list-roles --query "Roles[?RoleName=='Ec2S3Read']"`. Também foi necessário criar um perfil de instância com o comando `aws iam create-instance-profile --instance-profile-name Ec2S3Read` e para visualizar todos os perfis criados exibindo apenas o nome em formato de texto, foi o `aws iam list-instance-profiles --query 'InstanceProfiles[].InstanceProfileName' --output text`. Com o comando `aws iam add-role-to-instance-profile --instance-profile-name Ec2S3Read --role-name Ec2S3Read` foi atribuída a role criada, o perfil de instância, e para visualizar se essa vinculação foi efetuada com sucesso, foi utilizado o comando `aws iam list-instance-profiles-for-role --role-name Ec2S3Read`. A imagem 02 a seguir ilustra o perfil de instância criado e a vinculação dele a role.

<div align="Center"><figure>
    <img src="./0-aux/img02.png" alt="img02"><br>
    <figcaption>Imagem 02.</figcaption>
</figure></div><br>

Assim como um perfil de instância foi atribuída a role, várias polices podem ser atribuídas a uma role. Uma policy é um conjunto de diversas permissões que possibilita a execução das ações nos serviços da AWS. Com o comando `aws iam attach-role-policy --role-name Ec2S3Read --policy-arn arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess` foi atribuída a role criada, a policy existente `AmazonS3ReadOnlyAccess` que contém todas as permissões de acesso a leitura no serviço **Amazon Simple Storage Service (S3)**, através do ARN. Para consultar apenas essa role e verificar que a policy foi atribuída a ela, foi utilizado o comando `aws iam list-attached-role-policies --role-name Ec2S3Read` que listou todas as polices no formato JSON e o comando `aws iam list-attached-role-policies --role-name Ec2S3Read --query 'AttachedPolicies[].PolicyName' --output text` que filtrou e exibiu apenas os nomes das polices atribuída a essa role. Na imagem 03 abaixo é mostrada a configuração padrão de criação da role e a policy atribuída a ela.

<div align="Center"><figure>
    <img src="./0-aux/img03.png" alt="img03"><br>
    <figcaption>Imagem 03.</figcaption>
</figure></div><br>

Antes de instanciar uma maquina no serviço Amazon EC2, foi necessário criar um par de chaves para conseguir realizar o acesso remoto a essa maquina. Com o comando abaixo, foi criado uma chave de nome `remoteAccessEc2` copiando as informações para um novo arquivo, de extensão `.pem` com mesmo nome da chave `remoteAccessEc2.pem`, sendo armazenada no sub-diretório `secrets`. Este arquivo é utilizado no lugar das credenciais para executar um acesso remoto a uma maquina EC2 na cloud e para vincular o serviço EC2 ao serviço de banco de dados na aplicação no navegador.

```shell
aws ec2 create-key-pair --key-name remoteAccessEc2 --query 'KeyMaterial' --output text > "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\secrets\remoteAccessEc2.pem"
```

Caso seja cometido algum erro na criação dessa chave e seja necessário removê-la, o comando utilizado é o `aws ec2 delete-key-pair --key-name remoteAccessEc2`, sendo necessário também deletar o arquivo gerado. Se não houver nenhum erro, o comando `aws ec2 describe-key-pairs --query "KeyPairs[*].KeyName" --output text` listou as chaves existentes do EC2, filtrando apenas o nomes dessas chaves e exibindo em um formato de texto ao invés de JSON. Lembrando que foi utilizado a região `us-east-1` ao configurar o AWS CLI, então tudo foi criado nesse região e para visualizar pelo console, foi necessário alterar para a mesma região.

Dando sequência, foi iniciada as definições de uma instância do EC2, cuja **Amazon Machine Image (AMI)** utilizada foi de um **Linux Ubuntu** e o tipo da instância foi `t2.micro`. A AMI são imagens de sistemas operacionais utilizadas durante a criação de uma maquina virtual. É possível criar imagens a partir de maquinas já existentes e com configurações realizadas dentro dela para serem utilizadas para construção de outra maquina virtual, evitando ter que configurar tudo novamente nesta nova maquina.

Na configuração desta maquina também foi definida uma **Virtual Private Cloud (VPC)**, que é uma rede privada virtual, onde é configurado diversos recursos, como sub-rede, grupo de segurança, entre outros. Por padrão, a própria maquina virtual EC2 já cria uma configuração de rede, com sub-redes e grupo de segurança, não sendo necessário configurá-la. Porém, em um ambiente de produção, não se deve utilizar essa rede padrão e sim configurar uma rede específica para o desenvolvimento do projeto, mas neste curso foi mantida a rede padrão. Assim, na execução do comando de configuração da maquina foi informado os Ids do grupo de segurança e da sub-rede desta rede padrão. 

Em uma região existem zonas de disponibilidades e ao criar uma rede, uma sub-rede pode ser criada para cada zona. Neste caso, foi utilizado apenas para zona `us-ast-1a` (N. Virígina), cujo Id da sub-rede foi o `subnet-0abaa13bbd5424edd`. Com relação ao grupo de segurança dessa rede, que é o Firewall, pode ser criado um grupo ou utilizado um que também é criado por padrão junto com a rede. Neste caso, foi utilizado o grupo default construído junto com a rede, cujo Id foi o `sg-0512af5eb9da2ccfb`. Também é possível configurar o armazenamento, que por padrão vem com 8 GB, e alguns detalhes adicionais. 

Em detalhes avançados, foi selecionado o perfil de instância do IAM criado e a determinação de execução de um script `.sh` assim que a maquina tivesse instanciada. O script de nome [ec2Script.sh](ec2Script.sh) realizou diversos ações dentro da maquina virtual Linux Ubuntu instanciada. Iniciou baixando os pacotes e instalando vários softwares como: **Apache**, **PHP**, extensões do PHP, **MySQL Client**, **Wget**, **Unzip**, **Git**, **Binutils** e **Ruby**. Depois iniciou, habilitou e reiniciou o serviço Apache, que foi o servidor web criado para aplicação, para que quando a maquina fosse sempre ligada o serviço ativasse automaticamente. Em seguida, baixou com o Wget, o instalador do serviço CodeDeploy, alterou a permissão de execução para realizar a instalação, iniciou o CodeDeploy e liberou todas as permissões da pasta criada deste software em `/etc/init.d/codedeploy-agent`. Depois, com o Wget novamente, baixou um arquivo compactado que estava em um bucket do serviço S3 da conta da AWS do professor do curso e descompactou esse arquivo com o Unzip, movendo ele para o diretório do Apache que é o `/var/www/html/`. Nesse diretório, removeu o arquivo padrão `index.html` gerada pelo software Apache e liberou todas as permissões desse diretório. 

O comando abaixo criou a maquina virtual no serviço EC2 da AWS com todas as configurações explicadas. Para listar as instâncias do serviço EC2 foi utilizado o comando `aws ec2 describe-instances` que exibe em formato JSON, enquanto para o formato de texto mostrando apenas o nome da tag da instância criada foi o `aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text`. Para exibir o IP público de todas maquinas virtuais criadas no EC2, o comando foi o `aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text`.

```shell
aws ec2 run-instances --image-id ami-0261755bbcb8c4a84 --instance-type t2.micro --key-name remoteAccessEc2 --security-group-ids sg-0512af5eb9da2ccfb --subnet-id subnet-0abaa13bbd5424edd --count 1 --iam-instance-profile Name=Ec2S3Read --user-data 'file://G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\ec2Script.sh' --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=web}]'
```

Infelizmente o comando acima foi executado sem as especificações da tag, portanto a instância foi criada sem um nome. Para definir um nome para essa instância já criada, o comando `aws ec2 create-tags --resources i-02547a2c16c51028c --tags Key=Name,Value=web` criou uma tag para ela, definindo um nome que no caso foi `web`. Para listar todas as tags criadas referente ao serviço EC2, exibindo apenas o nome em formato de texto é usado `aws ec2 describe-tags --query "Tags[].Value" --output text`.

O grupo de segurança criado foi o padrão que foi gerado junto com a construção da rede (VPC) que também foi padrão. Logo esse grupo de segurança estava associado a essa VPC. Sempre um grupo de segurança deve ser vinculado a uma VPC. Todo grupo de segurança gerado por padrão não recebe uma tag com nome de identificação, mas com o comando `aws ec2 create-tags --resources sg-0512af5eb9da2ccfb --tags Key=Name,Value=securityGroup1` foi possível criar uma tag para o grupo de segurança de id especificado, definindo um nome para ele, que no caso foi `securityGroup1`. Para listar todos os grupos de segurança criado, exibindo apenas o Id dele em formato de texto foi utilizado `aws ec2 describe-security-groups --query "SecurityGroups[].GroupId[]" --output text`. Assim, foi identificado o Id do grupo de segurança criado junto com a VPC e copiado para utilizar no comando anterior. Para listar todos os grupos de segurança pelo nome da tag utilizou `aws ec2 describe-security-groups --query "SecurityGroups[].Tags[?Key=='Name'].Value" --output text`.

Dando sequência, foi configurado regras de entrada nesse grupo de segurança, que é o Firewall da rede. Uma regra já veio criada por padrão que foi a liberação de todo tráfego, ou seja, todas as portas de todos os protocolos para o Id do próprio grupo de segurança. Cada regra adicionada gera um Id para identificação. A regra adicionada foi a liberação de todas as portas do protocolo TCP para qualquer IP, ou seja, liberação de acesso para qualquer cliente. O recomendado é não fazer esse tipo de liberação que permite acesso para todas as portas e para todos IPs, o ideal é definir cada regra individualmente. O comando utilizado foi o `aws ec2 authorize-security-group-ingress --group-id sg-0512af5eb9da2ccfb --protocol tcp --port 0 --cidr 0.0.0.0/0`. Para listar todas as regras no formato JSON, o comando foi o `aws ec2 describe-security-group-rules --filters "Name=group-id,Values=sg-0512af5eb9da2ccfb" --query "SecurityGroupRules[]"`, já em formato de texto foi o `aws ec2 describe-security-group-rules --filters "Name=group-id,Values=sg-0512af5eb9da2ccfb" --query "SecurityGroupRules[].SecurityGroupRuleId" --output text`, e com o comando `aws ec2 describe-security-groups --group-ids sg-0512af5eb9da2ccfb --query "SecurityGroups[].IpPermissions[]"` foi possível visualizar as informações das regras definidas para o grupo de segurança criado. A imagem 04 mostra o output dos dois últimos comandos.

<div align="Center"><figure>
    <img src="./0-aux/img04.png" alt="img04"><br>
    <figcaption>Imagem 04.</figcaption>
</figure></div><br>

Com o Firewall liberado, seria possível acessar a aplicação em um navegador na internet pelo IP público da maquina virtual, porém isso não funcionou, pois cometi um erro que foi ter criado a maquina com a imagem do sistema operacional errada. A imagem utilizada foi a `Ubuntu Server 22.04 LTS (HVM) Volume Type`, enquanto o professor utilizou a `Ubuntu Server 20.04 LTS (HVM) Volume Type`. Dessa forma, quando a maquina foi criada, o script tentava ser executado, porém diversos erros ocorriam na execução do script e só foi possível constatar isso ao realizar um acesso remoto com o software **PuTTY** a maquina virtual criada no EC2 e verificar os logs de criação da maquina com comando `sudo cat /var/log/cloud-init-output.log`. Nesses logs, dava para perceber que os pacotes que deveriam ser baixados, não foram, devido ao erro com relação a não localização desses pacotes na `source list`. Por isso, o servidor web não foi criado e nem recebeu a aplicação que deveria ser baixada.

Para entender isso, foram feitos testes criando outras maquinas, após identificar o problema, essas maquinas foram excluídas com o comando `aws ec2 terminate-instances --instance-ids i-06f02ca82617e723b i-02547a2c16c51028c`. Em seguida, foi criada a maquina virtual com a imagem correta. Não foi necessário configurar o grupo de segurança pois estes não foram excluídas ao ser removido a instância do EC2, e como foi a mesma sub-rede e grupo de segurança utilizado, as configurações já estavam mantidas. Assim, a aplicação foi acessada no navegador pelo IP público da maquina virtual ilustrado na imagem 05.

<div align="Center"><figure>
    <img src="./0-aux/img05.png" alt="img05"><br>
    <figcaption>Imagem 05.</figcaption>
</figure></div><br>

Agora foi criada uma instância do serviço **Amazon Relational Database Service (RDS)**, que é um banco de dados relacional, com o comando abaixo. Para listar todas as instâncias criadas nesse serviço foi utilizado `aws rds describe-db-instances`, que exibe em formato JSON. Para um formato em texto, exibindo apenas os nomes das instâncias foi utilizado o comando `aws rds describe-db-instances --query "DBInstances[].DBInstanceIdentifier" --output text`. Ainda para filtrar o status da instância criada e ver se já está em execução é utilizado o comando `aws rds describe-db-instances --db-instance-identifier banco --query 'DBInstances[0].DBInstanceStatus' --output text` que também exibe em um formato de texto filtrando a informação desejada. 

```shell
aws rds create-db-instance --db-instance-identifier banco --db-instance-class db.t2.micro --engine mysql --engine-version 8.0.33 --master-username admin --master-user-password 20173002 --allocated-storage 20 --storage-type gp2 --db-name Banco --availability-zone us-east-1a
```

Com a instância em execução, foi copiado o `endpoint` do banco de dados, que pode ser visualizado com o comando `aws rds describe-db-instances --query "DBInstances[].Endpoint[].Address" --output text`, e colocado lá na aplicação que estava rodando no navegador, na opção `Base de Dados`. Além dela, foram passadas as informações de credenciais de acesso ao banco de dados e o nome do banco de dados. Então, foi clicado em enviar e aplicação foi executada direcionando para uma outra página, até que a aplicação pare de rodar, sendo retornado para página da aplicação. Ao conferir a opção `Base de Dados` da aplicação é exibida agora uma lista de contatos com duas linhas de dados inseridas, conforme imagem 06. Esse processo é uma automação que é realizada pela aplicação. Agora, também está disponível um link clicável `Adicionar Contatos` para cadastrar informações que vão ser enviadas para o banco de dados, onde é armazenado todas as informações, e aplicação busca essas informações para retornar compondo essa lista de contatos, sendo possível remover ou editar um contato da lista, tudo isso pelo navegador. Infelizmente, a opção de editar não estava funcionando na aplicação.

<div align="Center"><figure>
    <img src="./0-aux/img06.png" alt="img06"><br>
    <figcaption>Imagem 06.</figcaption>
</figure></div><br>

A medida que as informações são adicionadas o banco de dados é alimentado. Para acessar esse banco de dados, foi utilizado a maquina virtual do EC2 em um acesso remoto no software PuTTY e com o comando `mysql -h banco.cbjhpxxvj7m2.us-east-1.rds.amazonaws.com -u admin -p` e a senha o usuário `admin` é concedido o acesso. O parâmetro `-h` define o endpoint da instância criada no serviço RDS. A próxima imagen (07) mostra a tabela com os dados inseridos no navegador, através do acesso remoto a maquina virtual feito pelo **PuTTY**.

<div align="Center"><figure>
    <img src="./0-aux/img07.png" alt="img07"><br>
    <figcaption>Imagem 07.</figcaption>
</figure></div><br>

Para remover a instância do serviço RDS foi utilizado o comando `aws rds delete-db-instance --db-instance-identifier banco --skip-final-snapshot` que ignora a execução de um snapshot do estado do banco, excluindo todos os dados dentro desse banco.

<a name="item02"><h4>Class 02</h4></a>[Back to summary](#item0)

Esta aula inicou com a criação de um bucket no serviço **Amazon S3**. Por padrão, o S3 mostra os buckets para todas as regiões, mas é possível escolher a região específica para construção do bucket, que neste caso foi a `us-east-1` (Virgínia do Norte), pois é onde todos os serviços estão sendo criados. Não é possível criar um bucket com mesmo nome, mesmo que seja de outra conta da AWS. Os nomes dos buckets são únicos, não podem ser iguais.

Com o comando `aws s3api create-bucket --bucket armazenamentos3 --region us-east-1` é criado o bucket de nome `armazenamentos3` na região determinada. Porém, algumas configurações realizadas pelo professor do curso não são executadas, portanto é necessário realizar algumas alterações no bucket. A primeira delas é com o comando `aws s3api put-public-access-block --bucket armazenamentos3 --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false"` que desativa o bloqueio de acesso público as quatro opções existentes. 

A segunda alteração é a habilitação da lista de controle de acesso (**Access Control List (ACL)**) que é executado com o comando `aws s3api put-bucket-acl --bucket armazenamentos3 --acl bucket-owner-full-control` tornando público as opções de leitura e gravação apenas para o proprietário do bucket. Contudo, esse comando só pode ser realizado se a regra propriedade do objeto (`ObjectOwnership`) criada em controles de propriedade (`OwnershipControls`) do bucket, estiver definida como proprietário do bucket preferencial/proprietário do bucket preferido (`Bucket Owner Preferred`). Como no bucket desenvolvido não é especificada essa regra, o padrão é utilizado que é proprietário do bucket aplicado/imposto pelo proprietário do bucket (`Bucket Owner Enforced`). Para verificar realmente qual a definição dessa regra, o comando `aws s3api get-bucket-ownership-controls --bucket armazenamentos3` mostra todas as regras elaboradas no controles de propriedade do bucket. Para alterar a regra e permitir a alteração do ACL, é utilizado o comando `aws s3api put-bucket-ownership-controls --bucket armazenamentos3 --ownership-controls="Rules=[{ObjectOwnership=BucketOwnerPreferred}]"`.

A solução para essa situação foi descoberta através de pesquisas, no qual uma explição foi encontrada no seguinte [site](https://stackoverflow.com/questions/76097031/aws-s3-bucket-cannot-have-acls-set-with-objectownerships-bucketownerenforced-s) do **Stack Overflow**. Onde relata que desde 25/04/2023, a Amazon alterou as configurações padrão para buckets recém-criados. A ACL em buckets foi considerada uma prática errada e para desencorajar seu uso a opção `BucketOwnerEnforced` passou a ser a padrão. A opção `BucketOwnerEnforced` quer dizer que as listas de controle de acesso (ACLs) estão desabilitadas e não afetam mais as permissões. O proprietário do bucket possui automaticamente e tem controle total sobre cada objeto no bucket. O bucket aceita apenas solicitações PUT que não especificam uma ACL ou ACLs de controle total do proprietário do bucket, como a ACL pronta de controle total do proprietário do bucket ou uma forma equivalente dessa ACL expressa no formato XML. Por causa disso, é alterado a regra para opção `BucketOwnerPreferred`.

Analisando o comando `create-bucket` através de `aws s3api create-bucket help`, é possível verificar um parâmetro de nome `--object-ownership`, onde nele pode ser definido as três seguintes condições;
- BucketOwnerPreferred – Objetos carregados no bucket mudam propriedade para o proprietário do bucket se os objetos forem carregados com o ACL predefinida "bucket-owner-full-control".   
- ObjectWriter - A conta de upload será proprietária do objeto se o objeto é carregado com a ACL predefinida "bucket-owner-full-control".   
- BucketOwnerEnforced - As listas de controle de acesso (ACLs) estão desabilitadas e não afeta mais as permissões. O proprietário do bucket possui automaticamente e tem controle total sobre todos os objetos no bucket. O balde aceita apenas solicitações PUT que não especificam uma ACL ou proprietário de bucket ACLs de controle total, como o "bucket-owner-full-control" predefinido ACL ou uma forma equivalente desta ACL expressa no formato XML.

Logo, é perceptível que pode-se criar o bucket já configurando essa regra e definindo a ACL como habilitada. O comando a seguir criar o bucket corretamente igual a execução do professor do curso. Após isso, deve desativar as quatro opções do bloqueio de acesso público. Para a listagem dos buckets existentes, existe o `aws s3 ls`, que lista todos os buckets em todas as regiões, e o `aws s3 ls --region us-east-1`, que lista apenas os buckets da região especificada.

```shell
aws s3api create-bucket --bucket armazenamentos3 --region us-east-1 --object-ownership BucketOwnerPreferred --acl bucket-owner-full-control
```

A próxima etapa é a ativação de hospedagem de site estático do bucket S3. Para isso é utilizado o comando `aws s3 website s3://armazenamentos3 --index-document index.html --error-document index.html`, onde dois arquivos **HTML** são definidos, um para o site e outro para casos de erro. Ao tentar acessar o site com o endpoint no navegador é ocorrido um erro, pois ainda é necessário criar uma política de segurança para liberar o acesso a esse bucket. Essa política é elaborada no arquivo JSON [bucketPolicy.JSON](bucket-policy.json), onde é definido os parâmetros: `Effect` como `Allow`, ou seja, permitir; `Principal` como `*`, ou seja, indica que são todos os objetos do bucket; `Actions` como `s3:GetObject`, para retornar os objetos; e o `Amazon Resource Name (ARN) / Resource` definido como o mesmo do bucket acrescido de `/*` (`arn:aws:s3:::armazenamentos3/*`). Para criar essa política para o bucket 
é utilizado o comando abaixo.

```shell
aws s3api put-bucket-policy --bucket armazenamentos3 --policy "file://G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\bucketPolicy.json"
```

Para exibir as configurações de hospedagem do site estático e as polices criadas para esse bucket são utilizados, respectivamente, os comandos 
`aws s3api get-bucket-website --bucket armazenamentos3` e `aws s3api get-bucket-policy --bucket armazenamentos3`. A imagem 08 ilustra a saída desses comandos.

<div align="Center"><figure>
    <img src="./0-aux/img08.png" alt="img08"><br>
    <figcaption>Imagem 08.</figcaption>
</figure></div><br>

Agora, de volta a aplicação no navegador que está sendo executada pelo serviço EC2, clicando na opção `S3` é exibido quatro campos para preenchimento que são: o nome do bucket, a região, a chave de acesso do usuário e a senha dessa chave. Então estava faltando criar um usuário do IAM para gerar a chave de acesso e a senha. 

Para listar os usuários do IAM já existentes os comandos 
`aws iam list-users` e `aws iam list-users --query "Users[].UserName" --output text` fizeram isso, sendo o primeiro no formato JSON e o segundo filtrando o nome de cada usuário e exibindo em um formato de texto. O usuário `JoaoNinguem` foi criado com o comando `aws iam create-user --user-name JoaoNinguem` para realização dessa etapa. Em seguida, foi preciso criar uma chave de acesso para esse usuário acessar a cloud, e o comando abaixo efetuou isso, extraindo as informações de `AccessKeyId` e `SecretAccessKey` que são o id e senha da chave de acesso, que foram usadas lá na aplicação nos dois últimos campos, e inserindo em um novo arquivo formato **CSV**, localizado neste diretório, para armazenar essas informações. Isso porque, ao criar uma chave de acesso, a senha dessa chave só exibida naquele momento, depois disso não é mais possível visualizar a senha, tendo que remover a chave e criar outra nova. Também é importante frisar que a chave de acesso deve ser atrelada a um usuário, é uma forma de credenciar o acesso desse usuário a cloud, ao invés de utilizar a forma de login padrão.

```shell
aws iam create-access-key --user-name JoaoNinguem --query 'AccessKey.[AccessKeyId,SecretAccessKey]' --output text > "G:\Meu Drive\4_PROJ\course\cloud_treinamentos\aws\curso_080\keyPairJoaoNinguem.csv"
```

O comando `aws iam list-access-keys` lista todas as chaves de acesso do usuário logado no CLI da AWS, em um formato JSON, enquanto o comando `aws iam list-access-keys --query "AccessKeyMetadata[].UserName" --output text` exibe apenas o nome do usuário da chave em um formato de texto, podendo alterar o `UserName` para `AccessKeyId`, exibindo o id de chave de acesso. Para listar chaves de acesso de outro usuário, foi utilizado nesses mesmos comandos, o parâmetro `--user-name JoaoNinguem`. Caso seja necessário remover a chave de acesso deve indicar como parâmetro o usuário dessa chave e o id da chave de acesso (`aws iam delete-access-key --user-name JoaoNinguem --access-key-id AKIAQCPZALZ6WMDWSG3M`).

Após a criação da chave de acesso, foi necessário atribuir uma política para este novo usuário permitindo ele interagir com o serviço S3. Com o comando `aws iam list-attached-user-policies --user-name JoaoNinguem` foi listado todas as políticas vinculada ao usuário criado, que neste momento não possuia nenhuma. Para adicionar a política `AmazonS3FullAccess` foi utilizado o comando `aws iam attach-user-policy --user-name JoaoNinguem --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess`. Com o comando `aws iam list-attached-user-policies --user-name JoaoNinguem --query "AttachedPolicies[].PolicyName" --output text` foi exibido no formato de texto apenas os nomes das polices atrelada a esse novo usuário.

De volta a aplicação no navegador, foi inserido as informações e clicado em enviar, a página foi redirecionada para uma página momentânea. Nesse momento, a aplicação estava em exeução, efetuando a conexão da aplicação no serviço EC2 com o bucket criado no serviço S3. Quando foi retornado para a página da aplicação, a logomarca não existia mais, pois a imagem era vinculada a um bucket e agora está sendo vinculado a um outro bucket que está vazio. Para adicionar uma nova imagem, teve quer ir na opção `Imagens` e escolher um arquivo do computador físico para enviar para o bucket e o bucket retornasse para aplicação, tornando a imagem visível no navegador. As duas imagens seguintes (09 e 10) ilustram uma nova logo na aplicação do navegador e no bucket do S3.

<div align="Center"><figure>
    <img src="./0-aux/img09.png" alt="img09"><br>
    <figcaption>Imagem 09.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img10.png" alt="img10"><br>
    <figcaption>Imagem 10.</figcaption>
</figure></div><br>

Dando sequencial, no serviço EC2 foi criado uma imagem da maquina virtual existente para facilitar ao construir uma nova maquina com as mesmas configurações. Para isso, foi necessário o id da instância, sendo obtido com o comando `aws ec2 describe-instances --query "Reservations[].Instances[].InstanceId" --output text`. O comando utilizado para criação da imagem foi o `aws ec2 create-image --instance-id i-0a984b72d31c71a7d --name imgWeb` e para listar as imagens criadas o comando `aws ec2 describe-images --owners self`, enquanto o comando `aws ec2 describe-images --owners self --query "Images[].ImageId" --output text` listou apenas os ids da imagens criadas em formato de texto.

Infelizmente, essa imagem foi criada sei definir um nome de tag para ela, portanto foi utilizado o comando 
`aws ec2 create-tags --resources ami-01f69595f69bc56b9 --tags Key=Name,Value=imgWeb` que atribui o nome `imgWeb` para ela. O parâmetro `--name` define um nome para a imagem, enquanto o segundo o nome para tag dela. Para executar as duas configurações juntas foi utilizado este comando `aws ec2 create-image --instance-id i-0a984b72d31c71a7d --name imgWeb --tag-specifications 'ResourceType=image,Tags=[{Key=Name,Value=imgWeb}]'`. Foi verificado se o nome da tag tinha sido atribuída a imagem com o comando `aws ec2 describe-images --owners self --query "Images[].Tags[?Key=='Name'].Value" --output text`.

Para subir uma nova maquina com a imagem criada, foi utilizado o comando abaixo, a única modificação em relação a primeira maquina foi a alteração da sub-rede para a zona de disponibilidade `us-east-1b`, cujo id é `subnet-08ff51ae996e17943` e o nome da tag que ficou como `web2`, o resto foi mantido igual.

```shell
aws ec2 run-instances --image-id ami-01f69595f69bc56b9 --instance-type t2.micro --key-name remoteAccessEc2 --security-group-ids sg-0512af5eb9da2ccfb --subnet-id subnet-08ff51ae996e17943 --count 1 --iam-instance-profile Name=Ec2S3Read --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=web2}]'
```

As imagens 11 e 12 mostram, pelo CLI e console, o nome da tag e o IP das instâncias e as duas instâncias criadas respectivamente. Já a imagem 13 exibe o acesso à aplicação no navegador pelos IPs de cada maquina virtual, o IP pode esta diferente em relação ao das imagens anteriores, pois foi necessário criar a segunda instância novamente, devido ao erro de não ter trocado a zona para `us-east-1b`.

<div align="Center"><figure>
    <img src="./0-aux/img11.png" alt="img11"><br>
    <figcaption>Imagem 11.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img12.png" alt="img12"><br>
    <figcaption>Imagem 12.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img13.png" alt="img13"><br>
    <figcaption>Imagem 13.</figcaption>
</figure></div><br>

Uma observação importante foi que a imagem só poderia ser criada após construção da primeira instância, acesso a aplicação via navegador, preenchimento e envio das informações dos campos na opção **Banco de Dados**. Isso porque, uma vez que a vinculação da aplicação que está em execução no serviço EC2 com o serviço RDS de banco de dados for realizada, não é possível trocar essa vinculação. Se essa vinculação é feita após a criação da imagem, vai funcionar para uma instância, mas para a segunda não vai, pois os dados inseridos nos campos já foram utilizados na primeira instância. Essa situação é algo que poderia ter sido tratada nos arquivos de código da aplicação.

Nesse momento, a aplicação foi acessada por dois endereços de IPs diferentes, um referente a cada maquina. Mas para adequar a forma correta de execução, foi necessário criar um balanceador de cargas (**Load Balancer**), que é um serviço dentro do EC2 que faz o balanceamento de cargas, ou seja, distribui as requisições de acesso para os dois IPs a partir de um endpoint único. Assim, o usuário acesso um único endereço e automaticamente é feita a distribuição das requisições para as duas instâncias, evitando que nenhuma instância fique sobrecarregada e resulte em algum problema.

Este serviço é chamado de **Elastic Load Balancing (ELB)** e é dividido em três tipos: **Application Load Balancer (ALB)**, **Network Load Balancer (NLB)** e **Gateway Load Balancer**. O que foi utilizado foi o ALB que é referente a aplicações que utilizam protocolo HTTP e HTTPS para trafegar. O primeiro comando abaixo criou o Load Balancer, especificando todas as seis sub-redes da região e o grupo de segurança, onde nos dois casos foi utilizado o default. Já o segundo comando criou um grupo de destino para o Load Balancer, configurando o nome, o tipo de destino que no caso foi instância do EC2, o protocolo, a versão do protocolo, a porta, o id da VPC utilizada que foi a default, e as configurações de verificação de integridade (protocolo, porta, caminho, limite saudável, limite não saudável, tempo de esgotamento em segundos, intervalo em segundos e os códigos de sucesso).

```shell
aws elbv2 create-load-balancer --name curso080lb --scheme internet-facing --ip-address-type ipv4 --subnets subnet-0abaa13bbd5424edd subnet-08ff51ae996e17943 subnet-0f531422acc0b0ec6 subnet-09e9c01164025bc13 subnet-032a2b5667861f202 subnet-08a9892a56f74577f  --security-groups sg-0512af5eb9da2ccfb
```

```shell
aws elbv2 create-target-group --name Gcurso080 --target-type instance --protocol HTTP --protocol-version HTTP1 --port 80 --vpc-id vpc-025923e032872abb8 --health-check-protocol HTTP --health-check-port 80 --health-check-path /health --healthy-threshold 3 --unhealthy-threshold 2 --health-check-timeout-seconds 3 --health-check-interval-seconds 30 --matcher "HttpCode=200-299"
```

Para verificar se o grupo de destino foi criado utilizou o comando `aws elbv2 describe-target-groups` que lista todos os grupos existentes, e o `aws elbv2 describe-target-groups --query "TargetGroups[].TargetGroupName" --output text` que lista apenas o nome do grupo de destino em formato de texto. Para listar o ARN dos grupos de destino em formato de texto foi utilizado comando `aws elbv2 describe-target-groups --query "TargetGroups[].TargetGroupArn" --output text`. A vinculação das instâncias ao grupo de destino foi realizada com o comando abaixo, que utiliza o ARN do grupo de destino e os ids das instâncias construídas no EC2. Foi verificado se as instâncias foram adicionadas ao grupo com o comando `aws elbv2 describe-target-health --target-group-arn arn:aws:elasticloadbalancing:us-east-1:005354053245:targetgroup/Gcurso080/2f5b71e03dee2b8a`.

```shell
aws elbv2 register-targets --target-group-arn arn:aws:elasticloadbalancing:us-east-1:005354053245:targetgroup/Gcurso080/2f5b71e03dee2b8a --targets Id=i-074fdcb8c77efcbe6 Id=i-0a984b72d31c71a7d
```

Com relação ao Load Balancer, para listar os existentes foi utilizado o comando `aws elbv2 describe-load-balancers` que mostra em formato JSON. Para filtrar apenas os nomes dos Loads Balancers criados em formato de texto foi o comando `aws elbv2 describe-load-balancers --query "LoadBalancers[].LoadBalancerName" --output text` e para filtrar o ARN deles foi o `aws elbv2 describe-load-balancers --query "LoadBalancers[].LoadBalancerArn" --output text`. Em seguida, foi criado um Listener HTTP conforme comando abaixo, que houve o tráfego na porta 80 e encaminha para o grupo de destino criado, onde estão as instâncias, para que elas recebam as requisições balanceadamente.

```shell
aws elbv2 create-listener --load-balancer-arn arn:aws:elasticloadbalancing:us-east-1:005354053245:loadbalancer/app/curso080lb/64d46aad6ff153fb --protocol HTTP --port 80 --default-actions Type=forward,TargetGroupArn=arn:aws:elasticloadbalancing:us-east-1:005354053245:targetgroup/Gcurso080/2f5b71e03dee2b8a
```

Para aferir se o Load Balancer criado já possui um Listener foi utilizado o comando `aws elbv2 describe-listeners --load-balancer-arn arn:aws:elasticloadbalancing:us-east-1:005354053245:loadbalancer/app/curso080lb/64d46aad6ff153fb`. Com o comando `aws elbv2 describe-listeners --load-balancer-arn arn:aws:elasticloadbalancing:us-east-1:005354053245:loadbalancer/app/curso080lb/64d46aad6ff153fb --query "Listeners[].ListenerArn" --output text` foi possível extrair o ARN do Listener criado.

Com Load Balancer totalmente configurado, foi consultado o DNS dele, com o comando `aws elbv2 describe-load-balancers --query "LoadBalancers[].DNSName" --output text`, para acessar a aplicação no navegador. A medida que requisições foram efetuadas ao Load Balancer, ele distribuíu essas requisições as instâncias de forma balanceada. Ao tentar acessar pelo celular conectado a rede móvel, foi necessário verificar se o protocolo usado para o tráfego era o HTTP, pois pelo HTTPS ainda não podia ser acessado devido a falta de um certificado.

<a name="item03"><h4>Class 03</h4></a>[Back to summary](#item0)

Esta aula iniciou com uso do serviço **Amazon Route53** para configuração de nome de domínio que foi utilizado para acessar a aplicação através do DNS do Load Balancer.








`aws elbv2 create-rule --listener-arn arn:aws:elasticloadbalancing:us-east-1:123456789012:listener/app/MeuALB/abcdefgh12345678/1234567890abcdef0 --priority 1 --action-type fixed-response --fixed-response-content "{\"ContentType\": \"text/plain\", \"StatusCode\": \"200\"}"`











aws ec2 create-image --instance-id i-0123456789abcdef0 --name imgWeb --tag-specifications 'ResourceType=image,Tags=[{Key=Name,Value=imgWeb}]'


aws ec2 deregister-image --image-id ami-0133f24182e7ef3ee

`aws s3 rb s3://teste3355687`

`aws ec2 describe-key-pairs --query "KeyPairs[*].KeyName" --output text`
`aws rds describe-db-instances --query "DBInstances[].DBInstanceIdentifier" --output text`
`aws ec2 describe-instances --query "Reservations[].Instances[].Tags[?Key=='Name'].Value" --output text`
`aws ec2 describe-instances --query "Reservations[].Instances[].NetworkInterfaces[].Association[].PublicIp" --output text`

`aws rds delete-db-instance --db-instance-identifier banco --skip-final-snapshot`
`aws ec2 terminate-instances --instance-ids i-0a41b99f8774c0e32`
`aws ec2 terminate-instances --instance-ids i-0717ae99e28eb99a8`