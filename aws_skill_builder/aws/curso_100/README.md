# AWS Identity and Access Management - Architecture and Terminology   <img src="./0-aux/logo_course.png" alt="curso_100" width="auto" height="45">

### Repository: [course](../../../)   
### Platform: <a href="../../">aws_skill_builder   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/aws_skill_builder.png" alt="aws_skill_builder" width="auto" height="25"></a>
#### Software/Subject: <a href="../">aws   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original.svg" alt="aws" width="auto" height="25"></a>
### Course: <a href="./">curso_100 (AWS Identity and Access Management - Architecture and Terminology)   <img src="./0-aux/logo_course.png" alt="curso_100" width="auto" height="25"></a>

#### <a href="https://github.com/PedroHeeger/main/blob/main/cert_ti/04-curso/cloud/aws/(23-11-23)%20Introduction...(CLI)%20PH%20AWSSB.pdf">Certificate</a>

---

### Theme:
- Cloud Computing

### Used Tools:
- Operating System (OS): 
  - Windows 11   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows11.png" alt="windows11" width="auto" height="25">
- Cloud:
  - Amazon Web Services (AWS)   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original.svg" alt="aws" width="auto" height="25">
- Cloud Services:
  - AWS Identity and Access Management (IAM)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_iam.svg" alt="aws_iam" width="auto" height="25">
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
- Command Line Interpreter (CLI):
  - AWS Command Line Interface (CLI)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_cli.svg" alt="aws_cli" width="auto" height="25">
  - Windows PowerShell   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows_power_shell.png" alt="windows_power_shell" width="auto" height="25">

---

<a name="item0"><h3>Course Strcuture:</h3></a>
1. <a href="#item01">AWS Identity and Access Management - Architecture and Terminology (Portuguese)</a><br>

---

### Objective:
O objetivo desse curso foi apresentar a arquitetura e a terminologia básicas do serviço **AWS Identity and Access Management (IAM)**, explicando as vantagens de usar o IAM e como ele se integra aos serviços. O IAM permite gerenciar o acesso às ofertas e recursos da **Amazon Web Services (AWS)** com segurança. Neste curso, foi ensinado sobre como: Definir usuários e grupos do IAM; Definir estrutura, avaliação e lógica de políticas de IAM; Descrever funções e políticas de confiança e permissão do IAM; Descrever nomes dos recursos da Amazon (ARNs); Identificar políticas baseadas em recursos e identidades; Identificar permissões em nível de recurso.

### Structure:
A estrutura do curso é formada por:
- Este arquivo de README.md.
- A pasta `0-aux`, pasta auxiliar com imagens utilizadas na construção desse arquivo de README. 

### Development:

