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

Um agente é uma máquina virtual usada para ler ou gravar dados em um local específico. No contexto on-premises, o agente gerencia operações de leitura e escrita em compartilhamentos de arquivos NFS ou SMB, ou em armazenamento de objetos. A função e a localização do agente variam conforme o tipo de serviço de armazenamento da **AWS** utilizado.
- Agente implantado on-premises: Trata-se de uma máquina virtual (VM) utilizada para ler ou gravar dados em sistemas de armazenamento locais. Atualmente, o agente é suportado em hipervisores **VMware ESXi**, **KVM (Kernel-based Virtual Machine)** e **Microsoft Hyper-V**. O console ou a API do DataSync são utilizados para configurar e ativar o agente, associando-o à conta **AWS**. Cada agente é vinculado a locais de armazenamento NFS, SMB ou de objetos, mas não a tarefas específicas. Um único agente só pode executar uma tarefa por vez.
- Agente implantado na nuvem: Para compartilhar NFS ou SMB autogerenciados na nuvem, é necessário um agente do DataSync. Esse agente é implantado em uma instância **Amazon EC2** usando uma AMI (Amazon Machine Image) do DataSync. A instância EC2 deve estar na mesma região **AWS** em que os compartilhamentos NFS ou SMB estão localizados. Assim como no ambiente on-premises, o agente está associado aos locais de armazenamento, e não às tarefas, sendo capaz de realizar apenas uma tarefa por vez. O custo do agente é baseado no tempo em que a instância EC2 está em execução.
- Implementação sem agente na nuvem: Não há necessidade de um agente do DataSync para transferências entre serviços de armazenamento da **AWS** dentro da própria nuvem **AWS**.

As opções de implementação do agente permitem definir quantos agentes serão necessários para os sistemas ou serviços utilizados. As conexões entre o agente local do DataSync e os serviços na nuvem são multithreaded, processando transferências em paralelo para melhorar o desempenho em redes de longa distância (WAN). O DataSync também ajusta automaticamente os recursos da nuvem para suportar volumes de transferência mais altos, facilitando a adição de novos agentes ao ambiente local.
- Implementações de muitos para um: Para a maioria das cargas de trabalho, a recomendação é ativar um agente para cada local on-premises. Um único agente pode gerenciar a transferência de dados de vários sistemas ou serviços de armazenamento, lidando com múltiplas tarefas de transferência de dados. O agente processa uma tarefa por vez, e as tarefas subsequentes são enfileiradas e executadas em sequência. Essa estratégia pode ser utilizada para atualizações de manutenção diárias ou para copiar dados de múltiplos sistemas que contenham diretórios de usuários.
- Implementações um para um: Nesse cenário, um agente é implantado para cada sistema ou serviço de armazenamento, garantindo que a infraestrutura suporte a taxa de transferência máxima sem comprometer outros requisitos da rede. Esta opção é ideal para grandes transferências de dados ou durante migrações para a Nuvem **AWS**.
- Implementações de um para muitos: Quando há a necessidade de transferir grandes volumes de dados rapidamente, muitos agentes são implantados para cada sistema ou serviço de armazenamento. Essa abordagem é recomendada quando tanto o sistema de armazenamento quanto a infraestrutura conseguem suportar o número de IOPS, a taxa de transferência e o volume de dados transferidos. Para cargas de trabalho que envolvem milhões de arquivos pequenos, a recomendação é utilizar até quatro agentes por local on-premises.

Quando um agente está operando corretamente, ele exibe o status ON-LINE. Caso o agente não consiga se comunicar com a **AWS**, seu status será alterado para OFF-LINE. Essa mudança pode ocorrer devido a problemas como falhas na rede, configurações incorretas de firewall ou outros eventos que impeçam a máquina virtual (VM) do agente de se conectar à **AWS**. Da mesma forma, quando o agente é desligado, seu status também será OFF-LINE.

