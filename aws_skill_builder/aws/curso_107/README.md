# Deep Dive on AWS Fargate: Building Serverless Containers at Scale (Portuguese)   <img src="./0-aux/logo_course.png" alt="curso_107" width="auto" height="45">

### Repository: [course](../../../)   
### Platform: <a href="../../">aws_skill_builder   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/aws_skill_builder.png" alt="aws_skill_builder" width="auto" height="25"></a>
### Software/Subject: <a href="../">aws   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original.svg" alt="aws" width="auto" height="25"></a>
### Course: <a href="./">curso_107 (Deep Dive on AWS Fargate: Building Serverless Containers at Scale (Portuguese))   <img src="./0-aux/logo_course.png" alt="curso_107" width="auto" height="25"></a>

#### <a href="https://github.com/PedroHeeger/main/blob/main/cert_ti/04-curso/cloud/aws/(23-12-17)_Amazon...(ECS)_Primer_PH_AWSSB.pdf">Certificate</a>

---

### Theme:
- Cloud Computing

### Used Tools:
- Operating System (OS): 
  - Windows 11   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows11.png" alt="windows11" width="auto" height="25">
- Cloud:
  - Amazon Web Services (AWS)   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original.svg" alt="aws" width="auto" height="25">
- Cloud Services:
  - Amazon Application Load Balancer (ALB)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_alb.svg" alt="aws_alb" width="auto" height="25">
  - Amazon CloudWatch   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_cloudwatch.svg" alt="aws_cloudwatch" width="auto" height="25">
  - Amazon Elastic Load Balancing (ELB)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_elb.svg" alt="aws_elb" width="auto" height="25">
  - Amazon Elastic Container Service (ECS)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_ecs.svg" alt="aws_ecs" width="auto" height="25">
  - AWS Application Auto Scaling  <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_auto_scaling.png" alt="aws_auto_scaling" width="auto" height="25">
  - AWS Fargate   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_fargate.svg" alt="aws_fargate" width="auto" height="25">
  - AWS Identity and Access Management (IAM)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_iam.svg" alt="aws_iam" width="auto" height="25">
  - AWS Software Development Kit (SDK) - Boto3   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_sdk_python.svg" alt="aws_sdk" width="auto" height="25">
  - Google Drive   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/google_drive.png" alt="google_drive" width="auto" height="25">
- Containerization: 
  - Docker   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" alt="docker" width="auto" height="25">
- Language:
  - HTML   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" alt="html" width="auto" height="25">
  - Markdown   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/markdown/markdown-original.svg" alt="markdown" width="auto" height="25">
  - Python   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" alt="python" width="auto" height="25">
- Integrated Development Environment (IDE) and Text Editor:
  - Visual Studio Code (VS Code)   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" alt="vscode" width="auto" height="25">
- Versioning: 
  - Git   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="git" width="auto" height="25">
- Repository:
  - Docker Hub   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/docker_hub.png" alt="docker_hub" width="auto" height="25">
  - GitHub   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="github" width="auto" height="25">
- Command Line Interpreter (CLI):
  - AWS Command Line Interface (CLI)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_cli.svg" alt="aws_cli" width="auto" height="25">
  - Windows PowerShell   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows_power_shell.png" alt="windows_power_shell" width="auto" height="25">
- Server and Databases:
  - PostgreSQL   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg" alt="postgresql" width="auto" height="25">

---

<a name="item0"><h3>Course Strcuture:</h3></a>
1. <a href="#item01">Deep Dive on AWS Fargate: Building Serverless Containers at Scale (Portuguese)</a><br>
  1.1 <a href="#item01.01">Prática</a><br>

---

### Objective:
O objetivo desse curso foi explicar mais profundamente sobre o serviço **AWS Fargate** que é utilizado como infraestrutura para implantar e gerenciar contêineres com o serviço **Amazon Elastic Container Service (ECS)**. Neste curso, foi mostrado como integrar os containers executados com a infraestrutura do **AWS Fargate** no serviço **Amazon Elastic Container Service (ECS)** com o serviço **AWS Application Auto Scaling** para escalar as aplicações containerizadas e com o serviço **Amazon Application Load Balancer (ALB)** para distribuir o tráfego entre os containers.