<a name="item01"><h4>AWS Identity and Access Management - Architecture and Terminology (Portuguese)</h4></a>[Back to summary](#item0)

O **AWS Identity and Access Management (IAM)** permite controlar com segurança o acesso individual e em grupo aos recursos da **AWS**, criando e gerenciado usuários, grupos e permissões de usuário para os produtos da **AWS**. O IAM oferece opções de controle fino e oferece suporte a usuários federados ou usuários fora da **AWS** por meio da integração deles com o **Microsoft Active Directory** de uma empresa ou com um provedor de identidade terceirizado como Facebook ou Google, fazendo com que os usuários autenticados assumam funções do IAM.

Em vez de compartilhar as credenciais da conta-raiz com outras pessoas, é possível criar usuários individuais do IAM dentro dela, cada um correspondendo a um usuário na organização. Os usuários do IAM (*IAM User*) não são contas separadas, eles são usuários dentro de uma conta da **AWS**. Os usuários do IAM têm um conjunto permanente de credenciais, sendo possível atribuir permissões a eles. Um grupo do IAM (*IAM Group*) é um conjunto de usuários do IAM. Os grupos permitem que sejam especificadas permissões para vários usuários ao mesmo tempo, facilitando o gerenciamento de permissões em uma grande organização. Um usuário pode pertencer a vários grupos e grupos só podem conter usuários, não outros grupos. Nenhum grupo padrão inclui automaticamente todos os usuários na conta da **AWS**. Um usuário adicionado a um grupo herda as permissões do grupo e também mantém suas próprias permissões de usuário. Os usuários podem ser retirados de um grupo e adicionados a outro caso eles mudem de função na empresa.

Ao criar políticas, é concedido permissões a usuários, grupos e funções do IAM. Há dois tipos de políticas do IAM: políticas gerenciadas e políticas em linha. As políticas gerenciadas são políticas independentes que podem ser associadas a vários usuários, grupos e funções na conta da **AWS**. As políticas gerenciadas subdividem-se em dois tipos. As políticas gerenciadas pela **AWS** são criadas e gerenciadas pela **AWS**, enquanto as políticas gerenciadas pelo cliente são políticas que o cliente cria e gerencia. Já as políticas em linha são aquelas que o cliente cria e gerencia e que são incorporadas diretamente em um único usuário, grupo ou função.

Documentos de política JSON são compostos de elementos, sendo que a ordem dos elementos não importa. Alguns elementos da política são obrigatórios enquanto outros são opcionais. Alguns elementos de política JSON são mutuamente exclusivos, o que significa que não é possível criar uma política que use os dois (Action e NotAction; Principal e NotPrincipal; Resource e NotResource). Os detalhes do que entra em uma política variam por serviço, dependendo de quais ações ele disponibiliza, que tipos de recursos contém e assim por diante.

Statement é o elemento principal de uma política que contém vários elementos e declarações, sendo que cada declaração individual é um bloco JSON entre chaves. O elemento Statement é obrigatório. Version define a versão da linguagem da política. Os únicos valores permitidos são: 2012-12-17 (a versão atual da linguagem da política) ou 2008-10-17 (uma versão anterior que ainda tem suporte mas não possui alguns recursos). Se não for incluído um elemento Version, o valor terá como padrão 2008-10-17, mas recursos mais recentes, como variáveis de política, não funcionarão com a política. Effect é um elemento obrigatório que especifica se a declaração resulta em uma permissão ou em uma negação explícita. Action descreve as ações específicas que serão permitidas ou negadas. Resource especifica os objetos que a declaração abrange, definindo um recurso pelo seu ARN. O Sid (ou ID de declaração) é um identificador opcional que informa à declaração da política. O valor do Sid precisa ser exclusivo em uma política. NotAction é um elemento de política avançado que corresponde explicitamente a tudo exceto a lista de ações especificada. O NotResource é outro elemento de política avançado que corresponde explicitamente a tudo exceto a lista de recursos especificada. O uso de NotAction e NotResource pode resultar em uma política mais curta ao listar apenas algumas ações ou recursos que não devem corresponder, em vez de incluir uma longa lista de recursos para correspondência. O elemento (ou bloco) Condition é opcional e permite que seja especificado condições para quando uma política estiver em vigor, através de expressões com operadores de condição booleanos (igual, menor que, etc.) para fazer a correspondência de condição na política com os valores na solicitação.

O console do IAM inclui tabelas do resumo da política que descrevem o nível de acesso, os recursos e as condições permitidas ou negadas para cada serviço em uma política. As políticas são resumidas em três tabelas: o resumo da política, o resumo do serviço e o resumo da ação. A tabela de resumo da política inclui uma lista de serviços, onde pode ser escolhido um serviço para ver a tabela resumo do serviço. Esta tabela de resumo inclui uma lista das ações e permissões associadas para o serviço escolhido, no qual pode ser escolhido uma ação dessa tabela para visualizar o resumo da ação. A tabela resumo da ação inclui uma lista de recursos e condições para a ação escolhida.

Na Lógica de Avaliação de Políticas a decisão começa ao levar em conta que a solicitação será negada. O código de imposição avalia todas as políticas baseadas em usuários e em recursos aplicáveis à solicitação. Ele procura uma declaração de negação explícita que se aplica à solicitação. Se o código encontrar uma única negação explícita aplicável, ele retornará uma decisão de "negar", e o processo será concluído. Se nenhuma negação explícita for encontrada, o código procurará instruções de "permitir" que se aplicam à solicitação. Se encontrar uma permissão explícita, o código retornará uma decisão de "permitir", e o serviço continuará a processar a solicitação. Se nenhuma permissão for encontrada, a decisão final será "negar".

Uma função do IAM é muito semelhante a um usuário, ao ser uma *AWS Identity* com políticas de permissão que determinam o que a identidade pode e não pode fazer na **AWS**. No entando, em vez de ser associada exclusivamente a uma pessoa, a finalidade da função é ser assumida por qualquer pessoa que precise dela. Além disso, funções não têm credenciais (senha ou chave de acesso) associadas a elas. Em vez disso, se um usuário for atribuído a uma função, chaves de acesso serão criadas dinamicamente e providenciadas ao usuário. As funções do IAM não têm credenciais de longo prazo como usuários do IAM têm. Em vez disso, quando um usuário assume uma função, o STS emite um conjunto de credenciais temporárias para acessar a **AWS**. Essas credenciais expiram após um tempo determinado. 

Uma função do IAM tem duas partes distintas. A política de confiança (*Trust Policy*) define quem pode assumir a função. O elemento "principal" da política de confiança especifica quem pode assumir a função. A política de permissões que define quais permissões a função pode desempenhar.

Cada recurso da **AWS** tem um nome de recurso da Amazon, ou "ARN", exclusivo. Os ARNs ajudam a especificar um recurso em toda a cloud, como em políticas de IAM, tags do Amazon RDS ou chamadas de API. Normalmente, um ARN está no seguinte formato `arn:partition:service:region:account-id:resourcetype/resource`. A partição é "aws". O serviço é IAM. Na região como o IAM é um serviço global, ela é ignorada ficando vazia `::`. Em seguida o id da conta é o numéro de identificação da conta da **AWS**. O tipo de recurso é "user", e o recurso é o nome do recurso utilizado.

Políticas baseadas em recursos são aplicadas a um serviço ou recurso. Casos de uso típicos incluem: uma política de bucket do S3, um tópico do SNS ou uma fila SQS. Use políticas baseadas em recursos quando não precisar gerenciar credenciais de usuários individuais em nível granular. Já as políticas baseadas em identidades são associadas a um usuário ou um grupo do IAM. Permissões no nível do recurso referem-se à capacidade de especificar não só que ações os usuários podem executar, mas em quais recursos eles têm permissão para executá-las. Esse é um nível de permissões mais granular. Por exemplo, com permissões no nível do recurso, é possível especificar se um usuário só deve ter permissão para interromper uma instância do EC2 com um ARN específico.