Um local é o ponto de origem ou destino utilizado em uma tarefa de transferência de dados. Esse local pode ser um sistema ou serviço de armazenamento, seja on-premises ou na Nuvem **AWS**. Cada tarefa de transferência no DataSync envolve um local de origem e um local de destino. Os tipos de locais compatíveis com o **AWS DataSync** incluem NFS, SMB, armazenamento de objetos local, **Amazon EFS**, **Amazon FSx for Windows File Server** e **Amazon S3**.

Uma tarefa refere-se a uma transferência de dados específica. A configuração da tarefa inclui a definição dos locais de origem e destino, além de opções, filtragem, agendamento, frequência, uso de tags e registro em log.
- Várias opções podem ser selecionadas conforme os requisitos específicos de cada cenário. Observação: nem todas as opções estão disponíveis para todas as combinações de locais de origem e destino.
  - Verificação de dados: realiza a verificação dos dados no destino após a transferência.
  - Cópia da propriedade: o DataSync copia a propriedade do arquivo, incluindo a ID do grupo e a ID do usuário proprietários do arquivo.
  - Cópia de permissões: as permissões POSIX do arquivo são copiadas da origem para o destino.
  - Cópia de descrição de data/hora: os metadados de carimbo de data/hora são transferidos da origem para o destino.
  - Manter arquivos excluídos: os arquivos no destino que não existem no sistema de arquivos de origem são mantidos.
  - Substituir arquivos: os arquivos no destino são substituídos pelos arquivos da origem. Se essa opção não for selecionada, o arquivo no destino não será substituído, mesmo que haja diferenças em relação ao arquivo de origem.
  - Usar disponível ou Definir limite de largura de banda (MiB/s): com Usar disponível, toda a largura de banda da rede disponível é utilizada para a transferência. Com Definir limite de largura de banda (MiB/s), é possível definir a largura de banda máxima a ser usada pelo DataSync para a tarefa.
  - Enfileiramento: organiza as tarefas para serem executadas em série (primeira a entrar, primeira a sair). Essa opção é útil quando um único agente executa várias tarefas.
- A configuração de filtragem (opcional) utiliza padrões como filtro para definir critérios de exclusão de arquivos, pastas e objetos específicos da transferência. Filtros de exclusão podem ser adicionados ao configurar a tarefa, enquanto filtros de inclusão são aplicados durante a execução da tarefa.
- Agendamento (opcional) permite configurar a tarefa para ser executada em um horário específico.
- Frequência: define a periodicidade da execução da tarefa.
- Tags (opcional): tags são pares de valores-chave que ajudam a gerenciar, filtrar e pesquisar tarefas.
- Registro em log de tarefas (opcional): o DataSync utiliza grupos de log do Amazon CloudWatch para registrar atividades e erros durante a execução da tarefa, necessitando de uma política de recursos com permissões adequadas.

É possível definir como o DataSync deve lidar com arquivos modificados e excluídos no armazenamento de origem ao realizar a transferência de dados. A opção Manter arquivos excluídos preserva os arquivos no local de destino, mesmo que eles tenham sido removidos do local de origem. Já a opção Sobrescrever arquivos substitui os arquivos no local de destino por aqueles que foram modificados no local de origem. Caso essa opção não seja selecionada, o DataSync não copiará arquivos alterados da origem para o destino.

