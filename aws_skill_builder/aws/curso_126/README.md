# AWS DataSync Primer   <img src="./0-aux/logo_course.png" alt="curso_126" width="auto" height="45">

### Repository: [course](../../../)   
### Platform: <a href="../../">aws_skill_builder   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/aws_skill_builder.png" alt="aws_skill_builder" width="auto" height="25"></a>
### Software/Subject: <a href="../">aws   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" alt="aws" width="auto" height="25"></a>
### Course: <a href="./">curso_126 (AWS DataSync Primer)   <img src="./0-aux/logo_course.png" alt="curso_126" width="auto" height="25"></a>

#### <a href="">Certificate</a>

---

### Theme:
- Cloud Computing

### Used Tools:
- Operating System (OS): 
  - Windows 11   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows11.png" alt="windows11" width="auto" height="25">
- Cloud:
  - Amazon Web Services (AWS)   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" alt="aws" width="auto" height="25">
- Cloud Services:
  - Amazon Simple Storage Service (S3)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_s3.svg" alt="aws_s3" width="auto" height="25">
  - Google Drive   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/google_drive.png" alt="google_drive" width="auto" height="25">
- Language:
  - HTML   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" alt="html" width="auto" height="25">
  - Markdown   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/markdown/markdown-original.svg" alt="markdown" width="auto" height="25">
- Integrated Development Environment (IDE) and Text Editor:
  - Visual Studio Code (VS Code)   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" alt="vscode" width="auto" height="25">
- Versioning: 
  - Git   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="git" width="auto" height="25">
- Repository:
  - GitHub   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="github" width="auto" height="25">

---

<a name="item0"><h3>Course Strcuture:</h3></a>
1. AWS DataSync Primer<br>
1.1 <a href="#item01.1">Introdução ao DataSync</a><br>
1.2 <a href="#item01.2">Entender o Serviço do DataSync</a><br>

---

### Objective:
Neste curso, foram abordados o serviço de transferência de dados **AWS DataSync**, seus casos de uso, benefícios, principais recursos e componentes. O funcionamento do serviço foi explicado, assim como os passos necessários para configurá-lo por meio do Console de Gerenciamento da **AWS**. Além disso, foi apresentado como o DataSync pode ser utilizado para realizar transferências de dados de forma automatizada e segura entre armazenamentos locais e a **AWS**, ou entre serviços na nuvem. 
Os objetivos específicos englobaram:
- Detalhar o serviço DataSync e seus principais casos de uso;
- Apresentar as funcionalidades e vantagens do DataSync;
- Demonstrar as arquiteturas de serviço associadas ao DataSync;
- Explicar os elementos que compõem o serviço DataSync;
- Abordar o processo de transferência de arquivos através do DataSync;
- Realizar a configuração do DataSync por meio do Console de Gerenciamento da AWS.

### Structure:
A estrutura do curso é formada por:
- Este arquivo de README.
- A pasta `0-aux`, pasta auxiliar com imagens utilizadas na construção desse arquivo de README. 

### Development:

<a name="item01.1"><h4>Introdução ao DataSync</h4></a>[Back to summary](#item0)

Todas as organizações, em algum momento, precisam transferir dados de um local para outro, seja de forma ocasional ou constante. Muitas optam por soluções de transferência de dados "faça você mesmo" (DIY). Embora essas soluções possam funcionar para um número reduzido de arquivos, elas geralmente não são escaláveis o suficiente para gerenciar a transferência de centenas, milhares ou até milhões de arquivos. Quando for necessário transferir grandes volumes de dados, é importante avaliar suas próprias necessidades e as da organização antes de escolher a melhor abordagem. Algumas questões a serem consideradas incluem: Qual protocolo de transferência utilizar? A infraestrutura e os recursos de computação disponíveis são suficientes para o volume de dados? Há necessidade de compactar os dados durante a transferência? É essencial preservar os metadados do sistema de arquivos? Será necessário escalar a quantidade de dados a ser transferida? Quais medidas de segurança serão implementadas? E como garantir que todos os dados foram transferidos de forma correta?

O **AWS DataSync** é um serviço gerenciado da **AWS** que facilita, automatiza e acelera a transferência de grandes volumes de dados para os serviços de armazenamento na nuvem **AWS** e entre eles. Ele permite mover dados tanto de ambientes locais quanto entre diferentes serviços de armazenamento dentro da **AWS**. Sendo um serviço gerenciado, o DataSync elimina a necessidade de modificar aplicações, criar scripts ou gerenciar a infraestrutura para realizar a cópia de dados entre diferentes sistemas de armazenamento e serviços na nuvem, simplificando o processo de migração.

O DataSync permite sincronizar ou copiar dados de forma unidirecional de um sistema de armazenamento de origem para um de destino. Ele facilita a transferência de dados entre sistemas de armazenamento locais e serviços de armazenamento da **AWS** na nuvem. Entre os sistemas de armazenamento local suportados estão aqueles que utilizam os protocolos Network File System (NFS) e Server Message Block (SMB), como dispositivos NAS, compartilhamentos de arquivos e servidores de arquivos. Além disso, o DataSync suporta sistemas de armazenamento de objetos locais que são compatíveis com a API do **Amazon S3**.

O DataSync permite copiar ou sincronizar dados entre serviços de armazenamento da **AWS** dentro de uma mesma região ou entre diferentes regiões da **AWS**. Ele pode ser utilizado para transferir dados entre seus compartilhamentos NFS e SMB autogerenciados na nuvem, conectados a instâncias do **Amazon EC2**, e outros serviços de armazenamento compatíveis da **AWS**. Os serviços de armazenamento suportados na nuvem **AWS** incluem o **Amazon S3**, **Amazon EFS** e **Amazon FSx for Windows File Server**.

O DataSync oferece recursos robustos para transferências de dados de ambientes on-premises para a **AWS** e dentro da própria Nuvem **AWS**, facilitando a integração com serviços de armazenamento selecionados. O serviço resolve desafios comuns de transferência de dados enfrentados por muitas organizações. Seus principais recursos e benefícios são descritos a seguir:
- Transferência contínua de dados: O DataSync pode ser configurado para realizar transferências contínuas entre compartilhamentos de arquivos NFS e SMB no local, armazenamento de objetos compatível com a API S3 e serviços de armazenamento da **AWS**. É possível agendar transferências únicas ou automatizadas, criando tarefas específicas para diferentes casos de uso. Cada tarefa executa transferências unidirecionais entre o local de origem e o destino, definidas ao configurar a tarefa. O serviço elimina a necessidade de desenvolver scripts ou usar ferramentas comerciais para transferências, aumentando a produtividade e reduzindo o tempo de gerenciamento.
- Serviço totalmente gerenciado: Sendo um serviço gerenciado pela **AWS**, o DataSync cuida de otimizações de desempenho e segurança dos dados durante as transferências, incluindo transferências incrementais, compactação em linha e detecção de arquivos esparsos. A criptografia de dados em trânsito e a validação garantem segurança durante todo o processo, permitindo que as equipes se concentrem nos seus negócios em vez de gerenciar processos de transferência.
- Segurança e conformidade: O DataSync criptografa todos os dados em trânsito usando TLS e oferece verificações de integridade para garantir que os dados no destino sejam consistentes com os de origem. Também há a opção de realizar verificações de integridade de dados em repouso. A integração com o **AWS KMS** permite criptografia dos dados armazenados na Nuvem **AWS**, utilizando chaves geradas pelo sistema ou fornecidas pelo cliente. Para dados no **Amazon S3**, também é possível utilizar chaves gerenciadas pelo SSE-S3.
- Integração nativa com produtos **AWS**: O DataSync é compatível com serviços de armazenamento **AWS** como **Amazon S3**, **Amazon EFS** e **Amazon FSx for Windows File Server**, atuando como origem e destino nas tarefas de cópia. O serviço integra-se com outros produtos da **AWS**, incluindo IAM para controle de acesso, **Amazon CloudWatch** para monitoramento e **AWS CloudTrail** para auditoria. A conectividade segura é garantida através de **AWS Site-to-Site VPN**, Direct Connect, PrivateLink e Transit Gateway, facilitando a comunicação entre sistemas de armazenamento locais e a Nuvem **AWS**.
- Preços previsíveis: O custo do DataSync é baseado na quantidade de dados transferida, com preços definidos por gigabyte (GB), sem encargos adicionais para escalabilidade ou gerenciamento de recursos. Custos adicionais podem se aplicar aos serviços de armazenamento e monitoramento relacionados.
- Configuração simples: O DataSync pode ser configurado via Console de Gerenciamento da **AWS**, *AWS CLI* ou API. O Console de Gerenciamento orienta o processo de configuração, facilitando a criação de locais de origem e destino e a integração com serviços da **AWS**.

A funcionalidade do DataSync torna-o uma solução adequada para diversos casos de uso, tanto para transferências de dados de ambientes on-premises para a Nuvem **AWS** quanto para movimentações dentro da própria nuvem. O DataSync é uma opção eficiente sempre que for necessário copiar dados entre compartilhamentos de arquivos locais, armazenamento de objetos compatível e serviços de armazenamento da **AWS**. Alguns casos de uso são:
- Migração de dados de armazenamento local para a Nuvem **AWS**: A migração de dados é um dos principais casos de uso do DataSync. Ele foi projetado para facilitar a migração de sistemas NAS, servidores de arquivos e compartilhamentos de arquivos ou armazenamento de objetos locais para a **AWS**. O DataSync permite copiar compartilhamentos de arquivos NFS ou SMB e dados de objetos diretamente para serviços de armazenamento da **AWS**, como as diferentes classes do **Amazon S3**, **Amazon EFS** para NFS, e **Amazon FSx for Windows File Server** para SMB. Após a cópia inicial dos dados, o serviço permite realizar cópias incrementais para garantir a consistência dos dados até que todo o processo seja finalizado.
- Arquivamento de dados: O DataSync pode ser utilizado para automatizar a transferência de dados inativos de sistemas locais para opções de armazenamento durável e de longo prazo na **AWS**. Ele permite copiar dados diretamente para classes de armazenamento do **Amazon S3**, como o *Amazon S3 Glacier* ou o *Amazon S3 Glacier Deep Archive*, proporcionando uma solução econômica e segura para arquivamento. Com os dados arquivados na nuvem, é possível desativar o armazenamento local, economizando custos operacionais e de infraestrutura.
- Proteção e recuperação de dados: O DataSync pode fazer parte de uma estratégia de proteção de dados, automatizando a criação de cópias de segurança em diferentes serviços de armazenamento da **AWS**. Isso inclui copiar dados para as classes de armazenamento do **Amazon S3**, **Amazon EFS** ou **Amazon FSx for Windows File Server**. Também é possível proteger os dados com cópias em outras Regiões **AWS** ou em diferentes serviços, por exemplo, transferindo de um NAS NFS local para o **Amazon EFS** em uma região e para o **Amazon S3 Glacier** em outra.
- Movimentação de dados para processamento pontual na nuvem: O DataSync é útil para transferir dados para a **AWS** com o objetivo de realizar processamento pontual, como aplicações de uso intensivo de computação, manipulação de dados, análise de dados ou machine learning. Após o processamento, os dados podem ser transferidos de volta para o armazenamento local, exigindo uma nova tarefa do DataSync para a transferência de retorno.

O DataSync permite copiar dados entre compartilhamentos de arquivos NFS ou SMB autogerenciados na nuvem e serviços de armazenamento compatíveis da **AWS**, assim como entre esses próprios serviços. Alguns casos de uso incluem:
- Transferir dados entre serviços de armazenamento: O DataSync facilita a cópia de dados entre diferentes serviços de armazenamento da **AWS**, garantindo que os dados sejam transferidos adequadamente para o destino desejado. Essa automação simplifica a movimentação de dados e pode ser útil para melhorar o desempenho ou integrar dados em fluxos de trabalho específicos. Por exemplo, é possível transferir dados do **Amazon EFS** para o **Amazon FSx for Windows File Server** ou o **Amazon S3**, e vice-versa. Vale ressaltar que, ao transferir dados do **Amazon S3**, os buckets de origem e destino devem estar na mesma conta.
- Cópia de dados para acesso multirregional: Para aplicações que demandam baixa latência, como na distribuição de conteúdo, o DataSync pode ser utilizado para copiar ou sincronizar dados entre Regiões **AWS**. Essa prática ajuda a manter cópias duplicadas de forma simplificada e pode ser aplicada em diversos casos, incluindo proteção de dados, arquivamento e atendimento a requisitos de segurança e conformidade.
- Proteção de dados e arquivamento: A criação de cópias secundárias de dados é um uso comum do DataSync, servindo para fins de segurança e conformidade. É possível criar cópias de failover ou backups ativos, como transferir dados do **Amazon EFS** para outro **Amazon EFS** ou do **Amazon FSx for Windows File Server** para outro. Além disso, o DataSync pode ser usado para criar backups no **Amazon S3** ou arquivar dados no **Amazon S3 Glacier** ou *Amazon S3 Glacier Deep Archive*. Cópias de dados do **Amazon EFS** e **Amazon FSx for Windows File Server** também podem ser transferidas para serviços de arquivamento, garantindo a preservação dos dados de forma econômica.

Estudo de Caso: A Chan Zuckerberg Biohub usa o **AWS DataSync** para automatizar transferências de arquivos para processamento na nuvem.
  - Desafio: A Chan Zuckerberg Biohub realiza diariamente trabalhos de sequenciamento de genoma, gerando conjuntos de dados que precisam ser transferidos para o **Amazon S3** para processamento e análise, sem interromper os fluxos de trabalho em seus ambientes locais.
  - Solução: A Chan Zuckerberg Biohub implementou o **AWS DataSync** para facilitar a cópia rápida, segura e econômica dos dados gerados pelo sequenciador, transferindo-os do armazenamento NAS local para os buckets do S3. Com os dados armazenados na **AWS**, a Biohub pode processá-los de maneira eficiente usando um software de análise genômica rodando em instâncias do **Amazon EC2**.
  - Benefícios: O DataSync oferece agendamento integrado, permitindo que a Chan Zuckerberg Biohub realize transferências diárias de dados de forma simplificada. Além disso, utilizando os recursos de filtragem do DataSync, a Biohub configurou suas tarefas para copiar apenas os dados gerados a cada dia, o que minimiza o impacto nos sistemas de armazenamento locais e acelera as transferências de dados, otimizando assim seu fluxo de trabalho.


















<a name="item01.2"><h4>Entender o Serviço do DataSync</h4></a>[Back to summary](#item0)






































