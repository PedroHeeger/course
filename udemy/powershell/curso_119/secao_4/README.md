# Aprenda PowerShell do zero - Módulo 4   <img src="./0-aux/logo_course.png" alt="curso_119" width="auto" height="45">

### Repository: [course](../../../)
### Platform: <a href="../../">udemy   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/udemy.png" alt="udemy" width="auto" height="25"></a>
### Software/Subject: <a href="../">powershell   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows_powershell.png" alt="windows_powershell" width="auto" height="25"></a>
### Course: <a href="./">curso_119 (Aprenda PowerShell do zero)   <img src="./0-aux/logo_course.png" alt="curso_119" width="auto" height="25"></a>
### Module: 4. Seção 4: Gerenciamento com PowerShell

---

### Theme:
- Programming
- Shell Script

### Used Tools:
- Operating System (OS): 
  - Windows 11 <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows11.png" alt="windows11" width="auto" height="25">
- Cloud:
  - Amazon Web Services (AWS)   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" alt="aws" width="auto" height="25">
- Cloud Services:
  - Amazon Elastic Compute Cloud (EC2)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_ec2.svg" alt="aws_ec2" width="auto" height="25">
  - Google Drive <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/google_drive.png" alt="google_drive" width="auto" height="25">
- Language:
  - HTML   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" alt="html" width="auto" height="25">
  - Markdown   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/markdown/markdown-original.svg" alt="markdown" width="auto" height="25">
- Integrated Development Environment (IDE) and Text Editor:
  - Visual Studio Code (VS Code)   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" alt="vscode" width="auto" height="25">
  - Windows PowerShell ISE   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows_powershell_ise.webp" alt="windows_powershell_ise" width="auto" height="25">
- Versioning: 
  - Git   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="git" width="auto" height="25">
- Repository:
  - GitHub   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="github" width="auto" height="25">
- Command Line Interpreter (CLI):
  - AWS Command Line Interface (CLI)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_cli.svg" alt="aws_cli" width="auto" height="25">
  - Windows PowerShell   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows_power_shell.png" alt="windows_power_shell" width="auto" height="25">
- Network:
  - OpenSSH   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/openssh.png" alt="openssh" width="auto" height="25">
  - Remote Desktop Protocol Client (RDP Client)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/rdp_client.png" alt="rdp_client" width="auto" height="25">

---

### Course Module 4 Strcuture:
4. <a href="#item04">Seção 4: Gerenciamento com PowerShell</a><br>
  4.1 <a href="#item04.01">Executando o PowerShell remotamente</a><br>
  4.2 <a href="#item04.02">Sessão persistente usando PSSession, Invoke-Command e Jobs</a><br>
  4.3 <a href="#item04.03">PowerShell Remoto usando maquina fora do Domínio</a><br>
  4.4 <a href="#item04.04">Salvando credenciais para scripts de acesso remoto</a><br>
  4.5 <a href="#item04.05">Acessando o PowerShell através da WEB com o PSWA</a><br>
  4.6 <a href="#item04.06">Renomear Computador</a><br>
  4.7 <a href="#item04.07">Alterar endereço IP e adicionar computador ao domínio do Active Directory</a><br>
  4.8 <a href="#item04.08">Gerenciando o Active Directory</a><br>
  4.9 Módulos do PowerShell<br>

---

### Objective:
O objetivo desse primeiro módulo do curso foi apresentar o essencial do **Windows PowerShell**, explicando alguns conceitos básicos e mostrando alguns comandos. Também foi apresentado o **Windows PowerShell ISE** que é uma Interface Development Environment (IDE) para construção de scripts em **PowerShell**.

### Structure:
A estrutura deste módulo é formada por:
- Este arquivo de README.md.


<div align="Center"><figure>
    <img src="../0-aux/md2-img1.png" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:
O desenvolvimento deste módulo do curso foi dividido em oito aulas. Abaixo é explicado o que foi desenvolvido em cada uma dessas aulas.