Uma execução da tarefa é a execução individual de uma tarefa, fornecendo informações como horário de início, término, quantidade de arquivos transferidos e status. A execução de uma tarefa passa por cinco fases e possui dois possíveis status de encerramento. Algumas etapas ocorrem em paralelo para aumentar a eficiência e reduzir o tempo de transferência:
- Enfileiramento: ocorre quando há outra tarefa em execução utilizando o mesmo agente.
- Inicialização: fase inicial caso não haja outra tarefa em execução ou o enfileiramento não esteja habilitado. O DataSync começa a inicializar a execução da tarefa.
- Preparação: o DataSync determina quais arquivos serão transferidos. O tempo dessa fase depende do número de arquivos nos locais de origem e destino, podendo variar de minutos a horas, conforme a performance dos sistemas de arquivos.
- Transferência: durante essa fase, os dados estão sendo transferidos para a **AWS**, com atualizações em tempo real sobre o número de bytes transferidos e arquivos modificados.
- Verificação (opcional): garante que os dados no destino são uma cópia exata dos dados na origem. Caso não seja necessária, a verificação pode ser ignorada configurando o `VerifyMode=NONE`. Existem duas opções de verificação:
  - `ONLY_FILES_TRANSFERED`: a verificação será feita apenas nos itens transferidos durante a tarefa atual, o que pode reduzir o tempo da verificação.
  - `POINT_IN_TIME_CONSISTENCY`: executa uma verificação completa de integridade de dados e metadados, analisando todos os arquivos no destino. Essa opção pode demandar mais tempo em volumes de dados maiores.

O **AWS DataSync** utiliza somas de verificação locais para cada arquivo nos sistemas de origem e destino, comparando essas somas para garantir a integridade dos dados. Além disso, o serviço compara os metadados dos arquivos. Se houver divergência nos dados ou nos metadados, a verificação falhará e um código de erro específico será gerado.

O DataSync geralmente consegue transferir arquivos abertos sem restrições. No entanto, se um arquivo estiver sendo gravado durante a transferência, o DataSync detectará inconsistências de dados na fase de Verificação e marcará o arquivo como "falhou". Se o arquivo estiver bloqueado pelo sistema de origem, impedindo sua abertura, o DataSync ignorará a transferência do arquivo. Neste caso, ele registrará um erro durante a fase de Transferência e emitirá um erro de verificação.

O **AWS DataSync** possui dois possíveis status de encerramento para uma tarefa de transferência:
- Bem-sucedido (`SUCCESS`): O status de sucesso é retornado quando a transferência de dados é concluída com êxito. Se a verificação de dados (VerifyMode) não estiver ativada, esse status é alcançado após a fase de Transferência. Caso contrário, ocorrerá após a fase de Verificação.
- Falha (`ERROR`): Se houver falha na transferência, o status retornado será de erro. Sem a verificação ativada, o erro é registrado após a fase de Transferência. Com a verificação ativa, o erro será relatado após a fase de Verificação.

A arquitetura do **AWS DataSync** pode variar conforme o caso de uso da implementação, sendo que existem três arquiteturas principais: transferência entre NFS, SMB ou armazenamento de objetos no local para a nuvem **AWS**; entre os serviços de armazenamento da **AWS**; e entre compartilhamentos NFS ou SMB autogerenciados e serviços de armazenamento da **AWS**.
- Transferência entre NFS, SMB ou armazenamento de objetos no local e serviços da **AWS**: É possível transferir dados entre compartilhamentos NFS ou SMB no local ou armazenamento compatível com a API do **Amazon S3** e serviços de armazenamento da **AWS** na nuvem. O armazenamento de NFS, SMB ou de objetos pode ser configurado como origem ou destino. O outro ponto de transferência pode ser um dos serviços de armazenamento da **AWS** compatíveis, como **Amazon S3**, **Amazon EFS** ou **Amazon FSx for Windows File Server**. Para esta arquitetura, é necessário implantar um agente on-premises. Este agente é instalado localmente no ambiente fornecido, que pode ser **VMware ESXi**, **Linux KVM** ou **Microsoft Hyper-V**.
  - Considerações de implementação:
    - No ambiente local, qualquer armazenamento compatível com compartilhamentos NFS, SMB ou armazenamento de objetos compatível com a API do S3 pode ser utilizado como origem ou destino.
    - O agente do DataSync deve ser implantado no local onde o compartilhamento de arquivos ou o armazenamento de objetos está localizado. A imagem necessária (.ova, .qcow2 ou .vhdx) deve ser baixada, implantada e ativada, associando o agente à conta da **AWS**.
    - O agente pode ser ativado com os seguintes tipos de endpoint:
      - Endpoints públicos: toda a comunicação ocorre pela Internet pública;
      - Endpoints FIPS: usados quando é necessário utilizar módulos criptográficos validados com FIPS 140-2 ao acessar regiões GovCloud;
      - Endpoints VPC: utilizados com Direct Connect ou VPN, permitindo que toda a comunicação ocorra por meio de um endpoint VPC, estabelecendo uma conexão privada entre o datacenter local e a VPC na **AWS**.
    - Segurança e criptografia: O DataSync criptografa os dados durante a transferência, utilizando TLS para criptografia de dados em trânsito, com AES de 256 bits.
    - É necessário ativar o agente na região da **AWS** onde os serviços de armazenamento, como **Amazon S3**, estão localizados.
