# Aprenda PowerShell do zero - Módulo 2   <img src="./0-aux/logo_course.png" alt="curso_119" width="auto" height="45">

### Repository: [course](../../../)
### Platform: <a href="../../">udemy   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/udemy.png" alt="udemy" width="auto" height="25"></a>
### Software/Subject: <a href="../">powershell   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows_powershell.png" alt="windows_powershell" width="auto" height="25"></a>
### Course: <a href="./">curso_119 (Aprenda PowerShell do zero)   <img src="./0-aux/logo_course.png" alt="curso_119" width="auto" height="25"></a>
### Module: 2. Seção 2: Essencial do PowerShell

#### <a href="">Certificate</a>

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
- Versioning: 
  - Git   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="git" width="auto" height="25">
- Repository:
  - GitHub   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="github" width="auto" height="25">
- Command Line Interpreter (CLI):
  - AWS Command Line Interface (CLI)   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/cloud/aws_cli.svg" alt="aws_cli" width="auto" height="25">
  - Windows PowerShell   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows_power_shell.png" alt="windows_power_shell" width="auto" height="25">
  - Windows PowerShell ISE   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows_power_shell.png" alt="windows_power_shell" width="auto" height="25">

---

### Course Module 2 Strcuture:
2. <a href="#item02">Seção 2: Essencial do PowerShell</a><br>
  2.1 <a href="#item02.01">Iniciando o Powershell</a><br>
  2.2 <a href="#item02.02">Command-Lets</a><br>
  2.3 <a href="#item02.03">Me dá um help please?</a><br>
  2.4 <a href="#item02.04">Cmdlets, funções e Alias</a><br>
  2.5 <a href="#item02.05">Controlando a exibição (saída) de informações</a><br>
  2.6 <a href="#item02.06">Filtrando Resultados com Where-Object</a><br>
  2.7 <a href="#item02.07">Módulos do PowerShell</a><br>
  2.8 <a href="#item02.08">Atualize seu Bookmark</a><br>

---

### Objective:
O objetivo desse projeto prático foi introduzir as principais ferramentas e fórmulas do software **Microsoft Power BI**, desenvolvendo três reports, com as seguintes temáticas: **vendas**, **atendimentos**, **vendas** (Detalhada) e **análise de perfil**.

### Structure:
A estrutura do curso é formada por:
- Este arquivo de README.md.
- A pasta [resources](./resources/) contendo os arquivos de scripts em **PowerShell** para interação com a **AWS**.
- A pasta `0-aux`, pasta auxiliar com imagens utilizadas na construção desse arquivo de README.

<div align="Center"><figure>
    <img src="./0-aux/img01.png" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:
O desenvolvimento deste módulo do Curso foi dividido em oito aulas. Abaixo é explicado o que foi desenvolvido em cada uma dessas aulas.

