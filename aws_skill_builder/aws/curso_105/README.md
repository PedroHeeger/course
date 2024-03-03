# Amazon Elastic Container Service (ECS) Primer   <img src="./0-aux/logo_course.png" alt="curso_105" width="auto" height="45">

### Repository: [course](../../../)   
### Platform: <a href="../../">aws_skill_builder   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/aws_skill_builder.png" alt="aws_skill_builder" width="auto" height="25"></a>
### Software/Subject: <a href="../">aws   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original.svg" alt="aws" width="auto" height="25"></a>
### Course: <a href="./">curso_105 (Amazon Elastic Container Service (ECS) Primer)   <img src="./0-aux/logo_course.png" alt="curso_105" width="auto" height="25"></a>

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
  - Amazon Elastic Compute Cloud (EC2)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_ec2.svg" alt="aws_ec2" width="auto" height="25">
  - Amazon Elastic Container Service (ECS)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_ecs.svg" alt="aws_ecs" width="auto" height="25">
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

---

<a name="item0"><h3>Course Strcuture:</h3></a>
1. <a href="#item01">Amazon Elastic Container Service (ECS) Primer (Portuguese)</a><br>
  1.1 <a href="#item01.01">O que é o Amazon ECS?</a><br>
  1.2 <a href="#item01.02">Escalabilidade e microarquiteturas</a><br>
  1.3 <a href="#item01.03">Componentes do ECS</a><br>
  1.4 <a href="#item01.04">O que são estratégias de posicionamento de tarefas?</a><br>
  1.5 <a href="#item01.05">Como o ECS se integra a outros serviços da AWS?</a><br>
  1.6 <a href="#item01.06">Como a segurança é aplicada em tarefas do ECS?</a><br>
  1.7 <a href="#item01.07">Prática</a><br>

---

### Objective:
O objetivo desse curso vai além dos conceitos e benefícios básicos da conteinerização e ensina mais sobre o **Amazon Elastic Container Service (ECS)**. Nele é explicado sobre a implementação de contêineres na **AWS** usando o ECS e serviços complementares, como o **Amazon Elastic Container Registry (ECR)** e também sobre cenários comuns de microsserviços. Descreve a importância da programação para workloads baseadas em contêiner e os padrões de integração com workloads comuns baseadas em contêiner na AWS. O curso ainda explica sobre os componentes básicos que compõem o ECS, as diferenças entre os tipos de execução do **AWS Fargate** e do **Amazon Elastic Compute Cloud (EC2)**, como selecionar as estratégias apropriadas de posicionamento de tarefas e como aplicar segurança em tarefas do ECS.

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