<a name="item04.01"><h4>4.1 Executando o PowerShell remotamente</h4></a>[Back to summary](#item04)

O **PowerShell** é a melhor ferramenta para administração remota. Ele permite criar script e executar em vários servidores. Mas para isso é necessário habilitar o gerenciamento remoto. O *Remoting PowerShell* é construído sobre **Windows Remote Management (WinRM)** para fornecer acesso remoto a maquinas. Ele é um recurso que permite uma implementação de um protocolo **Microsoft** que permite fazer administração remota. O **Windows Remote Management (WinRM)** é um protocolo de gerenciamento remoto que permite a comunicação segura entre computadores em uma rede. Ele é desenvolvido pela **Microsoft** e faz parte da infraestrutura de gerenciamento remoto do **Windows**.

Para trabalhar com o *Remoting PowerShell* é preciso verificar algumas questões. A primeira delas é a comunicação TCP-IP, tem que ter certeza que as duas maquinas estão na mesma rede e estão sob o mesmo Gateway. Outra questão importante é ter certeza se o Firewall está habilitado ou não. Ao habilitar o PowerShell Remoto, ele automaticamente cria regra de firewall liberando o acesso. Outra situação é verificar se as maquinas fazem parte de um mesmo domínio do Active Directory. Caso uma delas não faça parte do mesmo domínio, seja uma maquina Stand-Alone, é necessário criar uma lista de servidores de maquinas de computadores confiáveis para fazer a execução do acesso remoto.

O PowerShell suporta dois modos de acesso remoto, um é a sessão persistente ou sessão resiliente. Sessões de acesso remoto no PowerShell são de extrema importância para a execução de scripts de longa duração, como um job por exemplo. Porque por mais que haja uma queda na sessão, ela vai sempre tentar reconectar, impedindo que a sessão seja interrompida. Muito diferente do `Invoke-Command` que é um command-let que inicia uma sessão com o Servidor, executa aquele comando e imediatamente ele fecha essa sessão. A vantagem é que é possível ter as informações do que foi executado no console. Para se conectar a essas sessões (computadores), é necessário utilizar o command line interface (CLI) através da linha de comando com o **PowerShell**, pode ser utilizado o próprio **PowerShell ISE** que permitem realizar um acesso remoto de um jeito muito fácil ou através do **Server Manager** que é um recurso do **Windows Server**.

Para realizar esses dois modos de acesso remoto foi instanciada uma maquina **Windows Server** na cloud da **AWS** através do serviço **Amazon Elastic Compute Cloud (EC2)**. Para a instanciação foi utilizado o arquivo de script em **PowerShell** [ec2Instance.ps1](./resources/ec2Instance.ps1) armazenado na sub-pasta [resources](./resources/) deste módulo do curso. Esse arquivo utilizou comandos do **AWS CLI** para interagir com as APIs dos serviços da **AWS** e já estava instalado na maquina física **Windows**.

A instância construída era um **Windows Server**, cuja imagem de maquina foi a `ami-0f9c44e98edf38a2b` e o tipo de instância foi `t2.micro`. Um volume no serviço **Amazon Elastic Block Storage (EBS)** foi desenvolvido no dispositivo `/dev/sda1` com `30` gigas de armazenamento do tipo `gp2`. Também foi passado o par de chaves `keyPairUniversal` que é um par de chaves padrão já elaborado para meus projetos. O grupo de segurança e a sub-rede utilizada foram os padrões da VPC padrão da região, sendo a sub-rede da zona de disponibilidade `us-east-1a`. Uma tag de nome com o valor `ec2DefaultTest1` foi definida para essa instância.

Após a instância da máquina, procedeu-se inicialmente à realização de um acesso remoto, com a possibilidade de interação através da interface gráfica. No console da **AWS** pelo navegador da maquina física, foi acessada a opção `Connect to instance`, no qual era possível realizar de três formas. A primeira através do *Session Manager* que é um recurso do serviço **AWS System Manager (SSM)**. Atráves do `EC2 serial console` e também do `RDP client`. O **Remote Desktop Protocol client (RDP client)**, é um software ou aplicativo que permite que um usuário se conecte a um computador remoto usando o protocolo RDP. O Remote Desktop Protocol (RDP) é um protocolo desenvolvido pela **Microsoft** que permite a conexão remota entre um computador cliente e um servidor, possibilitando o controle da interface gráfica do computador remoto.

A opção utilizada foi a `RDP client`, pois a conexão foi executada com um cliente RDP. Nesta página já eram exibidas algumas informações necessárias para a conexão como o DNS público e o username da maquina, apresentados na imagem 02. Assim foi aberto o software **Remote Desktop Protocol Client (RDP Client)**, ou Conexão de Área de Trabalho Remota, na maquina física **Windows**. Na aba `General`, foi passado o nome do computador que era o IP ou DNS público da instância e o username, que no caso foi `Administrator`, conforme imagem 03. Com relação a senha foi preciso clicar em `Get password` lá no console da **AWS** e em seguida em `Browse` e indicar o arquivo par de chaves `.pem` utilizado nesta instância, que foi o `keyPairUniversal`. Ao confirmar, uma senha foi gerada e utilizada no **RDP Client**, conforme apresentado na imagem 04. Também foi necessário criar uma regra no security group da instância, liberando acesso a porta `3389`, que é a porta onde o RDP trabalha. Ao executar a conexão, foi questionado sobre a confiabilidade desta maquina que estava sendo acessada, mas como era uma maquina conhecida foi confirmada a confiabilidade. Após isso, a janela com acesso remoto com interface gráfica foi aberta e essa execução é evidenciada na imagem 05. O processo poderia ser simplificado ao escolher a opção `Download remote desktop file` na aba `RDP client` no console da **AWS**. Isto já baixa uma configuração pronta que ao executar preencher os campos do software **Remote Desktop Protocol Client (RDP Client)** e então é só clicar em conectar.

<div align="Center"><figure>
    <img src="../0-aux/md4-img2.png" alt="img02"><br>
    <figcaption>Imagem 02.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="../0-aux/md4-img3.png" alt="img03"><br>
    <figcaption>Imagem 03.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="../0-aux/md4-img4.png" alt="img04"><br>
    <figcaption>Imagem 04.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="../0-aux/md4-img5.png" alt="img05"><br>
    <figcaption>Imagem 05.</figcaption>
</figure></div><br>

Com acesso remoto graficamente realizado na instância, agora foi o momento de executar o acesso remoto pelo **PowerShell** da maquina física. Na instância foi acessado o **PowerShell** e executado o comando `Enable-PSRemoting` para habilitar o acesso remoto. Várias configurações foram feitas após confirmar todas elas com o `A`. Primeiro, ele iniciava ou reiniciava o **WinRM**, depois definia esse serviço como automático, em seguida criava um listener para aceitar requisições de qualquer endereço IP, e por fim criava uma regra de entrada no firewall permitindo acesso do tráfego ao **WS-Management** apenas pelo protocolo `HTTP`. O **Web Services Management (WS-Management)** é um protocolo de padrão aberto utilizado para gerenciar sistemas e dispositivos remotamente por meio de serviços web. Ele oferece uma abordagem padronizada para a administração e monitoramento de recursos em ambientes distribuídos. Também foi questionado sobre uma operação do `Set-PSSessionConfiguration` que foi confirmada com `A`. Com o comando `Get-Item WSMan:\localhost\Service\AllowRemoteAccess` foi possível verificar o `PSRemoting` habilitado.

Mesmo assim foi necessário verificar se existia uma regra no firewall do **Windows Server** da instância com o comando `Get-NetFirewallRule -Name WinRM`. Caso não houvesse, era preciso criá-la com o comando `New-NetFirewallRule -Name winrm-http -DisplayName 'Allow WinRM HTTP' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 5985`. Este comando definia a regra como habilitada, com um nome, uma descrição, uma direção, o protocolo como `TCP`, a ação como `permitir` e a porta local como `5985`, porta padrão do **WinRM** no protocolo `HTTP`. A porta padrão do **WinRM** para o protocolo `HTTPS` era a porta `5986`. A imagem 06 evidencia a criação da regra no firewall do **Windows Server** e o `PSRemoting` habilitado para acesso remoto, ambos na instância do EC2. 

<div align="Center"><figure>
    <img src="../0-aux/md4-img6.png" alt="img06"><br>
    <figcaption>Imagem 06.</figcaption>
</figure></div><br>

Na maquina local **Windows** foi necessário adicionar a instância ao arquivos de hosts confiáveis e isso foi feito com o comando `Set-Item WSMan:\localhost\Client\TrustedHosts -Value "3.91.32.47"`, passando como valor o IP ou DNS público da instância, em outros casos poderia ser até o nome da maquina, mas como estava sendo realizada com instâncias EC2 tinha que ser o IP ou DNS público. Ao executar esse comando, o arquivo era sempre substituído, para que por exemplo fosse adicionado, mantendo o que já existia no arquivo, tinha que ser adicionado ao comando o parâmetro ` -Concatenate`. Com o comando `Get-Item WSMan:\localhost\Client\TrustedHosts` os hosts confiáveis definidos no arquivo eram listados. Em seguida, foi realizado um teste de conexão para verificar se a maquina local conseguia se comunicar com a instância e isso foi feito com o comando `Test-NetConnection -ComputerName 3.91.32.47 -Port 5985` passando o IP público da instância e a porta `5985`, porta padrão do **WinRM** para o protocolo `HTTP`. Essa porta já estava liberada tanto no grupo de segurança da instância como no firewall do **Windows Server** dessa mesma instância. A imagem 07 lista as maquinas no arquivo de hosts confiáveis e mostra a conexão bem sucedida da maquina física com a instância.

<div align="Center"><figure>
    <img src="../0-aux/md4-img7.png" alt="img07"><br>
    <figcaption>Imagem 07.</figcaption>
</figure></div><br>

Agora foi só executar o comando `Invoke-Command -ComputerName 3.91.32.47 -Credential administrator -ScriptBlock { Get-HotFix -Id KB5012170 }` para executar o comando `Get-HotFix -Id KB5012170` dentro da instância pelo **PowerShell** da maquina física. Como eram duas maquinas de domínios diferentes, inclusive nenhuma delas tinham um domínio, foi necessário passar o parâmetro `-Credential administrator` informando o nome de domínio concatenado com `\` e o nome de usuário. Como neste caso, a instância não possuía um domínio, foi passado direto o nome de usuário. Em ambos os casos, uma senha era solicitada que era a mesma senha gerada lá no console da **AWS** pelo navegador da maquina física fornecendo o arquivo par de chaves `.pem`. Esta senha tinha sido utilizada para realizar o acesso remoto gráfico. Se as maquinas fossem do mesmo domínio, não era necessário o parâmetro `-Credential`. A imagem 08 exibe a execução do comando dentro da instância pelo **PowerShell** da maquina física.

<div align="Center"><figure>
    <img src="../0-aux/md4-img8.png" alt="img08"><br>
    <figcaption>Imagem 08.</figcaption>
</figure></div><br>

Com o comando `Enter-PSSession -ComputerName 3.91.32.47 -Credential administrator` ao invés de executar um comando na instância, foi iniciada uma sessão nela pelo **PowerShell** da maquina física. O parâmetro `-Credential` funciona da mesma forma do comando anterior, se fossem maquinas do mesmo domínio não era necessário usar. Também foi necessário informar a senha para credenciamento deste usuário que foi a mesma senha gerada no console da **AWS** em `RDP Client`. Na imagem 09 é exibido essa conexão da maquina física com a instância do EC2.

<div align="Center"><figure>
    <img src="../0-aux/md4-img9.png" alt="img09"><br>
    <figcaption>Imagem 09.</figcaption>
</figure></div><br>

Para não ter que informar a senha toda hora ao entrar em uma sessão, pode ser criada uma sessão já com uma configuração determinada através do comando `New-PSSession -ComputerName 3.91.32.47 -Credential administrator`. Então com o comando `Get-PSSession` todas as sessões já configuradas são listadas e o acesso remoto pode ser executado com o comando `Enter-PSSession -Id` passando o Id da sessão nessa lista. O parâmetro `-Credential` funciona da mesma maneira que os comandos anteriores, ele é sempre utilizado quando as maquinas foram de domínios diferentes ou não tiverem domínios para autenticar o usuário que está realizando o acesso remoto. Para excluir da lista, uma sessão configurada foi só utilizar o comando `Remove-PSSession -Id` com o Id dessa sessão na lista. Já para sair de uma sessão, o comando era `Exit-PSSession`. Na imagem 10 é possível visualizar essa execução.

<div align="Center"><figure>
    <img src="../0-aux/md4-img10.png" alt="img10"><br>
    <figcaption>Imagem 10.</figcaption>
</figure></div><br>

Também foi possível criar uma sessão no **Windows PowerShell ISE**, clicando na opção `Nova Guia do PowerShell Remota`. Uma caixa era aberta solicitando o computador e o nome de usuário que eram o IP ou DNS público da instância e `administrator`. Ao confirmar, a mesma senha gerada no console da **AWS** pelo arquivo par de chaves `.pem` era solicitada. Após isso, o terminal do ISE era aberto na sessão remota. A imagem 11 ilustra essa etapa.

<div align="Center"><figure>
    <img src="../0-aux/md4-img11.png" alt="img11"><br>
    <figcaption>Imagem 11.</figcaption>
</figure></div><br>

Também tem o software **Server Manager**, exclusivo do **Windows Server**, que possui interface gráfica e serve para gerenciar servidores, possibilitando realizar acessos remotos via **PowerShell**.

<a name="item04.02"><h4>4.2 Sessão persistente usando PSSession, Invoke-Command e Jobs</h4></a>[Back to summary](#item04)

Nesta aula foi construído um arquivo de script de nome [persistent_session.ps1](./resources/persistent_session.ps1), dentro da sub-pasta `resources`. Neste arquivo foi criada uma sessão com a instância para funcionar como sessão persistente. As sessões persistentes são importantes na execução de scripts de longa duração, é possível manter as sessões em execução mesmo com falhas na rede. Em seguida, foi invocado um comando para que a sessão executasse. Esse comando foi definido como um job de nome `LongoTrabalho`. Ainda no script, alguns comandos foram executados para realizar ações na instância do EC2. O primeiro deles foi o `Get-PSSession` para listar as sessões existentes. Em seguida foram executados os comandos `Get-Job -Name LongoTrabalho` para exibir o job que estava em execução na instância e `Get-Job -Name LongoTrabalho | Receive-Job -Keep` para receber os resultados desse job. Após isso, a sessão foi desconectada com o comando `Disconnect-PSSession $s`, onde `$s` era definido no início do script como a sessão criada (`$s = New-PSSession -ComputerName 3.91.32.47 -Credential administrator`). Depois foi executado o comando `Receive-PSSession -Session $s` para visualizar que mesmo desconectado da sessão, o job continuava trabalhando. O job foi interrompido com o comando `Get-Job -Name LongoTrabalho | Stop-Job`, removido com o comando `Remove-Job -Name LongoTrabalho` e a sessão removida com o comando `Remove-PSSession $s`. Esse arquivo foi executado no **Visual Studio Code (VS Code)** e a execução dele é mostrada nas imagens 12 e 13 abaixo. Não consegui compreender porque não conseguia visualizar o job em execução nos outros acessos remotos pelo **PowerShell** da maquina física e pelo **RDP Client**.

<div align="Center"><figure>
    <img src="../0-aux/md4-img12.png" alt="img12"><br>
    <figcaption>Imagem 12.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="../0-aux/md4-img13.png" alt="img13"><br>
    <figcaption>Imagem 13.</figcaption>
</figure></div><br>

<a name="item04.03"><h4>4.3 PowerShell Remoto usando maquina fora do Domínio</h4></a>[Back to summary](#item04)

Na aula 1 deste módulo foi explicado como realizar o acesso remoto em maquinas de domínio diferente. Mas para recapitular, foi preciso habilitar o `PSRemoting` nas duas maquinas, criar as regras no firewall e no grupo de segurança liberando a porta `5985`, adicionar a maquina de destino ao arquivo de hosts confiáveis na maquina local, testar a conexão entre as maquinas e se tiver tudo certo, executar o comando o `Invoke-Command` para executar um comando ou criar uma sessão com o `PSSession`.

A grande diferença em relação ao acesso remoto de maquinas de mesmo domínio para maquinas de domínios diferentes é a autenticação. Quando elas são do mesmo domínio não é necessário informar credenciais, pois são maquinas confiáveis e que fazem parte um grupo de maquinas. Já quando são de domínios diferentes ou não possuem domínio, são maquinas desconhecidas e é necessário autenticar através de credenciais. A autenticação é feita adicionando o parâmetro `-Credential domain/user` passando o nome de domínio e usuário da maquina que deseja-se acessar remotamente. Caso essa maquina não possua domínio, pode ser informado o nome de usuário direto. Neste dois casos, será solicitado uma senha referente a esse usuário.

A obtenção da senha é realizada no **AWS Console Management**, no serviço **Amazon Elastic Compute Cloud (EC2)**, selecionando a instância que deseja-se conectar e clicando na opção `Connect to instance` ou `Connect`. Uma nova página será aberta com três abas cada uma com uma forma de conexão. A utilizada neste caso foi a opção `RDP client` que serve tanto para acesso remoto via software **Remote Desktop Protocol client (RDP client)** como também para acesso via **PowerShell**. Nesta aba, foi clicado na opção `Get password` para ir para uma outra página. Na opção `Browse` foi aberto uma janela do **Windows** para selecionar um arquivo par de chaves `.pem`, a chave escolhida foi a padrão utilizada em meus projetos (`keyPairUniversal`). Após confirmar a **AWS** converte essa chave em uma senha que é utilizada para autenticar o usuário.

<a name="item04.04"><h4>4.4 Salvando credenciais para scripts de acesso remoto</h4></a>[Back to summary](#item04)

O foco desta aula foi mostrar a utilização do comando `Get-Credential administrator` que uma vez executado, pôde ser comentado. Na primeira execução ele solicitava a senha que era armazenada em uma variável e utilizada no parâmetro `-Credential`. Assim, evitava ter que informar toda hora a senha. Para evidenciar a execução foi construído o arquivo [credential.ps1](./resources/credential.ps1) que criava uma sessão com a variável de credencial, executava um comando e após isso removia a sessão. Na imagem 14 é mostrado o output desse arquivo. Observe que a senha não foi solicitada, pois já tinha sido informada na primeira vez, por isso que o comando estava até comentado, para que não fosse solicitada a senha novamente. Note também que o parâmetro `-ComputerName` trouxe o Ip público da instância a partir do arquivo [servers.txt](./resources/servers.txt) que tinha apenas um Ip, mas se houvesse várias maquinas, várias conexões a maquinas diferentes seriam realizadas e o mesmo comando seria executado, uma ótima forma de automatizar o processo.

<div align="Center"><figure>
    <img src="../0-aux/md4-img14.png" alt="img14"><br>
    <figcaption>Imagem 14.</figcaption>
</figure></div><br>

<a name="item04.05"><h4>4.5 Acessando o PowerShell através da WEB com o PSWA</h4></a>[Back to summary](#item04)

Nesta aula foi realizado alguns procedimentos para conseguir acessar remotamente com o **PowerShell Web Access** a maquina instanciada na cloud da **AWS**. Para isso, dentro do acesso remoto gráfico realizado da maquina física na instância, foi executado alguns comandos no **PowerShell**. O primeiro deles foi o `Install-WindowsFeature -Name WindowsPowerShellWebAccess -IncludeManagementTools` que instalou a feature `WindowsPowerShellWebAccess` junto com as ferramentas de gerenciamento associadas a essa funcionalidade. Para confirmar que foi instalado, foi executado o comando `Get-WindowsFeature -Name WindowsPowerShellWebAccess`. Em seguida, foi utilizado o comando `Install-PswaWebApplication -WebApplicationName PSWA -UseTestCertificate` que instalou uma aplicação web para o **Windows PowerShell Web Access (PSWA)**, indicando um nome para essa aplicação e um certificado de teste que deveria ser utilizado. Após isso, ainda na instância, foi aberto o software **Internet Information Services (IIS) Manager** e verificado a aplicação web desenvolvida, conforme visualizado na imagem 15.

<div align="Center"><figure>
    <img src="../0-aux/md4-img15.png" alt="img15"><br>
    <figcaption>Imagem 15.</figcaption>
</figure></div><br>

Com o comando `Add-PswaAuthorizationRule -ComputerGroupName * -ConfigurationName * -UserGroupName *` uma regra era elaborada para permitir que qualquer pessoa acessasse o **PowerShell** com o **PWSA**. Essa regra foi exibida com o comando `Get-PswaAuthorizationRule` que listava todas as regras referentes ao **PWSA**. A imagem 16 evidencia a criação da aplicação web e da regra de acesso. Também foi preciso criar uma regra de entrada no grupo de segurança vinculado a essa instância do EC2, permitindo acesso na porta `443` que é referente ao protocolo `HTTPS`, utilizado pelo **PWSA**. Após isso, foi acessado no navegador da maquina física a seguinte URL `https://3.91.32.47/PSWA`. Como não deu certo no meu caso, foi realizado o acesso pelo `HTTP`, construindo uma outra regra liberando a porta `80` no security group da instância.

<div align="Center"><figure>
    <img src="../0-aux/md4-img16.png" alt="img16"><br>
    <figcaption>Imagem 16.</figcaption>
</figure></div><br>

<a name="item04.06"><h4>4.6 Renomear Computador</h4></a>[Back to summary](#item04)




<a name="item04.07"><h4>4.7 Alterar endereço IP e adicionar computador ao domínio do Active Directory</h4></a>[Back to summary](#item04)






<a name="item04.08"><h4>4.8 Gerenciando o Active Directory</h4></a>[Back to summary](#item04)