<a name="item02.01"><h4>2.1 Iniciando o Powershell</h4></a>[Back to summary](#item02)

Na primeira aula deste módulo foi explicado sobre o software **PowerShell** ou **Windows PowerShell** que é um shell de linha de comando. Um shell é uma interface que vai permitir que o usuário possa interagir com o sistema operacional. Existem duas possibilidades, tem o Shell interativo que é chamado de *Command Line Interface (CLI)*, ou Interface de Linha de Comando, e também tem uma parte na interface gráfica através do *Integrated Scripting Environment (ISE*) que é um ambiente de programação, onde é possível criar os scripts, salvá-los e carregá-los posteriormente.

O **PowerShell** utiliza uma linguagem de script expressiva, ou seja, expressões regulares e para isso pode ser utilizado: o *.NET Framework*, o *Windows Management Instrumentation (MSI*), o *Component Object Model (COM)*, o *Registro do Windows* e muito mais.

Durante a parte prática desta aula foram executados os comando `$PSVersionTable.PSVersion` e `(Get-Host).Version` que são duas formas de verificar a versão do **PowerShell** que está sendo utilizada. A diferença é que a segunda forma consegue verificar a versão do **PowerShell** no ambiente corrente, ou seja, caso seja realizado um acesso remoto a uma maquina, este comando vai informar a versão do **PowerShell** da maquina remota. Um outro comando utilizado foi o `Get-Host` que exibia informações do host, ou seja, da maquina hospedeira, a maquina que estava sendo utilizada.

<a name="item02.02"><h4>2.2 Command-Lets</h4></a>[Back to summary](#item02)

O **PowerShell** também executa os comandos nativos como se fosse o prompt de comando. Esses são comandos padrões que são utilizados desda época do MS-DOS (`dir`, `clear`). O PowerShell executa também alguns comandos básicos do **Linux**, como: `cd`, `ls`, `cls`. Porém o **PowerShell** também utilizado os *Commands-Lets (cmdlets)*, que são comandos especiais que utilizam uma convenção muito simples onde se baseiam num padrão de verbo-substantivo. O comando `Get-Command` é um exemplo de cmdlet e ele é utilizado para listar todos comandos de todos os tipos. Existem três tipos, o *Cmdlet*, o *Alias* que é um apelido para um comando, e o *Function* que é uma função. Os comandos de cada tipo podem ser listados com adição de um parâmetro de filtro, por exemplo: `Get-Command -CommandType Cmdlet`, `Get-Command -CommandType Alias` e `Get-Command -CommandType Function`.

Um outro cmdlet é o `Get-ChildItem` que lista todos os arquivos no diretório corrente, caso não seja especificado um caminho de um diretório ou arquivo. No **Windows PowerShell ISE**, aberto como administrador, foi criado um arquivo de nome [hello_world.ps1](./scripts/hello_world.ps1) armazenado dentro do diretório [scripts](./scripts/) deste módulo. O conteúdo desse arquivo exibido abaixo, limpa o buffer com o comando `clear`, em seguida exibe a mensagem `Hello World` com o comando `Write-Host "Hello World"` e então lista todos os arquivos e pastas do diretório raíz (`c:\`) através do comando `Get-ChildItem c:\`.

```ps1
# Apenas um teste inicial
clear
Write-Host "Hello World"
Get-ChildItem c:\
```

Um ponto importante foi que para executar o arquivo de script elaborado, além de abrir o **PowerShell ISE** como administrador, foi necessário verificar as políticas com o comando `Get-ExecutionPolicy` que estava `RemoteSigned` e modificá-las com o comando `Set-ExecutionPolicy Unrestricted` para irrestritas. Assim foi concedido permissão para executar o arquivo.

<a name="item02.03"><h4>2.3 Me dá um help please?</h4></a>[Back to summary](#item02)

O Help do **PowerShell** basicamente é um livro. Ele é muito completo e atualizável. Para utilizá-lo foi necessário atualizá-lo primeiro com o comando `Update-Help`. Em seguida, com o comando `Get-Help Write-Host` foi exibida a ajuda para o comando `Write-Host`. Com adição do parâmetro `-Example` ao comando foi mostrado exemplos de como utilizar o comando `Write-Host`. Já com o parâmetro `-Online`, a ajuda foi exibida no site da **Microsoft** através do navegador. Utilizando os parâmetros `-ForegroundColor` e `-BackgroundColor` foi possível determinar uma cor para a fonte e uma cor para o fundo durante a exibição da ajuda. Uma outra possibilidade foi a utilização do parâmetro `-ShowWindow` que exibiu a ajuda em uma outra janela na própria maquina.

<a name="item02.04"><h4>2.4 Cmdlets, funções e Alias</h4></a>[Back to summary](#item02)

Cmdlets é uma pequena unidade de funcionalidade relacionada a um conjunto de recursos. Eles são escritos em uma linguagem, o C Sharp (C#). As Functions podem fazer o mesmo que cmdlets, executar uma fucionalidade. Elas são um conjunto de comandos que utilizam a própria linguagem do PowerShell. Já as Alias são como apelidos para os cmdlets e funções. Ao utilizar o `| more` ao comando `Get-Command -CommandType cmdlet | more` foi definido que a exibição fosse realizada pausadamente.

Com o comando `Get-Command -CommandType cmdlet *eventlog*` foi listado apenas as informações que contivessem a palavra `eventlog`. O comando `Get-ChildItem Function:\Clear-Host` foi utilizado para listar a função `Clear-Host` que é uma função que limpa o buffer. Observe que o `Get-ChildItem` não lista só arquivos e pastas, pode ser utilizado para listar comandos. Acrescentando o parâmetro `| type` foi mostrado o conteúdo da função. Por fim, também foi possível criar alias com o comando `Set-Alias Limpar Clear-Host` e exibir os processos com o comando `Get-Process`.

<a name="item02.05"><h4>2.5 Controlando a exibição (saída) de informações</h4></a>[Back to summary](#item02)

Com relação a exibição das saídas de informações, existem as seguintes estruturas: `|` (Pipe ou Pipeline), `>`, `>>`, `2>`, `2>>` e `2>&1`. A primeira passa a saída para o comando subsequente para o processamento. A segunda e a terceira redirecionam a saída padrão, representada por `1`, para um arquivo. Também pode ser ocultado o número `1`. A quarta e quinta redirecionam a saída de erro, representada por `2` para um arquivo. Tanto na saída padrão quanto na saída de erro, o uso de um sinal de `>` indica que o arquivo deve substituir o conteúdo caso esse arquivo já exista. Já o sinal duplicado, `>>`, indica que o arquivo deve adicionar o novo conteúdo ao já existente. Por fim, a sexta estrutura determina que deve ser redirecionada a saída de erro para a saída padrão.


<a name="item02.06"><h4>2.6 Filtrando Resultados com Where-Object</h4></a>[Back to summary](#item02)





<a name="item02.07"><h4>2.7 Módulos do PowerShell</h4></a>[Back to summary](#item02)




<a name="item02.08"><h4>2.8 Atualize seu Bookmark</h4></a>[Back to summary](#item02)


