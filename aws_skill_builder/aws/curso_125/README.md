# Getting Started with Amazon Simple Storage Service   <img src="./0-aux/logo_course.png" alt="curso_125" width="auto" height="45">

### Repository: [course](../../../)   
### Platform: <a href="../../">aws_skill_builder   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/aws_skill_builder.png" alt="aws_skill_builder" width="auto" height="25"></a>
### Software/Subject: <a href="../">aws   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" alt="aws" width="auto" height="25"></a>
### Course: <a href="./">curso_125 (Getting Started with Amazon Simple Storage Service)   <img src="./0-aux/logo_course.png" alt="curso_125" width="auto" height="25"></a>

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
1. Getting Started with Amazon Simple Storage Service (Amazon S3) (Portuguese)<br>
1.1 <a href="#item01.1">Fundamentos do Amazon S3</a><br>
1.2 <a href="#item01.2">Segurança e Gerenciamento de Dados</a><br>

---

### Objective:
Este curso oferece o conhecimento essencial para iniciar o uso do **Amazon Simple Storage Service (Amazon S3)**. Foram abordados os principais componentes do serviço e a configuração adequada dos mesmos. O conteúdo também incluiu o processo de upload de dados no **Amazon S3** e a utilização de outros serviços da **Amazon Web Services (AWS)** para transferências em grande escala. Além disso, foram explorados os fundamentos de segurança no **Amazon S3**. Por fim, foi analisada a integração do **Amazon S3** com outros serviços, em diferentes cenários de aplicação. Os objetivos específicos incluíram:
- Descrever os componentes essenciais de uma implementação do **Amazon S3**;
- Detalhar as ferramentas e operações disponíveis para interação com o **Amazon S3**;
- Explicar os requisitos e limitações envolvidos no upload de dados para o **Amazon S3**;
- Criar um bucket no **Amazon S3** e realizar o upload de objetos;
- Apresentar os principais mecanismos de controle de acesso e segurança no **Amazon S3**;
- Implementar o bloqueio de acesso público a um bucket do S3;
- Descrever as integrações mais importantes do **Amazon S3** com outros serviços em cenários de uso específicos.

### Structure:
A estrutura do curso é formada por:
- Este arquivo de README.
- A pasta `0-aux`, pasta auxiliar com imagens utilizadas na construção desse arquivo de README. 

### Development:

<a name="item01.1"><h4>Fundamentos do Amazon S3</h4></a>[Back to summary](#item0)

O **Amazon S3** é uma solução de armazenamento na Internet projetada para facilitar a computação em escala na Web, atendendo tanto desenvolvedores quanto usuários. Trata-se de uma plataforma de armazenamento de objetos que permite armazenar e recuperar qualquer quantidade de dados, em qualquer momento e lugar da Web. Embora o conceito de armazenamento seja familiar, é importante destacar que existem diferentes tipos de armazenamento. O **Amazon S3** se baseia no modelo de armazenamento de objetos. Para compreender melhor esse modelo e suas diferenças em relação a outros tipos, é essencial explorar os distintos métodos de armazenamento:
- Armazenamento em bloco: Refere-se a um conjunto de bytes ou bits em um dispositivo de armazenamento. Os arquivos são divididos em blocos, que recebem identificadores únicos e são gravados em espaços vazios no disco. Esses blocos podem ser distribuídos entre vários discos ou ambientes, permitindo que blocos específicos sejam recuperados sem a necessidade de acessar o arquivo completo. Esse modelo é ideal para bancos de dados relacionais, nos quais, muitas vezes, é necessário acessar apenas uma parte específica de um arquivo, como um número de rastreamento de inventário ou um ID de funcionário.
- Armazenamento de arquivos: Historicamente, os sistemas operacionais organizam dados em sistemas de arquivos hierárquicos, compostos por diretórios, subdiretórios e arquivos (ou pastas e subpastas, dependendo do sistema). Por exemplo, em uma distribuição **Linux**, pode ser necessário procurar arquivos em diretórios como /var/log ou /etc/config. Nesse tipo de armazenamento, é preciso conhecer o caminho exato dos arquivos ou dispor de uma forma eficiente de pesquisa para localizá-los.
- Armazenamento de objetos: Diferentemente da estrutura hierárquica do armazenamento de arquivos, o armazenamento de objetos utiliza uma estrutura simples, onde os dados (objetos) são armazenados em um repositório único chamado bucket. Embora seja possível organizar os dados de maneira visual com o uso de prefixos e delimitadores de nomes de chave, dando a aparência de uma estrutura de pastas e subpastas na interface do usuário, a estrutura subjacente continua sendo simples e plana.

O **Amazon S3** é um serviço de armazenamento de objetos que oferece escalabilidade líder no mercado, alta disponibilidade de dados, segurança e desempenho. Foi projetado de forma intencional com um conjunto mínimo de funcionalidades, focando na simplicidade e robustez. A mesma infraestrutura de armazenamento de dados extremamente escalável, confiável, segura, rápida e econômica utilizada pela **Amazon** em sua rede global de sites está disponível para os usuários. O objetivo do serviço é maximizar os benefícios da escala e repassar essas vantagens aos clientes.

O armazenamento de objetos utiliza uma estrutura simples em que os dados, chamados objetos, são armazenados em buckets. Todos os dados dentro de um bucket são considerados objetos. No **Amazon S3**, é possível criar uma pseudoestrutura de pastas utilizando prefixos e delimitadores de nomes de chave, permitindo organizar e agrupar objetos de forma semelhante a uma hierarquia. Isso facilita a visualização e a recuperação dos dados na interface do usuário, onde os prefixos criam a aparência de uma estrutura de pastas e subpastas, embora o armazenamento em si permaneça simples e sem hierarquia real.

Buckets são contêineres permanentes que armazenam objetos no **Amazon S3**. Cada conta da **AWS** pode criar entre 1 e 100 buckets, com a possibilidade de solicitar um aumento desse limite para até 1.000 buckets. O tamanho dos buckets é virtualmente ilimitado, não sendo necessário definir um tamanho específico ao criá-los, como ocorre com volumes ou partições. Um bucket do **Amazon S3** é uma opção de armazenamento versátil, capaz de hospedar sites estáticos, manter o controle de versões dos objetos e aplicar políticas de ciclo de vida para equilibrar a retenção de dados com o tamanho e o custo do armazenamento. Antes de criar um bucket, é importante considerar algumas restrições e limitações:
- Propriedade do Bucket: O bucket pertence à conta **AWS** que o cria e não pode ser transferido para outra conta.
- Nomes de Buckets: Os nomes precisam ser globalmente únicos em toda a infraestrutura do S3, sem duplicatas.
- Renomear Buckets: Após a criação, o nome de um bucket não pode ser alterado.
- Entidades Permanentes: Buckets são permanentes e só podem ser removidos quando estiverem vazios. Após a exclusão, o nome do bucket se torna disponível para reutilização por qualquer conta depois de 24 horas, caso não seja utilizado por outra conta.
- Limites de Armazenamento de Objetos: Não há limite para o número de objetos que podem ser armazenados em um bucket. É possível armazenar todos os objetos em um único bucket ou distribuí-los em vários, mas não é permitido criar buckets dentro de outros buckets (aninhamento de buckets).
- Limite de Criação de Buckets: O limite padrão é de 100 buckets por conta, podendo ser ampliado para até 1.000 mediante solicitação de aumento de limite.

Ao nomear buckets no **Amazon S3**, é importante planejar cuidadosamente a estrutura dos nomes e seu uso. O bucket será utilizado apenas para armazenamento de dados ou também para hospedar um site estático? Os nomes dos buckets são essenciais no S3 e variam de acordo com sua finalidade. Como os nomes de bucket são globalmente visíveis, eles precisam estar em conformidade com o padrão DNS. Isso influencia o formato da URL do bucket, que segue o padrão: nome-do-bucket/endpoint da região, como em `https://my-s3bucket.s3.amazonaws.com/` Algumas regras devem ser observadas ao definir os nomes dos buckets:
- Devem ser exclusivos em toda a infraestrutura do **Amazon S3**;
- O comprimento deve variar entre 3 e 63 caracteres;
- Devem conter apenas letras minúsculas, números, pontos (.) e hífens (-);
- Precisam começar com uma letra minúscula ou um número;
- Não podem começar com o prefixo "xn--" (desde fevereiro de 2020);
- Não podem estar formatados como endereços IP (exemplo: 198.68.10.2);
- O uso de pontos (.) no nome do bucket deve ser restrito a buckets destinados à hospedagem de sites estáticos no **Amazon S3**; caso contrário, o ponto não deve ser utilizado.

O **Amazon S3** é um sistema de armazenamento de objetos que utiliza chaves exclusivas para armazenar qualquer quantidade de objetos. Esses objetos são organizados em buckets, e cada objeto pode ter até 5 TB de tamanho. Um objeto no S3 é composto pelos seguintes elementos: chave, ID da versão, valor, metadados e informações de controle de acesso.
- Objeto: Refere-se ao arquivo armazenado no S3, junto com todos os metadados que o descrevem. Ao armazenar um arquivo, é possível definir permissões tanto no arquivo quanto nos metadados associados.
- Chave: A chave é o identificador exclusivo de um objeto dentro de um bucket. No **Amazon S3**, não existe uma hierarquia de diretórios real, mas prefixos e delimitadores podem ser usados para simular uma estrutura de pastas ao visualizar os objetos pelo console do S3. Na prática, trata-se apenas de um nome de chave longo.
- ID da versão: O versionamento no S3 permite manter múltiplas versões de um objeto. Quando habilitado, o S3 gera automaticamente um ID exclusivo para cada versão de um objeto. Isso é útil para preservar, recuperar e restaurar versões anteriores de arquivos e proteger contra operações acidentais.
- Valor: Refere-se ao conteúdo real do objeto, que pode ser qualquer sequência de bytes, variando de 0 a 5 TB de tamanho.
- Metadados: São informações adicionais associadas a um objeto. Existem dois tipos de metadados no S3:
  - Metadados de sistema, controlados pelo S3, como a data de criação e o tamanho do objeto.
  - Metadados controlados pelo usuário, como a classe de armazenamento e configurações de criptografia.
- Controle de acesso: O S3 permite o controle detalhado de quem pode acessar os objetos por meio de políticas baseadas em recursos (como ACLs e políticas de bucket) e políticas baseadas em usuário (IAM Policies).

Uma tag é um rótulo que é atribuído a um recurso da **AWS**, composto por uma chave e um valor opcional, definidos para atender às necessidades da sua empresa. No **Amazon S3**, as tags são pares de chave-valor aplicáveis a um bucket ou a objetos individuais, facilitando a identificação, pesquisa e categorização de dados. O uso de tags para os objetos permite gerenciar efetivamente o armazenamento e fornecer insights sobre como os dados são usados. As tags recém-criadas atribuídas a um bucket não são aplicadas retroativamente aos objetos filhos existentes. Existem dois tipos de tags:
- Tags de Bucket: São usadas para rastrear o custo de armazenamento e outras métricas ao associar tags de alocação de custos a buckets do S3. Essas tags ajudam a segmentar os custos no relatório de alocação de custos da **AWS**, mas são aplicáveis apenas a buckets, e não a objetos individuais.
- Conjunto de Tags de Bucket: Cada bucket pode ter um conjunto de até 50 tags. As chaves dentro desse conjunto precisam ser únicas, mas os valores podem se repetir. Por exemplo, o valor "ocean-life" pode aparecer em chaves diferentes, como project/ocean-life e topic/ocean-life. No entanto, uma chave duplicada resultaria em erro.
- Tags de Objetos: Permitem categorizar e consultar objetos no **Amazon S3**. As tags podem ser adicionadas durante ou após o upload de um objeto, com até 10 tags por objeto. As chaves podem ter até 128 caracteres e os valores, até 255. As tags diferenciam maiúsculas de minúsculas e seguem as regras de exclusividade de chave para o mesmo objeto.

A **AWS** oferece dois tipos de tags de alocação de custos:
- Tag gerada pela **AWS**: A **AWS** cria e aplica automaticamente a tag `createdBy` após um evento de criação de bucket (CreateBucket) no **Amazon S3**. Essa tag é gerada e gerida pela própria **AWS**.
- Tag definida pelo usuário: Essas tags são definidas, criadas e aplicadas ao bucket do S3 conforme as necessidades específicas de alocação de custos.

Após a criação das tags definidas pelo usuário, é necessário ativá-las no console de Billing and Cost Management. Elas aparecem no **AWS Cost Explorer**, **AWS Budgets**, **AWS Cost and Usage Reports** ou nos relatórios legados, permitindo o acompanhamento da alocação de custos dos recursos da **AWS** com base nas tags associadas. Essas tags são úteis para monitorar o uso e os custos dos serviços da **AWS**, oferecendo maior transparência e controle sobre os gastos.

Dentre os benefícios do uso das tags, destacam-se:
- Controle de Acesso Refinado: As tags de objeto permitem um controle de acesso detalhado sobre as permissões. Por exemplo, é possível conceder a um usuário do IAM permissão de somente leitura para objetos que possuam tags específicas.
- Gerenciamento do Ciclo de Vida: As tags de objeto possibilitam um gerenciamento mais preciso do ciclo de vida dos objetos. É viável especificar um filtro baseado em tag, além de um prefixo de nome de chave, em uma regra de ciclo de vida.
- Análise do **Amazon S3**: Ao utilizar a análise do **Amazon S3**, é possível configurar filtros para agrupar objetos para análise com base em tags de objeto, prefixo de nome de chave ou uma combinação de ambos.
- Personalização de Métricas no CloudWatch: As métricas do **Amazon CloudWatch** podem ser personalizadas para exibir informações utilizando filtros de tags específicos.

Operações de API de Objeto para Marcação: Com a marcação do **Amazon S3**, para adicionar ou substituir uma tag em um conjunto de tags (todas as tags associadas a um objeto ou bucket), é necessário fazer o download de todas as tags, modificar as tags desejadas e, em seguida, substituir todas as tags de uma só vez.

O **Amazon S3** é um serviço visível globalmente. Isso significa que, no Console de Gerenciamento da **AWS**, não é necessário especificar uma região para exibir os buckets. No entanto, ao criar um bucket inicialmente, é necessário escolher uma região para indicar onde os dados do bucket devem residir. A região escolhida deve ser local em relação aos usuários ou consumidores para otimizar a latência, minimizar custos ou atender aos requisitos regulatórios. Por exemplo, se houver residência na Europa, é recomendado criar buckets nas regiões Europa (Irlanda) ou Europa (Frankfurt), em vez de criar buckets na Ásia-Pacífico (Sydney) ou na América do Sul (São Paulo). Dessa forma, os dados estarão mais próximos dos usuários e consumidores, reduzindo a latência, garantindo regulamentação e atendendo aos requisitos legais do país.
- Replicação entre regiões (CRR — Cross-Region Replication): Se for necessário ter dados armazenados em várias regiões, é possível replicar o bucket para outras regiões usando a replicação entre regiões. Isso permite copiar automaticamente objetos de um bucket em uma região para um bucket diferente em outra região separada. É possível replicar todo o bucket ou usar tags para replicar somente os objetos com as tags escolhidas.
- Replicação para a mesma região (SRR — Same-Region Replication): O **Amazon S3** aceita a replicação automática e assíncrona de objetos do S3 carregados recentemente em um bucket de destino na mesma região da **AWS**. A SRR cria outra cópia dos objetos do S3 dentro da mesma região da **AWS**, mantendo a mesma redundância da categoria de armazenamento de destino. Isso permite agregar automaticamente logs de buckets diferentes do S3 para processamento na região ou configurar a replicação em tempo real entre ambientes de teste e desenvolvimento. A SRR ajuda a cumprir requisitos de soberania e conformidade de dados ao manter uma cópia dos objetos na mesma região da **AWS** que o original.

O **Amazon S3** pode ser utilizado para hospedar um site estático. Em um site estático, as páginas da Web individuais contêm apenas conteúdo que não muda com frequência, ao contrário de um site dinâmico, onde o conteúdo é atualizado constantemente. No Console de Gerenciamento da **AWS**, a configuração do bucket para hospedagem de sites estáticos pode ser realizada facilmente, sem a necessidade de escrever código. Para hospedar um site estático no **Amazon S3**, é necessário configurar um bucket para essa finalidade e fazer upload do conteúdo. Ao configurar um bucket como um site estático, é importante habilitar a hospedagem de sites, definir permissões de leitura pública e criar um documento de índice. Dependendo das necessidades do site, também é possível configurar redirecionamentos, registro em log do tráfego da web e um documento de erro personalizado. Para aqueles que preferem não usar o Console de Gerenciamento da **AWS**, a configuração do site pode ser criada, atualizada e excluída programaticamente utilizando os SDKs da **AWS**.

Para garantir a melhor compatibilidade, recomenda-se evitar o uso de pontos (.) em nomes de bucket, exceto ao usar buckets para hospedagem de sites estáticos. Incluir pontos em um nome de bucket que não seja para um site estático impede o uso do endereçamento no estilo host virtual por HTTPS, a menos que a validação de certificado própria seja realizada. Isso se deve ao fato de que os certificados de segurança utilizados para hospedagem virtual de buckets não funcionam para buckets com pontos nos nomes. A hospedagem virtual é a prática de atender a vários sites a partir de um único servidor web.

Após a criação de um bucket, existem várias maneiras de adicionar, substituir ou recuperar objetos no bucket do **Amazon S3**. As três principais ferramentas para interagir com buckets são o Console da **AWS**, a Interface de Linha de Comando (CLI) da **AWS** e o Kit de Desenvolvimento de Software (SDK) da **AWS**. Cada uma dessas ferramentas permite trabalhar com os dados de acordo com as preferências e necessidades do usuário.
- **AWS Management Console**: O Console de Gerenciamento da **AWS** oferece uma interface web simples para interagir com os serviços da **AWS**. É necessário fazer login utilizando o nome da conta e a senha da **AWS**. Se a autenticação multifatorial estiver habilitada, será solicitado o código de autenticação do dispositivo. Com o Console de Gerenciamento da **AWS** para **Amazon S3**, é possível visualizar buckets e objetos, realizar uploads e downloads de dados, além de gerenciar permissões e segurança por meio da interface gráfica. Quase todas as operações de bucket podem ser executadas sem necessidade de escrever código. Ao fazer upload de dados pelo Console, o arquivo máximo permitido é de 160 GB. Para arquivos maiores que esse limite, é recomendado utilizar a **AWS CLI**, o SDK da **AWS** ou a API REST do **Amazon S3**.
- **AWS Command Line Interface (AWS CLI)**: A CLI da **AWS** é uma ferramenta unificada para gerenciar os serviços da **AWS**. É ideal para gerenciar dados, buckets e objetos do **Amazon S3**, especialmente para usuários que preferem ou precisam da funcionalidade da linha de comando. É possível fazer upload, download e gerenciar objetos manualmente utilizando os comandos da **AWS CLI** ou automatizar processos através de scripts.
- **AWS Software Development Kit (AWS SDK)**: O SDK da **AWS** simplifica a codificação ao fornecer bibliotecas específicas para diferentes linguagens de programação, facilitando a criação de aplicações na **AWS**. O uso do **Amazon S3** pode ser simplificado nas aplicações através da API adequada para a linguagem de programação ou plataforma escolhida. É possível enviar solicitações autenticadas ao **Amazon S3** utilizando o SDK da **AWS** ou realizando chamadas de API REST diretamente nas aplicações. Diversos SDKs estão disponíveis, permitindo desenvolver soluções conforme necessário para o **Amazon S3**.

A API REST é uma interface HTTP para o **Amazon S3**. Com essa API, é possível utilizar solicitações HTTP padrão para criar, buscar e excluir buckets e objetos. Qualquer toolkit que suporte HTTP pode ser utilizado com a API REST, inclusive navegadores, desde que os objetos possam ser lidos anonimamente. O **Amazon S3** disponibiliza a API REST, permitindo que objetos e buckets sejam considerados recursos, cada um identificado por um URL único. Os modelos de endereçamento são URLs que definem a forma de localizar dados em um bucket do S3, e o **Amazon S3** oferece suporte a dois tipos: URLs de caminho e URLs de hospedagem virtual.
- URLs de caminho: Nesses URLs, o nome do bucket é colocado após o endpoint global ou específico da região. A formatação do URL segue o padrão: `https://region-specific-endpoint/bucket/object`. O bucket é sempre um subdomínio de s3.amazonaws.com, e quando o DNS resolve esse URL, o endpoint será um subdomínio de s3.amazonaws.com. Importante ressaltar que, com URLs de caminho, várias contas de diferentes empresas e proprietários mapeiam para este único subdomínio, s3.amazonaws.com. Para um URL personalizado, recomenda-se optar por URLs hospedadas virtualmente. Vale mencionar que existe um plano de descontinuação para URLs de caminho em buckets recém-criados. Embora o suporte continue para URLs de caminho criadas anteriormente, uma vez que esse recurso seja obsoleto, a criação de novas URLs de caminho não será mais possível. Essas informações devem ser consideradas ao planejar o futuro do ambiente.
- Hospedagem virtual: é a prática de atender vários sites a partir de um único servidor web. Uma forma de diferenciar sites é através do nome do host (nome do bucket) da solicitação. Em um URL de hospedagem virtual, o nome do bucket faz parte do nome de domínio, o que o torna mais legível e amigável ao usuário final, no qual a formatação segue o padrão: `https://bucket.region-specific-endpoint/object`. Além disso, a hospedagem virtual apresenta outros benefícios. É possível personalizar completamente a URL dos recursos do **Amazon S3** nomeando o bucket após o nome de domínio registrado, tornando esse nome um alias DNS para o **Amazon S3**. Por exemplo, um URL personalizado para um curso de introdução poderia ser: `http://getting-started-with-s3.net/`. A hospedagem virtual também permite a publicação no “diretório raiz” do servidor virtual do bucket, um recurso importante que possibilita que aplicativos pesquisem arquivos em um local padronizado do diretório raiz. Ao utilizar buckets no estilo de hospedagem virtual com SSL, o certificado curinga SSL apenas corresponde a buckets que não contêm pontos (.). Para contornar essa limitação, recomenda-se não utilizar pontos (.) em nomes de buckets ou utilizar HTTP para implementar uma lógica própria de verificação de certificado.

O **Amazon S3** utiliza o Sistema de Nomes de Domínio (DNS — Domain Name System) para direcionar solicitações para as instalações apropriadas. Embora esse sistema opere com eficiência, podem ocorrer erros de roteamento temporários. Caso uma solicitação chegue a um local incorreto no **Amazon S3**, a resposta será um redirecionamento temporário, solicitando que o usuário reenvie a solicitação para um novo endpoint. Se a solicitação estiver malformada, o **Amazon S3** utiliza redirecionamentos constantes para orientar sobre como realizar a solicitação corretamente. Aqui está um exemplo do passo a passo do roteamento de uma solicitação DNS hipotética:
- O cliente realiza uma solicitação para recuperar o objeto dolphins.jpg.
- O cliente deseja visualizar o objeto dolphins.jpg armazenado no **Amazon S3** e faz uma solicitação de DNS para obter o endereço de s3.amazonaws.com.
- O cliente recebe um ou mais endereços IP para instalações capazes de processar a solicitação. Neste exemplo, o endereço IP é do Servidor B.
- O cliente faz uma solicitação para a Instalação B do **Amazon S3**.
- O Servidor B retorna uma cópia do objeto dolphins.jpg para o cliente.

O **Amazon S3** usa o Sistema de Nomes de Domínio (DNS — Domain Name System) para rotear solicitações para instalações capazes de processá-las. Esse sistema funciona com eficiência, mas podem ocorrer erros de roteamento temporários. Se uma solicitação chega na localização errada do **Amazon S3**, ele responde com um redirecionamento temporário pedindo que o solicitante reenvie a solicitação para um novo endpoint. Se uma solicitação é formada de maneira incorreta, o **Amazon S3** usa redirecionamentos constantes para fornecer direções sobre como executar a solicitação corretamente. Observe o passo a passo o roteamento de uma solicitação DNS hipotética:
- O cliente está fazendo uma solicitação para recuperar o objeto dolphins.jpg.
- O cliente deseja visualizar o objeto dolphins.jpg armazenado no **Amazon S3**. O cliente faz uma solicitação de DNS para obter o endereço de s3.amazonaws.com (`https://getting-started-with-s3.s3.amazonaws.com/dolphins.jpg`); 
- O cliente recebe um ou mais endereços IP para instalações capazes de processar a solicitação. Neste exemplo, o endereço IP é para o Servidor B; 
- O cliente faz uma solicitação para a Instalação B do **Amazon S3**; 
- O Servidor B retorna uma cópia do objeto dolphin.jpg para o cliente.

Um dos requisitos de design do **Amazon S3** é garantir uma disponibilidade extremamente alta. Uma das formas de atender a esse requisito é atualizando os endereços IP associados ao endpoint do **Amazon S3** no DNS, conforme necessário. Devido à natureza distribuída do **Amazon S3**, as solicitações podem, em alguns casos, ser temporariamente direcionadas para a região errada, especialmente logo após a criação ou exclusão de buckets. Um redirecionamento temporário é um tipo de resposta de erro que indica que o solicitante deve reenviar a solicitação para um endpoint diferente. Por exemplo, se um bucket recém-criado for acessado imediatamente após sua criação, pode ocorrer um redirecionamento temporário, dependendo da localização do bucket. Se o bucket foi criado na região Leste dos EUA (Norte da Virgínia), não haverá redirecionamento, pois essa é também o endpoint padrão do **Amazon S3**. No entanto, se o bucket foi criado em qualquer outra região da **AWS**, todas as solicitações para esse bucket serão encaminhadas para o endpoint padrão até que a entrada DNS do bucket seja totalmente propagada. O endpoint padrão, nesse caso, redireciona a solicitação para o endpoint correto, retornando uma resposta HTTP 302. Esses redirecionamentos temporários incluem um URI que aponta para a região correta, permitindo que a solicitação seja reenviada imediatamente. Aqui está um exemplo do passo a passo de um redirecionamento temporário de DNS hipotético:
- O cliente faz uma solicitação de DNS para obter o objeto dolphin.jpg armazenado no Amazon S3;
- O cliente recebe um endereço IP de uma região que pode processar a solicitação. Neste exemplo, o IP retornado é 192.168.7.52; 
- O cliente faz uma solicitação para a Região B do Amazon S3, localizada em 192.168.7.52; 
- A Região B retorna um redirecionamento indicando que o objeto está disponível no Local D, em 192.168.7.54;
- O cliente reenvia a solicitação para a Região D, em 192.168.7.54;
- A Região D retorna uma cópia do objeto solicitado.

<a name="item01.2"><h4>Segurança e Gerenciamento de Dados</h4></a>[Back to summary](#item0)


