### Structure:
A estrutura do curso é formada por:
- Este arquivo de README.md.
- A pasta [resources](./resources/) contendo os arquivos de scripts em **Python** para interação com a **AWS**.
- A pasta `0-aux`, pasta auxiliar com imagens utilizadas na construção desse arquivo de README.

<div align="Center"><figure>
    <img src="./0-aux/img01.png" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:

<a name="item01"><h4>Deep Dive on AWS Fargate: Building Serverless Containers at Scale (Portuguese)</h4></a>[Back to summary](#item0)

Os clientes e a comunidade de desenvolvedores, em geral, adoram contêineres, porque lhes permitem criar microsserviços sofisticados e aplicações nativas da nuvem. Mas com muitos contêineres, isso torna um pouco complicado, pois é preciso levá-los a uma instância do EC2 e esperar que o melhor aconteça.

Porém existem mais ações envolvidas. É necessário saber quantos deles tem em execução? Onde eles estão sendo executados? Quanto de recursos eles estão utilizando? Como eles são implantados e gerenciados? Como eles são dimensionados e monitorados? Como é alertado quando está ficando sem recursos, mas ainda precisa adicionar mais contêineres para atender à demanda de carga? É aí que as pessoas estão adotando ferramentas de orquestração, porque elas ajudam a gerenciar todos esses processos. Esse foi o principal motivo pelo qual a **AWS** criou um serviço de contêiner elástico há vários anos, para ajudar os clientes a executar cargas de trabalho conteinerizadas em grande escala.

De fato, ele passou a ser uma ferramenta poderosa para fazer isso. Com o gerente de cluster, para manter o estado desejado do cluster, houve um mecanismo de posicionamento, que usa um método avançado de posicionamento, precisamente os contêineres em hosts e, claro, além disso, programação e orquestração para coordenar tudo. Mas as ferramentas de orquestração não servem para todos e não resolvem todos os problemas, porque a execução de contêineres em produção é um trabalho árduo. Ao analisar um host aleatório, é possível ver que há outros componentes além dos contêineres, como sistema operacional, agente do **Docker**, agente do ECS e todos os componentes de que é preciso cuidar, aumentando a complexidade em ordem de grandeza. Mesmo com três hosts em diferentes zonas de disponibilidade, por exemplo, ou 300, cada um deles terá esses componentes. Em muitas empresas, eles têm um engenheiro dedicado de DevOps cuja responsabilidade exclusiva é garantir o balanceamento adequado e constante de seus clusters, para ter a quantidade certa de instâncias executando o número necessário de contêineres para sua carga. O que torna isso muito difícil e quanto de esforço é exigido para conseguir isso. Com o **AWS Fargate**, não há infraestrutura para gerenciar, assim, é possível se concentrar na aplicação, nos serviços e nos contêineres. Ele é iniciado muito rapidamente e dimensionado sem dificuldade. O Fargate integra-se de forma eficiente com diversos serviços da **AWS**, sendo especialmente projetado para operar na plataforma ECS.

Existem alguns componentes da tecnologia do **AWS Fargate**. O primeiro deles é a *task definition* que é a criação de um esquema, uma receita para a tarefa. Nela, é especificada a quantidade de recursos que a tarefa vai consumir. Além de outros componentes, como URLs das imagens de onde uma tarefa deve retirá-los. O ponto importante aqui é que cada definição de tarefa é um documento imutável. Portanto, quaisquer atualizações feita em uma definição de tarefa, é adicionada uma nova versão da mesma, tornando muito rápido e muito fácil rastrear todas as alterações e revertê-las, se for necessário ir para uma versão anterior desse documento. O segundo componente é o *cluster*. No cluster é dimensionado a capacidade real, determinando a quantidade necessária de hosts para executar os contêineres. Mas com o **AWS Fargate** o local do cluster geralmente é administrativo, um limite lógico. Dentro do cluster, é executado as *tasks*. Uma tarefa é a instanciação de uma definição de tarefa. Cada tarefa pode ter um contêiner ou até 10 contêineres diferentes. Quando tem-se essa quantidade, quando há em torno de oito ou 10, algo como o tipo de criação de aplicação monolítica, no entanto, se você tem um ou dois contêineres e várias tarefas interligadas, é aqui que você cria suas soluções em uma espécie de abordagem de microsserviços. Quando trabalha-se com um número maior de contêineres, por exemplo, em torno de oito ou dez, pode ser semelhante à abordagem de criação de uma aplicação monolítica. No entanto, se está sendo lidado com apenas um ou dois contêineres, mas com várias tarefas interconectadas, é nesse cenário que é desenvolvido as soluções utilizando uma abordagem de microsserviços. Outro componente é o *service* que é isso que mantém o estado desejado da aplicação, adicionando mais contêineres quando necessário, expandindo e depois redimensionando onde a carga está baixa.

Com relação aos componentes de computação do **AWS Fargate**, tem-se a especificação de fontes de computador (*Task Level Resources*), na definição de tarefa, sendo esse o grupo de recursos que serão compartilhados pelo contêineres em uma tarefa. Assim, é possível ter controle total desse processo, de modo que, se for verificado que a aplicação e cada um dos contêineres precisam de uma quantidade específica de recursos, é possível fazer isso em um nível mais profundo para os contêineres. Importante ressaltar que 1 vCPU significa 1024 cpu-units, enquanto a memória é declarada em MB, quando não especificado a unidade. Existem cerca de 50 combinações diferentes de recursos, mas especificar esses recursos afeta diretamente o custo de execução de uma tarefa, porque o conceito de definição de preço do **AWS Fargate** funciona em duas dimensões. O primeiro é a quantidade de recursos que é especificado para a tarefa. O segundo é o tempo de execução da tarefa. Com granularidade de um segundo e um minuto, no mínimo.

No lado da rede, com o **AWS Fargate**, existe um novo tipo de rede, *AWS VPC (awsvpc)*. O que isso significa é que, cada tarefa, quando é colocada em uma sub-rede, obtém a própria interface de rede elástica, ou *Elastic Network Interface (ENI)*. Esse conceito é poderoso, porque move o mapeamento de rede para uma tarefa. Isso significa que é possível fazer praticamente tudo o que consegue fazer com as ENIs padrão para instâncias do EC2, por exemplo, uma conexão por meio de redes privadas aos recursos no ambiente da **AWS**, ou conectar-se a um banco de dados ou enviar alguns dados para um serviço de S3 por meio de endpoints de VPC. Mas caso precise de conexão externa com suas tarefas ou que elas precisam se comunicar com a internet, há sempre a opção de atribuir um endereço de IP público dedicado a essa ENI. Para habilitar e criar a ENI, deve-se utilizar o parâmetro `"networkMode": "awsvpc"` na definição de tarefa. Também vale a pena mencionar que, para habilitar uma abordagem fácil para as tarefas, só é preciso listar todas as sub-redes de diferentes zonas de disponibilidade no comentário da tarefa em execução.

Sobre o armazenamento do **AWS Fargate**, existem dois tipos de armazenamento e ambos são efêmeros. Cada contêiner tem sua própria camada gravável no topo, e para fornecer essa camada gravável, para cada um dos contêineres dentro da tarefa, existe o grupo de 10 gigabytes que será compartilhado em todos os contêineres dentro da tarefa. A parte importante aqui a lembrar é que 10 gigabytes não são visíveis em contêineres e os dados que o contêiner grava para essa camada gravável são exclusivos para esse contêiner específico. Se for necessário compartilhar alguns dados entre contêineres, há outro tipo de armazenamento do **AWS Fargate**, onde pode ser mapeado para cada contêiner um endpoint e eles se conectarão a esse grupo compartilhado de armazenamento. Quatro gigabytes compartilhados permitem que isso seja feito. Esse armazenamento específico também é efêmero, o que significa que, quando uma tarefa é interrompida, todos os dados são excluídos automaticamente. Portanto, se as tarefas precisam de alguma persistência para os dados, ou se é preciso salvar alguns dados antes que uma tarefa seja interrompida, provavelmente precisará configurar a aplicação para enviar os dados para algo como o S3.

Na parte de segurança, existem três tipos de permissões. A primeira delas é a *Cluster Permissions* que são as permissões de cluster. É nela que é definido quem deve ter acesso ao cluster, e qual nível de acesso será. A *Application Permissions* são as permissões da aplicação. Esse é exatamente o mesmo tipo de permissões de funções do EC2, para que seja definido o que a tarefa é capaz de fazer ou, por exemplo, conectar-se a um banco de dados para fazer um registro ou enviar alguns dados para o S3. O terceiro tipo é *Housekeeping Permissions* que é o tipo mais recente de permissões, no qual **AWS** executa algumas ações para o usuário. Como por exemplo, criar e associar uma ENI à tarefa, enviar alguns logs para o CloudWatch ou extrair uma imagem de um repositório. Ela é sub-dividida em dois tipos de funções e são um pouco exclusivas do Fargate. A primeira é a função que é criada e depois definida em uma configuração de tarefa. Essa função permite que a AWS extraia uma imagem de um repositório e envie alguns logs. Então, pode ser definido qual quantidade de acesso deve-se ter e para onde serão enviado os logs. A *ECS Service Linked Role* é a segunda função e é vinculada ao serviço. Essa função é criada automaticamente para o usuário e mantida pela **AWS**. Portanto, não é preciso alterar manualmente uma política ou associá-la a qualquer lugar do serviço. Lembre-se que quando ela estiver na lista das funções, que ela pertence ao **AWS Fargate**.

Há várias maneiras de monitorar e ter visibilidade sobre as tarefas. Uma delas são os logs da AWS (*awslogs*), o driver que foi anunciado com o **AWS Fargate**. Isso significa que agora é possível enviar os logs do **Docker** stdout diretamente para o **Amazon CloudWatch**, sendo definido onde e o que será enviado na definição da tarefa, especificando prefixos para um dos contêineres. Isso significa que, agora, no CloudWatch, é possível distinguir facilmente todos os fluxos de log entre contêineres e filtrá-los facilmente, quando for necessário encontrar algo útil, e isso sobre um determinado contêiner. Em seguida, tem-se os eventos tradicionais do CloudWatch, eles não mudaram do serviço ECS. Então eles são exatamente os mesmos. O próximo é um pouco exclusivo e também foi anunciado com o **AWS Fargate**, porque agora pode-se ter visibilidade total sobre a utilização de tarefas de cada CPU e da memória, no qual ele desempenha duas funções para o usuário. A primeira de dar visibilidade e a segunda de permitir confiar nessa utilização para expandir e reduzir com base no limite e com base nos critérios definidos para o Auto Scaling.

No lado das versões mais recentes do **AWS Fargate**, existe os metadados de tarefa. Com isso, pode ser consultado os metadados diretamente de dentro de uma tarefa. Isso dá um mecanismo poderoso, para ter visibilidade granular sobre o que está acontecendo dentro das tarefas. Ele permite construir alguns painéis muito detalhados e abrangentes com essas informações e há dois endpoints e dois níveis de metadados de tarefa aqui. O primeiro é um nível de tarefa. O objetivo é obter essas informações, como quantidade de contêineres em execução dentro da tarefa, qual era a versão de uma definição de tarefa, de qual contêiner foi criado, e uma data em que a tarefa foi iniciada. O segundo nível é o contêiner que fornece as informações como as imagens que compõem o contêiner, estatísticas e rótulos do Docker.

Recentemente foi anunciado a compatibilidade do ECS com a detecção de serviços gerenciados. Com esse serviço, agora é possível criar uma sofisticada detecção de serviços gerenciados, de forma totalmente automatizada. Antes dessa versão, os clientes criaram uma descoberta de serviços sofisticada apenas para obter a atualização dos registros de DNS de suas cargas de trabalho conteirnerizados. Eles usaram algo como Lambda e um pedaço de código personalizado em suas aplicações para coordernar tudo isso. Com essa tecnologia, agora pode ser aproveitado ao máximo o serviço **Amazon Route 53** integrado ao ECS. 

Isso funciona começando com a criação do namespace com zona hospedada no Route 53 e, em seguida, o ECS a leva a partir daí. Ele cria os registros de serviço, CNAMES e, em seguida, hospeda os registros dos contêineres com um endereço IP para nossas tarefas ou até mesmo um endereço IP na porta, que é um caso de uso comum de contêineres para portas personalizadas em cargas de trabalho conteinerizadas. O ECS faz uma automação completa aqui e adiciona mais tarefas quando elas são criadas, ele desativa e substitui os registros para os usuários em uma zona hospedada do DNS quando as tarefas são removidas, e também alteram os registros quando as tarefas são substituídas, por exemplo, se elas não forem íntegras. Os benefícios dessa abordagem é que o usuário conta com a automação completa, pois é um serviço totalmente gerenciado. Portanto, não é necessário criar uma personalização. Não é preciso criar soluções sofisticadas para conseguir essa tarefa trivial. Em segundo lugar, o usuário conta com o Route 53, que é um serviço altamente disponível, confiável e muito rápido. Ele funciona em vários serviços e em várias plataformas no ambiente da **AWS** para que possa ser aproveitado ao máximo a integração.

<a name="item01.01"><h4>Prática</h4></a>[Back to summary](#item0)


tg
alb
listener

role service
role policy
log group
vpcSgRule

task
cluster
service

route 53

autoScaling
policy

Como parte prática deste curso, foi criado um cluster no serviço **Amazon Elastic Container Service (ECS)** utilizando como infraestrutura o **AWS Fargate**. Neste cluster foi executado um service com uma task replicada duas vezes. Essa task possuíu dois containers, sendo o primeiro de uma aplicação web que utilizou como imagem **Docker** a aplicação desenvolvida no curso [curso_116](../../../outros/fabricio_veronez/devops/curso_116/), enquanto o segundo container utilizou a imagem **Docker** do banco de dados **PostgreSQL**. A aplicação web em si, era de um microblog, onde era possível realizar posts nesse blog, com os dados sendo persistidos no banco de dados. No service executado foi definido um load balancer do tipo *Application Load Balancer (ALB)* para direcionar o tráfego para os containers da aplicação, cada um rodando em uma task. Com o **Application Auto Scaling** foi definido que esse service seria escalável, determinando uma quantidade mínima e máxima de tarefas. Por fim, foram aplicadas três tipos de policies de escalabilidade e executado testes de stress para verificar o escalonamento das tasks.

Os arquivos de código foram desenvolvidos em **Python** com o SDK **Boto3** para interagir com as APIs dos serviços da **AWS**, sendo eles armazenados no diretório [resources](./resources/) e sub-divididos nos diretórios [alb](./resources/alb/) para criação do load balancer e [fargate](./resources/fargate/) para construção do cluster e execução da aplicação. Cada arquivo desse conteve dois scripts, sendo um para criação de algum elemento e outro para exclusão, sempre precedidos por estruturas de condição que verificavam se o elemento que desejava-se construir existia ou não.

O projeto foi iniciado pela pasta do load balancer criando o *target group* com o arquivo [elbTg.py](./resources/alb/elbTg.py), no qual o tipo de alvo desse grupo de destino foi endereço de ip, pois quaisquer tasks criadas pelo service seriam adicionadas neste target group. Além disso foi definido o protocolo do alvo como `HTTP`, a porta `8080`, onde a aplicação iria rodar e também a verificação de integridade. Em seguida, foi criado o *Application Load Balancer (ALB)* que assim como o target group faz parte do serviço **Amazon Elastic Load Balancer (ELB)**. Com o arquivo [elbAlb.py](./resources/alb/elbAlb.py), o load balancer foi construído, sendo definido a utilização de duas das sub-redes padrões e o grupo de segurança padrão, ambos da VPC padrão da região. Para concluir essa etapa, com o arquivo [elbListener.py](./resources/alb/elbListener.py) foi criado o listener que vinculava esse load balancer ao target group desenvolvido, passando como parâmetro do listener, o protocolo `HTTP` e a porta `8080`. As imagens 02, 03 e 04 mostram, respectivamente, o target group, o ALB e o listener criado.

<div align="Center"><figure>
    <img src="./0-aux/img02.png" alt="img02"><br>
    <figcaption>Imagem 02.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img03.png" alt="img03"><br>
    <figcaption>Imagem 03.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img04.png" alt="img04"><br>
    <figcaption>Imagem 04.</figcaption>
</figure></div><br>

Dentro da sub-pasta `fargate` tinha uma sub-pasta de nome [suport](./resources/fargate/suport/) para construção de elementos essenciais para execução com o Fargate. O primeiro deles foi a elaboração de uma role no serviço **AWS Identity and Access Management (IAM)** com o arquivo [iamRoleService.py]. Logo em seguida, foi executado o arquivo [iamRolePolicy.py](./resources/fargate/suport/iamRolePolicy.py) para adicionar a essa role a policy `AmazonECSTaskExecutionRolePolicy`. O objetivo aqui foi permitir que as tarefas com containers fossem executadas em um cluster do ECS. As imagens 05 e 06 exibem a criação da role e da policy.

<div align="Center"><figure>
    <img src="./0-aux/img05.png" alt="img05"><br>
    <figcaption>Imagem 05.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img06.png" alt="img06"><br>
    <figcaption>Imagem 06.</figcaption>
</figure></div><br>

Ainda na sub-pasta `suport`, foi desenvolvido um grupo de log no **Amazon CloudWatch** com o arquivo [logGroup.py](./resources/fargate/suport/logGroup.py). Era neste grupo, que os logs das tasks seriam armazenados. Como a aplicação web rodaria na porta `8080` e tanto o service que atuava no cluster e o load balancer utilizavam o grupo de segurança padrão da VPC padrão da região, foi necessário liberar essa porta para acesso a todas as faixas de IP (`0.0.0.0/0`), assim seria possível acessar a aplicação pela maquina física **Windows** através de um navegador da web. Lembrando que não é recomendado a liberação de portas para todos os IPs ou para IPs desconhecidos, como neste caso foi para fins didáticos, foi realizado. As imagens 07 e 08 ilustram o log group desenvolvido e a porta `8080` liberada no grupo de segurança padrão.

<div align="Center"><figure>
    <img src="./0-aux/img07.png" alt="img07"><br>
    <figcaption>Imagem 07.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img08.png" alt="img08"><br>
    <figcaption>Imagem 08.</figcaption>
</figure></div><br>

De volta para a pasta `fargate` foi o momento de criar a *task definition* e isso foi feito com o arquivo [ecsTaskFargate.py](./resources/fargate/ecsTaskFargate.py). Na definição da tarefa foi determinado que o tipo de implantação seria com **AWS Fargate** e foram passados a role para conceder permissão para essas tasks serem executadas no cluster ECS e o grupo de log construído, para que o envio dos logs fossem feitos. Também foram especificadas algumas configurações, como o mode de rede que foi `awsvpc`, o único possível para o **AWS Fargate**, a quantidade de cpu e memória que essa tarefa teria, e a arquitetura de cpu (`X86_64`) e o sistema operacional utilizado (`LINUX`). Além de tudo isso, nesta task definition foi declarado as definições de containers que ela teria. O primeiro container foi o da aplicação que utilizou a imagem **Docker** do repositório **Docker Hub** de uma aplicação web desenvolvida no curso [curso_116](../../../outros/fabricio_veronez/devops/curso_116/). Neste container, foi realizado um mapeamento de portas `8080:8080`, ele foi definido como essencial, foram passadas quatro variáveis de ambiente (`DB_DATABASE`, `DB_USERNAME`, `DB_PASSWORD` e `DB_HOST`) para permitir a comunicação com o container de banco de dados, definindo que esse container era dependente do container de banco de dados. O valor da variável `DB_HOST` foi o nome do container do banco de dados, pois como eles estavam em uma mesma task, eles podiam se comunicar pelo próprio nome. No container 2, foi utilizado como imagem **Docker**, também do repositório **Docker Hub**, a imagem do banco de dados **PostgreSQL**, o mapeamento de portas foi `5432:5432`, as variáveis de ambiente definidas foram (`POSTGRES_DB`, `POSTGRES_USER` e `POSTGRES_PASSWORD`), sendo os valores dessas três o mesmo valor para as variáveis do container 1. Esse segundo container teve que ser definido como não essencial, pois como ele era a dependência do container 1, não podia. Nos dois containers foram definidas a quantidade a cpu e memória, e o driver de log como `awslogs`, passando o nome do grupo de log, a região (`us-east-1`) e um prefixo que foi o próprio nome dos containers. Na imagem 09 é evidenciada a definição de tarefa elaborada.

<div align="Center"><figure>
    <img src="./0-aux/img09.png" alt="img09"><br>
    <figcaption>Imagem 09.</figcaption>
</figure></div><br>

Após a task definition, foi a vez de criar o cluster com o arquivo [ecsClusterFargate.py](./resources/fargate/ecsClusterFargate.py). No cluster foi definido como fornecedor de capacidade o **AWS Fargate**, também foi habilitado o `containerInsights` que envia métricas para o **Amazon CloudWatch** criando um grupo de log só para isso. Na imagem 10 é visualizado o cluster desenvolvido.

<div align="Center"><figure>
    <img src="./0-aux/img10.png" alt="img10"><br>
    <figcaption>Imagem 10.</figcaption>
</figure></div><br>

Com o cluster construído, foi o momento de executar o service dentro dele. Isso foi realizado através do arquivo [ecsServiceFargate.py](./resources/fargate/ecsServiceFargate.py), no qual além do nome do serviço, foi indicado o nome do cluster onde ele seria executado, a task que ele utilizaria, a versão e quantidade dessa task, o tipo de implantação que foi `FARGATE`, a versão da plataforma que foi `LATEST`, a estratégia de agendamento que foi `REPLICA`, as configurações de implantação (os percentuais mínimo e máximo para diminuir ou aumentar uma tarefa), as configurações de rede determinando duas das sub-redes padrões e o grupo de segurança padrão, ambos da VPC padrão da região. Também foi definido um load balancer, passando a ARN do target group criado e o nome do container e porta que deveria ser adicionado neste grupo de destino, que no caso foi o container 1 que era o da aplicação e a porta `8080` que era onde ela rodava. A imagem 11 a seguir mostra serviço desenvolvido no cluster. Já a imagem 12 exibe as duas tasks que esse serviço criou, onde cada uma possuíu os dois containers, um da aplicação web e outro do banco de dados **PostgreSQL**.

<div align="Center"><figure>
    <img src="./0-aux/img11.png" alt="img11"><br>
    <figcaption>Imagem 11.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img12.png" alt="img12"><br>
    <figcaption>Imagem 12.</figcaption>
</figure></div><br>

As próximas três imagens (13, 14 e 15) mostraram o acesso a aplicação pelo navegador da maquina física **Windows** através do IP público de cada tarefa, ou no caso do load balancer, o DNS, concatenado com `:` e a porta onde a aplicação rodava que era a `8080`. Ao cadastrar um post na aplicação web de cada um das tarefas, o dado era persistido apenas no banco daquela task, não sendo refletido no banco e nem na aplicação web da outra task, pois cada task possuía seu banco de dados. Com relação ao acesso pelo load balancer, ele mostraria e cadastraria o dado da task que ele tivesse direcionando naquele momento, quando atualizasse a página e fosse para outra task, seria referente a ela. O ideal seria um banco de dados único, talvez em uma outra task separada ou até no serviço RDS da **AWS**, onde o container da aplicação web de cada tarefa seria vinculado a esse banco, assim a aplicação web das duas tasks teriam as informações idênticas. Mas como o objetivo aqui era testar load balancer e auto scaling com aplicações containerizadas no ECS, isso ficou para um outro momento.

<div align="Center"><figure>
    <img src="./0-aux/img13.png" alt="img13"><br>
    <figcaption>Imagem 13.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img14.png" alt="img14"><br>
    <figcaption>Imagem 14.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img15.png" alt="img15"><br>
    <figcaption>Imagem 15.</figcaption>
</figure></div><br>

A imagem 16 a seguir evidenciou as duas tasks sendo inseridas no target group, portanto o load balancer fazia a distribuição de tráfegos entre as tasks. Já a imagem 17 mostrou, dentro do log group construído no **Amazon CloudWatch**, os logs streams que foram determinados nas definições de containers durante a construção da task para receber os logs de cada container de cada task, portanto como são duas tasks com dois containers cada, foram quatro logs streams.

<div align="Center"><figure>
    <img src="./0-aux/img16.png" alt="img16"><br>
    <figcaption>Imagem 16.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img17.png" alt="img17"><br>
    <figcaption>Imagem 17.</figcaption>
</figure></div><br>






Neste curso ainda foi realizado uma demonstração com **AWS CodePipeline**, **AWS CodeBuild** e **AWS CodeCommit**.