- Transferência entre serviços de armazenamento da **AWS** na nuvem: O **AWS DataSync** permite transferir dados entre serviços de armazenamento da **AWS** compatíveis, sem a necessidade de um agente. Os serviços de armazenamento da **AWS** suportados incluem todas as classes do **Amazon S3**, **Amazon EFS** e **Amazon FSx for Windows File Server**. O local de origem pode ser qualquer um desses serviços, e o destino também deve ser um serviço de armazenamento da **AWS**.
  - Considerações de implementação na nuvem entre serviços de armazenamento da **AWS**:
    - O DataSync realiza a transferência de dados entre os serviços de armazenamento da **AWS** sem utilizar um agente.
    - A transferência pode ocorrer entre serviços na mesma região ou entre regiões diferentes da **AWS**.
    - É necessário garantir permissões e acesso adequados aos recursos envolvidos na transferência.
    - Podem ser aplicadas taxas adicionais, como aquelas associadas a transferências de dados entre regiões diferentes.
- Transferência entre compartilhamentos NFS ou SMB autogerenciados na nuvem e serviços de armazenamento da **AWS**: O DataSync permite transferir dados entre compartilhamentos NFS ou SMB autogerenciados hospedados em instâncias EC2 e serviços de armazenamento da **AWS**. Esses compartilhamentos podem atuar como origem ou destino da tarefa, sendo que o outro ponto pode ser um dos serviços de armazenamento da **AWS**, como **Amazon S3**, **Amazon EFS** ou **Amazon FSx for Windows File Server**. A arquitetura do DataSync segue o modelo usado para armazenamento on-premises, exigindo a implantação de um agente em uma instância **Amazon EC2** na Região **AWS** onde os compartilhamentos NFS ou SMB estão localizados.
  - Considerações de implementação para NFS e SMB autogerenciados na nuvem:
    - O agente deve ser implantado na mesma Região **AWS** e conta onde o sistema de arquivos NFS ou SMB de origem está localizado. Utilize a AMI do EC2 correspondente à Região **AWS**. A ativação do agente o associa à conta **AWS** de forma segura.
    - A ativação do agente pode ser feita por meio de diferentes tipos de endpoint:
      - Endpoints públicos: para compartilhamentos NFS ou SMB autogerenciados na nuvem.
      - Endpoints do Federal Information Processing Standard (FIPS): para uso de módulos criptográficos validados com FIPS 140-2 ao acessar regiões AWS GovCloud (EUA-Leste ou EUA-Oeste).
      - Endpoints da Virtual Private Cloud (VPC): para comunicação privada entre o DataSync e serviços da **AWS**, utilizando o endpoint da VPC na nuvem **AWS**.
    - O DataSync se integra ao **AWS Key Management Service (AWS KMS)** para criptografar dados em repouso. O serviço precisa de permissões de leitura e gravação nos serviços de armazenamento de destino.
    - O agente do DataSync deve ser ativado na Região **AWS** onde a conta **AWS** e os serviços de armazenamento estão localizados.



