<a name="item01"><h4>Amazon Elastic Container Service (ECS) Primer (Portuguese)</h4></a>[Back to summary](#item0)

<a name="item01.01"><h4>O que é o Amazon ECS?</h4></a>[Back to summary](#item0)

No mundo digital, contêineres são uma forma de virtualização que acontece no nível do sistema operacional. Eles são semelhantes a maquinas virtuais, porém muito mais leves, apenas com o código da aplicação e as bibliotecas para executar esse código. Cada contêiner em execução é uma instância de uma imagem de contêiner, um objeto imutável que pode ser armazenado em registro público ou privado e personalizado conforme necessário. Contêineres estão firmemente associados a arquiteturas de microsserviços e os benefícios de alavancar ambas as tecnologias são enormes. Arquiteturas de microsserviços decompõem arquiteturas monolíticas tradicionais em componentes independentes que são executados como serviços e se comunicam usando APIs leves. Os ambientes de microsserviços possibilitem uma iteração mais rápida e aumentam a resiliência, a eficiência e a agilidade geral. 

<a name="item01.02"><h4>Escalabilidade e microarquiteturas</h4></a>[Back to summary](#item0)

A escalabilidade é um fator importante para considerar com microsserviços. A execução de um ou dois contêineres em um único host é simples. O que acontece ao mudar para um ambiente de preparação e teste em que há dezenas de hosts, possivelmente com centenas de contêineres? Imagine um ambiente de produção completo com centenas de hosts e talvez milhares de contêineres. Este é um ambiente clusterizado de escala empresarial, e o gerenciamento dos clusters é difícil. Para isso é preciso de um modo inteligente de posicionar contêineres em instâncias para maximizar a disponibilidade, a resiliência e a performance. Isso significa que é necessário conhecer o estado de tudo no sistema. Quais instâncias têm recursos disponíveis, como memória e portas? Como saber quando um contêiner tornou-se inoperante? Como conectar-se com load balancers? Como facilitar práticas de integração e entrega contínuas? Em outras palavras, como gerenciar contêineres em alta escala? 

É aqui que entram as plataformas de gerenciamento de contêineres. Elas lidam com a programação e o posicionamento de contêineres com base na infraestrutura de hardware subjacente e necessidades das aplicações. Elas fornecem integração com serviços como rede, armazenamento persistente, segurança, monitoramento e registro em log. Existem várias opções, como o **Amazon ECS**, ferramentas nativas, como o modo **Docker Swarm**, ou plataformas de código aberto, como o **Kubernetes**. A plataforma de gerenciamento é sem dúvida a escolha mais importante a ser feita ao arquitetar uma workload com base em contêiner.

O ECS é um serviço de orquestração de contêineres escalável e de alta performance que oferece suporte a contêineres **Docker**. O serviço permite executar e dimensionar aplicações em contêiner facilmente na **AWS**. É possível usar o ECS para programar o posicionamento de contêineres ao longo de um cluster gerenciado de instâncias do **Amazon EC2**. O ECS fornece seus próprios programadores, mas também pode se integrar a programadores de terceiros para atender a requisitos de negócios ou aplicações. O ECS também está estreitamente integrado a outros serviços da AWS, como o **AWS Identity and Access Management (IAM)**, o **Amazon CloudWatch** e o **Amazon Route 53**.

Em primeiro lugar, imagens de contêiner são extraídas de um registro. Essas imagens de contêiner podem ser do **Amazon Elastic Container Registry (ECR)**, que é um dos muitos serviços da AWS que se integram ao ECS. Ou podem ser extraídas de um registro privado ou de terceiros. Em seguida, a aplicação é definida, personalizando as imagens de contêiner com o código e os recursos necessários e depois criando os arquivos de configuração apropriados para agrupar e definir os contêineres como tarefas de curta execução ou serviços de longa execução no ECS. Na hora de colocar os serviços online, selecione um dos dois tipos de execução. O tipo de execução do **AWS Fargate** proporciona uma experiência quase sem servidor, em que a infraestrutura que oferece suporte aos contêineres é completamente gerenciada pela AWS como um serviço. A AWS gerencia o posicionamento das tarefas em instâncias e garante que cada tarefa tenha a quantidade apropriada de CPU e memória. Com o Fargate, o usuário pode se concentrar nas tarefas e na arquitetura da aplicação, em vez de se preocupar com a infraestrutura.

O tipo de execução do **Amazon Elastic Compute Cloud (EC2)** é útil quando é desejado ter mais controle sobre a infraestrutura que oferece suporte às tarefas. Ao usar o tipo de inicialização EC2, o usuário cria e gerencia clusters de instâncias EC2 para oferecer suporte a contêineres, definindo a colocação de contêineres no cluster com base em suas necessidades de recursos, políticas de isolamente e requisitos de disponibilidade. Dessa forma, há um controle mais granular sobre o ambiente, sem precisar operar os próprios sistemas de gerenciamento de clusters e gerenciamento de configuração ou se preocupar com a escalabilidade da infraestrutura de gerenciamento.

Também é possível misturar e combinar os tipos de execução conforme necessário na aplicação. Por exemplo, executar serviços com requisitos de recursos mais previsíveis usando o EC2 e executar outros serviços sujeitos a maiores oscilações de demanda usando o Fargate. Seja qual for a execução usada, o ECS gerencia a disponibilidade dos contêineres e pode escalar a aplicação para atender à demanda.

<a name="item01.03"><h4>Componentes do ECS</h4></a>[Back to summary](#item0)

*Tarefas (tasks)* são a unidade atômica de implantação no ECS e são compostas por um ou mais contêineres firmemente acoplados. Uma tarefa pode ser executada de maneira autônoma ou pode fazer parte de um serviço. Um *serviço (service)* é uma abstração sobre uma tarefa. Um serviço executa um número especificado de tarefas e pode incluir um load balancer para distribuir o tráfego entre as tarefas associadas ao serviço. Se alguma das tarefas falhar ou for interrompida, o programador de serviços iniciará outra instância dessa tarefa para substituí-la e manterá a contagem especificada de tarefas. 

Como é determinado se implantará tarefas ou serviços? Tarefas são gerenciadas pelo programador do ECS e são ideais em workloads sob demanda. Tarefas podem ser executadas uma vez ou em intervalos, são ótimas para trabalhos em lote, e pode ser utilizada a API Executar tarefa ou até um comando iniciar teste. Para aplicações de longa execução, convém usar o programador de serviços do ECS. Ele realiza automaticamente o gerenciamento da integridade, faz dimensionamentos por ampliação e redução, reconhece zonas de disponibilidade e permite grupos de contêineres.

Tarefas, sejam executadas de maneira autônoma ou como parte de um serviço, são definidas em uma definição de tarefa. A definição de tarefa (task definition) é um arquivo de texto no formato JSON, que descreve um ou mais contêineres que, juntos, formam uma aplicação. *Definições de tarefas* podem ser consideradas um esquema da aplicação. Elas definem o nome e a imagem usados para contêineres, requisitos de CPU e memória, repositórios de imagens de contêiner, portas de rede, armazenamento e outros metadados sobre os contêineres e a tarefa propriamente dita. Cada tarefa é uma instância de definição de tarefa, criada em tempo de execução e hospedada por um cluster do EC2 ou pelo AWS Fargate. O tipo de execução padrão é o EC2, então quando não é definido o tipo de execução, o EC2 que é o utilizado. Utilizando o Fargate como tipo de execução, não é necessário definir a memória e cpu para cada contêiner, apenas para tarefa em geral e o Fargate se responsabilizará por distribuir o poder computacional.

Com o tipo de execução do EC2, as tarefas são hospedadas por instâncias do EC2, sejam elas tarefas autônomas ou serviços de longa execução. As instâncias do EC2 são agrupadas em clusters, que são específicos de cada região, mas podem cobrir zonas de disponibilidade para maior resiliência. Cada instância do EC2 no cluster executa o Docker para oferecer suporte aos contêineres que compõem suas tarefas e também executa o agente do ECS. O agente do ECS é instalado automaticamente quando é utilizado uma AMI otimizada para ECS. O agente inicia e interrompe tarefas com base em solicitações provenientes do ECS e envia dados de telemetria sobre tarefas da instância e uso de recursos ao Backplane do Amazon ECS. O *Backplane* é o plano do controle singular para todo o ECS. Ele é bem escalado, robusto e tolerante a falhas. Uma instância do EC2 que executa o agente do ECS esteja registrada em um cluster é chamada de instância de contêiner do ECS. Ao executar tarefas com o Amazon ECS, as tarefas que usam o tipo de execução do EC2 são postas em instâncias de contêiner ativas. As estratégias certas de posicionamento são fundamentais para maximizar a eficiência e disponibilidade.

Ao usar o tipo de execução do Fargate, não é preciso gerenciar clusters de instâncias do EC2 ou o posicionamento de tarefas. O Fargate gerencia a infraestrutura como um serviço, permitindo que o usuário se concentre nas suas tarefas e serviços.

<a name="item01.04"><h4>O que são estratégias de posicionamento de tarefas?</h4></a>[Back to summary](#item0)

Em um cenário com dez instâncias de contêiner, o usuário está fazendo uma solicitação para executar tarefas ou criar um serviço. Como parte dessa solicitação, ele define os requisitos de CPU, memória e rede, e também fornece outras restrições, como uma zona de disponibilidade, AMI ou um tipo de instância específico. Por fim, ele especifica a estratégia preferida para o ECS usar ao inicar as tarefas. Por exemplo, distribuição entre várias instâncias de contêiner para maximizar a disponibilidade ou consolidação em um número menor de instâncias para melhorar a utilização. No final desse processo, o ECS identifica um conjunto de instâncias que atende aos requisitos da tarefa que o usuário deseja executar e posiciona essas tarefas ao longo do seu cluster com base nos critérios especificados. 

Lembre-se de que cada tarefa é uma instância de uma definição de tarefa. A definição de tarefa especifica os recursos necessários, além das informações de posicionamento de tarefas, como estratégias de posicionamento e restrições de posicionamento. As estratégias de posicionamento têm como base o melhor esforço. O ECS tenta posicionar tarefas, mesmo quando a opção de posicionamento ideal está indisponível. Os tipos de estratégia de posicionamento aceitos são *Random*, que posiciona tarefas aleatoriamente entre instâncias de contêiner, *Binpack* posiciona tarefas com base na menor quantidade disponível de CPU ou memória, minimizando o número de instâncias em uso e aproveitando ao máximo a utilização de cada instância ou *Spread*, que posiciona as tarefas uniformemente com base em um valor especificado, como zona de disponibilidade.

As tarefas de serviço são distribuídas com base nas tarefas desse serviço. Restrições são vinculativas e podem impedir o posicionamento. Há suporte para `distinctInstance`, que posiciona cada tarefa em uma instância de contêiner diferente e `memberOf`, que posicia tarefas com base em uma expressão, como a associação a um grupo. A estratégia Binpack recebe seu nome do termo "problema de bin packing" (ou problema de empacotamento) no mundo físico, em que contêineres de diferentes tamanhos devem ser empacotados em compartimentos usando o menor número possível de compartimentos.

Serviços podem tirar proveito das mesmas estratégias e restrições de posicionamento e, ao mesmo tempo, manter o número desejado de tarefas. Serviços também podem usar a restrição de posicionamento `distinctInstance` para garantir aterrissagem em tipos de instâncias específicos, como instâncias aceleradas por GPU ou instâncias com requisitos específicos de CPU e memória.

<a name="item01.05"><h4>Como o ECS se integra a outros serviços da AWS?</h4></a>[Back to summary](#item0)

Um dos pontos fortes da execução de workloads baseados em contêineres com o ECS é a estreita integração com outros serviços da AWS. No início do curso, foi mencionado brevemente o **Amazon Elastic Container Registry (ECR)**. Lembre-se de que, depois de construídas, as imagens são imutáveis. Ao executar um contêiner, o ECS extrai imagens de um registro de imagens público ou privado. O ECR é um registro de imagens do Docker totalmente gerenciado e baseado na nuvem que está totalmente integrado ao Amazon ECS e à CLI do Docker. O ECR é escalável, altamente disponível e seguro. As imagens são criptografadas em repouso, com controle de acesso e autorização baseados no IAM.

Use o **Amazon Simple Notification** e o **Amazon Simple Queue Services** para desacoplamento. Classic, Application e Network Load Balancers. **Amazon Route 53** para DNS e descoberta de serviços. **AWS Identity and Access Management (IAM)** para autenticação e autorização. Secrets Manager para gerenciar senhas criptografadas, credenciais, tokens e outros segredos. **Amazon API Gateway** para expor os serviços ao mundo exterior. Ferramentas de desenvolvedor da AWS, como o **AWS CodePipeline** para integração contínua e desenvolvimento contínuo. **Amazon CloudWatch** para monitoramento, registro em log e alertas.

Implantações azul/verde são usadas para implantar atualizações de software com menos riscos por meio da criação de dois ambientes separados: azul e verde. Azul é a versão em execução atual da aplicação, enquanto verde é a nova versão que será implantada. Esse tipo de implantação oferece a chance de testar recursos no ambiente verde sem afetar a versão atual em execução da aplicação. Quando estiver satisfeito com a versão verde, poderá redirecionar o tráfego do ambiente azul antigo ao novo ambiente verde. Seguindo este método, é possível atualizar e reverter recursos com tempo de inatividade quase nulo.

É possível configurar o ECS para usar o Auto Scaling de serviços para ajustar a contagem desejada para cima ou para baixo em resposta a alarmes do CloudWatch. O ECS publica métricas do CloudWatch com o uso médio de CPU e memória pelo serviço. Use essas métricas de utilização de serviço para dimensionar o serviço por ampliação para lidar com alta demanda em horários de pico e dimesioná-lo por redução a fim de diminuir os custos durante períodos de baixa utilização.

<a name="item01.06"><h4>Como a segurança é aplicada em tarefas do ECS?</h4></a>[Back to summary](#item0)

Cada tarefa pode ter sua própria função do IAM, fornecendo permissões granulares para acesso a serviços. Em um exemplo, a Tarefa A recebeu acesso aos dados em uma tabela do **Amazon DynamoDB**. Uma nova tarefa, a Tarefa B, precisa acessar dados em um bucket do **Amazon S3**. Para permitir isso, crie uma política no IAM que conceda permissão para recuperar objetos de um bucket específico do S3. Em seguida, crie uma função no IAM com essa política associada. A função do IAM criada é adicionada à definição de tarefa da Tarefa B, permitindo que qualquer instância dessa tarefa recupere objetos do bucket do S3. A Tarefa B não tem permissão para acessar dados no Amazon DynamoDB. Enquanto a Tarefa A não tem permissão para acessar o bucket do S3, a menos que seja associada a política apropriada à função atribuída à Tarefa A.

Tarefas também podem recuperar segredos do Repositório de parâmetros, que está integrado ao *Secrets Manager*. O Secrets Manager ajuda a organizar e gerenciar dados de configuração importantes, como credenciais, senha e chaves de licença. Usando o Repositório de parâmetros para referenciar segredos do Secrets Manager, é possível cria um processo consistente e seguro para chamar e usar segredos e fazer referência a dados no código e em script de configuração. O Repositório de parâmetros funciona como um serviço de passagem para referências a segredos do Secrets Manager. Dados ou metadados sobre segredos não são mantidos no repositório de parâmetros: a referência é stateless. O Secrets Manager criptografa o texto protegido de um segredo usnado o **AWS Key Management Service (KMS)**, um serviço de criptografia e armazenamento de chaves usado por muitos serviços da AWS. Isso ajuda a garantir que o segredo seja criptografado com segurança em repouso. É viável associar políticas do IAM a uma função que dá ou nega acesso a segredos específicos e restringir o que pode ser feito com esses segredos.

<a name="item01.07"><h4>Prática</h4></a>[Back to summary](#item0)

Como parte prática deste curso foi implantada a aplicação web containerizada, desenvolvida no [curso_116](../../../outros/fabricio_veronez/devops/curso_116/), em um cluster do serviço **Amazon Elastic Container Service (ECS)**, utilizando como infraestrutura as instâncias do serviço **Amazon Elastic Compute Cloud (EC2)**. Diferentemente do [curso_102](../curso_102/), onde apenas foi implatada a aplicação web conteinerizada, esta execução foi bem mais ampla, contemplando outros serviços. O objetivo aqui foi realizar uma deploy completo, com nome de domínio para aplicação desenvolvida, load balancer para distribuição do tráfego entre as instâncias de container e escalabilidade, sendo essa última, tanto para as instâncias como para os serviços do cluster ECS. Também foi feito um teste de estresse para evidenciar a escalabilidade acontecendo.

Todos os recursos foram construídos através de arquivos de código com script **Python** utilizando o SDK **Boto3** para interagir com a API dos serviços da cloud **AWS**. Esses arquivos foram armazenados na pasta [resources](./resources/). Cada arquivo possuía dois scripts, uma para a criação e outro para exclusão dos recursos, sendo em cada um deles, uma estrutura de condição para a partir de uma entrada do usuário, decidir se executava ou não o script. O **Boto3** utilizou as credenciais já cadastradas no software **AWS CLI** instalado na maquina física **Windows**, que foi do usuário do IAM administrador da minha conta da **AWS** (`PedroHeegerAdmin`).

O primeiro passo foi a construção do nome de domínio que foi realizado no site **Registro.BR**, onde foi construído o domínio `pedroheeger.dev.br`. Em seguida, no serviço **Amazon Route53**, foi criada uma hosted zone, com o arquivo [hostedZone.py](./resources/route53/hostedZone.py), para esse domínio elaborado, portanto teve que ter o mesmo nome de domínio. Dentro dessa hosted zone, dois registros vieram criados por padrão, o `Name Server (ns)` e o `(SOA)`. O Name Server possuía quatro valores de servidores DNS que tiveram que ser cadastrados no domínio criado no **Registro.BR**. Após isso, teve que ser aguardado um tempo para que fosse concluída a propagação desse domínio construído no **Registro.BR**. Isso podia lever até 48 horas, segundo informação do site. Por isso, essa parte foi desenvolvida anteriormente, fora do curso, e sempre que fosse necessário a utilização do domínio, era só criar um registro nessa hosted zone com o alvo determinado, como DNS de um load balancer ou IP público de uma instância do EC2. Sempre mantendo a hosted zone criada, sem removê-la, pois se fosse removido, teria que realizar a vinculação com o nome de domínio elaborado no **Registro.BR**. Na imagem 02 é mostrada o nome de domínio construído no site **Registro.BR**. Na imagem 03 é exibida a hosted zone criada com três registros.

<div align="Center"><figure>
    <img src="./0-aux/img02.png" alt="img02"><br>
    <figcaption>Imagem 02.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img03.png" alt="img03"><br>
    <figcaption>Imagem 03.</figcaption>
</figure></div><br>

Observe que há um terceiro registro nessa hosted zone. Esse registro era de um certificado criado no serviço **AWS Certificate Manager (ACM)**, através do arquivo [certificate.py](./resources/acm/certificate.py), para comprovar que este domínio possuía conexão segura via `HTTPS`. Por tanto, foi necessário criar esse certificado no ACM e registrar nesta zona de hospedagem com o arquivo [recordAcmCertificate.py](./resources/acm/certificate.py), e isso também foi feito previamente. A imagem 04 mostra o certificado elaborado no ACM. Até essa parte, tudo foi construído anteriormente e não era removido ao excluir o curso, pois como já dito, a vinculação com o domínio no **Registro.BR** leva um tempo considerado para propagar. Então optei por já deixar essa etapa pronta para os próximos cursos.

<div align="Center"><figure>
    <img src="./0-aux/img04.png" alt="img04"><br>
    <figcaption>Imagem 04.</figcaption>
</figure></div><br>

Para realizar a construção do cluster foi preciso criar os recursos necessário para o cluster. Na sub-pasta [ecs/ec2](./resources/ecs/ec2/) dentro de `resources`, tinham três diretórios de suporte com recursos que deveriam ser criados antes do desenvolvimento do cluster. Em [suport1](./resources/ecs/ec2/suport1/), foi criado uma role com o arquivo [iamRoleService.py](./resources/ecs/ec2/suport1/iamRoleService.py) destinada as tasks do cluster para que elas assumissem essa role. Para essa role, foi adicionada a policy `AmazonECSTaskExecutionRolePolicy` com o arquivo [iamRolePolicy.py](./resources/ecs/ec2/suport1/iamRolePolicy.py), que concedia permissão para que as tasks fossem executadas dentro do cluster. Com o arquivo [logGroup.py](./resources/ecs/ec2/suport1/logGroup.py) foi desenvolvido um grupo de log no **Amazon CloudWatch** para o container que seria criado. Encerrando essa pasta, o arquivo [vpcSgRule.py](./resources/ecs/ec2/suport1/vpcSgRule.py) era utilizado para elaborar uma regra de entrada no grupo de segurança que seria utilizado pelas instâncias de container do cluster, liberando acesso a porta `80`, porta que rodaria a aplicação containerizada. Na imagem 05 é exibida a role com sua respectiva policy. Na imagem 06, o log group construído é visualizado. Já na imagem 07 é evidenciado que existe uma regra liberando a porta `80`, no grupo de segurança padrão da VPC padrão da região.

<div align="Center"><figure>
    <img src="./0-aux/img05.png" alt="img05"><br>
    <figcaption>Imagem 05.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img06.png" alt="img06"><br>
    <figcaption>Imagem 06.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img07.png" alt="img07"><br>
    <figcaption>Imagem 07.</figcaption>
</figure></div><br>

Alterando o diretório [suport2](./resources/ecs/ec2/suport2/), uma segunda role é desenvolvida através do arquivo [iamRoleService.py](./resources/ecs/ec2/suport2/iamRoleService.py), no qual quem assumiria ela era as instâncias do serviço **Amazon Elastic Compute Cloud (EC2)**, que se integrariam ao cluster tornando-se instâncias de container. A policy `AmazonECS_FullAccess` concedendo acesso total ao cluster do ECS foi vinculada a essa role com o arquivo [iamRolePolicy.py](./resources/ecs/ec2/suport2/iamRolePolicy.py). Contudo, para vincular a role com as instâncias, foi necessário desenvolver um perfil de instância que foi realizado com o arquivo [iamInstanceProfile.py](./resources/ecs/ec2/suport2/iamInstanceProfile.py). As imagens 08 e 09 mostram a role com suas respectiva policy e o perfil de instância construído com esta role.

<div align="Center"><figure>
    <img src="./0-aux/img08.png" alt="img08"><br>
    <figcaption>Imagem 08.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img09.png" alt="img09"><br>
    <figcaption>Imagem 09.</figcaption>
</figure></div><br>

Com a base para construção do cluster pronta, antes de criá-lo de fato, foi necessário construir os serviços adicionais que ele utilizaria. O primeiro deles foi o load balancer que foi criado no serviço **Amazon Elastic Load Balancer (ELB)**. Para isso, foi preciso sair da sub-pasta `ecs/ec2` e alterar para [alb](./resources/alb/). Com o arquivo [elbTg.py](./resources/alb/elbTg.py) foi desenvolvido o target group (tg) que seria utilizado por esse load balancer. O tipo desse grupo de destino foi `instance`, o protocolo foi `HTTP`, sendo a versão `HTTP1` e a porta `80`, que era onde o container com a aplicação iria rodar. Com relação as configurações da verificação de integridade, o protocolo e a porta foram os mesmos utilizados (`HTTP` e `80`) e o path foi definido como o diretório raíz (`/`). Após isso, com o arquivo [elbAlb.py](./resources/alb/elbAlb.py), um load balancer do tipo *Application Load Balancer (ALB)* foi construído. Nas suas configurações, o grupo de segurança e as suas-redes definidas foram o default da VPC padrão da região, sendo as sub-redes das zonas de disponibilidade (AZ) `us-east-1a` e `us-east-1b`. As imagens 10 e 11 mostram o target group e ALB desenvolvidos.

<div align="Center"><figure>
    <img src="./0-aux/img10.png" alt="img10"><br>
    <figcaption>Imagem 10.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img11.png" alt="img11"><br>
    <figcaption>Imagem 11.</figcaption>
</figure></div><br>

Entretanto, esses dois recursos ainda não estavam vinculados, era necessário criar um listener para uní-los. Este listener foi construído através do arquivo [elbListener.py](./resources/alb/elbTg.py), indicando o protocolo e a porta como `HTTP` e `80`. Na imagem 12 é comprovada essa vinculação entre os dois recursos de load balancer. Também foi necessário criar um segundo listener, só que para o protocolo `HTTPS` e porta `443`, e passando o ARN do certificado construído no ACM. Isso foi executado com o arquivo [elbListener2.py](./resources/alb/elbListener2.py). A imagem 13 mostra essa segunda vinculação, onde a comunicação possuía uma camada de segurança agora.

<div align="Center"><figure>
    <img src="./0-aux/img12.png" alt="img12"><br>
    <figcaption>Imagem 12.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img13.png" alt="img13"><br>
    <figcaption>Imagem 13.</figcaption>
</figure></div><br>

Para que fosse possível utilizar o domínio criado no **Registro.BR** para acessar a aplicação, era necessário criar um registro do DNS do load balancer na hosted zone do **Amazon Route53**. Por tanto, de dentro da sub-pasta [route53](./resources/route53/) foi executado o arquivo [recordLb.py](./resources/route53/recordLb.py) para criação do registro e vinculação do DNS do load balancer. Esse registro foi do tipo `CNAME` e TTL igual `300`. A imagem 14 exibe o registro criado na hosted zone.

<div align="Center"><figure>
    <img src="./0-aux/img14.png" alt="img14"><br>
    <figcaption>Imagem 14.</figcaption>
</figure></div><br>

Após isso, a sub-pasta foi alterada para [asg](./resources/asg/) para construção do auto scaling group (asg) com as instâncias que integrariam ao cluster do ECS. Para criação do grupo de auto scaling, foi necessário elaborar primeiro um launch template e isso foi realizado através do arquivo [launchTemp1.py](./resources/asg/launchTemp1.py). Neste launch template foram definidos: a imagem de maquina para uma otimizada para o ECS (`ami-0f90bd3669358d247`), o tipo de instância como `t2.micro`, o par de chaves utilizados pelas instância como `keyPairUniversal` que é um par de chaves padrão dos meus projetos, o grupo de segurança como o padrão da VPC padrão da região, o perfil de instância para o perfil criado no `suport2` do ECS, o nome do cluster que essas instâncias fariam parte, o nome do dispositivo de armazenamento no serviço **Amazon Elastic Block Storage** como `/dev/xvda`, sendo a capacidade de `8` e  o tipo `gp2`. Um user data foi definido no script para que nas instâncias, esse comando `#!/bin/bash\necho ECS_CLUSTER={} >> /etc/ecs/ecs.config` fosse executado, no qual o nome do cluster era passado para o arquivo `ecs.config`, assim as instâncias se integrariam ao cluster do ECS. Na imagem 15 é visualizado o launch template construído.

<div align="Center"><figure>
    <img src="./0-aux/img15.png" alt="img15"><br>
    <figcaption>Imagem 15.</figcaption>
</figure></div><br>

Com o launch template, foi possível criar o auto scaling group através do arquivo [asGroup1.py](./resources/asg/asGroup1.py). Nas configurações foi passado qual launch template seria utilizado como base de construção, o nome do target group que as instâncias desse auto scaling group deveria fazer parte, as sub-redes utilizadas que foram as padrões da VPC padrão da região, sendo elas das zonas de disponibilidade `us-east-1a` e `us-east-1b`, e por fim uma tag de nome que essas instâncias deveriam ter. Além disso, no script foram definidos as capcidades mínima, máxima e desejada em `1`, `3` e `1` respectivamente. Também foi determinado que o tempo de aguardo para cálculo das métricas era de `300` segundos antes de realizar um escalonamento, e a verificação de integridade seria do tipo `EC2`, também com `300` segundos para verificação. Todas as métricas do auto scaling group foram habilitadas para serem coletadas pelo **Amazon CloudWatch**. Na imagem 16 é evidenciado a construção desse grupo. Na imagem 17, as instâncias são exibidas dentro do cluster do ECS. Na imagem 18, as instâncias são mostradas no target group do load balancer. Por fim, na imagem 19 os volumes do EBS dessas instâncias são visualizados.

<div align="Center"><figure>
    <img src="./0-aux/img16.png" alt="img16"><br>
    <figcaption>Imagem 16.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img17.png" alt="img17"><br>
    <figcaption>Imagem 17.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img18.png" alt="img18"><br>
    <figcaption>Imagem 18.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img19.png" alt="img19"><br>
    <figcaption>Imagem 19.</figcaption>
</figure></div><br>

Contudo, neste momento só existia uma instância, pois a quantidade desejada era de apenas uma. Novamente a sub-pasta foi alterada, agora para [rds](./resources/rds/). Dentro dela, foi executado o arquivo [rds.py](./resources/rds/). Este arquivo criava uma instância de banco de dados no serviço **Amazon Relational Database Service (RDS)**, cuja classe era `db.t3.micro`, o `engine` `postgres` e a versão do engine `16.1`. Foi definido como armazenamento alocado de `20` gigas, sendo do tipo `gp2`, o período de back-up de `7` dias e o grupo de segurança e sub-rede utilizada como os padrões da VPC padrão da região, sendo a sub-rede da zona de disponibilidade `us-east-1a`. Com relação as configurações do banco de dados, foi determinado o nome como `kubenews` e o nome de usuário também como `kubenews`, enquanto a senha como `Pg#123`. Na imagem 20, a instância de banco de dados do RDS é exibida.

<div align="Center"><figure>
    <img src="./0-aux/img20.png" alt="img20"><br>
    <figcaption>Imagem 20.</figcaption>
</figure></div><br>

O próximo passo foi criar a task definition e isso foi realizado na sub-pasta [ec2/ec2](./resources/ecs/ec2/), executando o arquivo [ecsTaskEC2.py](./resources/ecs/ec2/ecsTaskEC2.py). Nas configurações da task era definida a primeira role construída, para permitir a task de ser executada no cluster do ECS. O tipo de implantação foi `EC2` já que estava sendo utilizado instâncias de container ao invés do Fargate. O modo de rede foi definida como `bridge`, a quantidade de cpu e memória foram determinados em `256` e `512`, já a plataforma de tempo de execução foi definida a arquitetura como `X86_64` e o sistema operacional como `LINUX`.

Com relação as configurações de container, apenas um container foi definido, que utilizava a imagem `docker.io/pedroheeger/curso116_kube-news:v2` que era da aplicação desenvolvida no [curso_116](../../../outros/fabricio_veronez/devops/curso_116/). Essa aplicação web tinha o nome de `kubenews` e se tratava de um microblog, que ao prencher os campos de um formúlario enviá-los, os dados eram alimentados em um banco, que neste caso seria a instância do RDS. O log group elaborado era passado para esse container que criava um log stream para enviar seus logs para o **Amazon CloudWatch**. A cpu e memória do container teve as seguintes capacidades: `128` e `256`, ou seja, metade do total da task. Um mapeamento de portas foi realizado, encaminhando o tráfego da porta `8080`, onde rodava a aplicação no container para a porta `80` do host, que eram as instâncias de container do cluster. As seguintes variáveis de ambiente foram definidas para que a aplicação web se comunicasse com o banco de dados: `DB_DATABASE`, `DB_USERNAME`, `DB_PASSWORD` e `DB_HOST`. A variável `DB_HOST` foi o DNS da instância de banco de dados do RDS. A imagem 21 mostra a definição de tarefa elaborada.

<div align="Center"><figure>
    <img src="./0-aux/img21.png" alt="img21"><br>
    <figcaption>Imagem 21.</figcaption>
</figure></div><br>

Na sequência, o cluster do ECS foi construído com o arquivo [ecsClusterEC2.py](./resources/ecs/ec2/), sendo habilitado o containers insights que enviaria logs para o **Amazon CloudWatch**. A imagem 22 exibe este cluster. Agora, com o arquivo [ecsServiceEC2.py](./resources/ecs/ec2/ecsServiceEC2.py) foi implantado no cluster um service com a task definition elaborada. Nas definições foi indicado o nome da task e do cluster, a quantidade de tasks desejadas, que como por enquanto a quantidade de instâncias de container era de apenas 1, foi definido a quantidade de task como 1. O tipo de implantação foi determinado como `EC2` e a versão da task foi `1`, pois era a primeira. A estratégia de agendamento foi de `REPLICA` e na configuração de implantação, o percentual mínimo saudável e o percentual máximo foram de `100%`. Nas restrinções de posicionamento, o tipo foi definido como `distinctInstance`, para ser implantando o container em instâncias distintas. Por fim, o load balancer foi indicado, passando a ARN do target group, o nome do container e a porta `8080` que era onde ele rodava. Na imagem 23 é visualizado o service implantado no cluster do ECS.

<div align="Center"><figure>
    <img src="./0-aux/img22.png" alt="img22"><br>
    <figcaption>Imagem 22.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="./0-aux/img23.png" alt="img23"><br>
    <figcaption>Imagem 23.</figcaption>
</figure></div><br>

Na imagem 24 é evidenciado a aplicação web containerizada sendo acessada pelo navegador da maquina física **Windows** pelo nome de domínio construído no **Registro.BR**. Também seria possível acessar a aplicação pelo DNS do load balancer ou IP público das instâncias de container.

<div align="Center"><figure>
    <img src="./0-aux/img24.png" alt="img24"><br>
    <figcaption>Imagem 24.</figcaption>
</figure></div><br>


asg
- policy
- service scale
- policy service

