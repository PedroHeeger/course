# Aprenda PowerShell do zero - Módulo 3   <img src="./0-aux/logo_course.png" alt="curso_119" width="auto" height="45">

### Repository: [course](../../../)
### Platform: <a href="../../">udemy   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/udemy.png" alt="udemy" width="auto" height="25"></a>
### Software/Subject: <a href="../">powershell   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows_powershell.png" alt="windows_powershell" width="auto" height="25"></a>
### Course: <a href="./">curso_119 (Aprenda PowerShell do zero)   <img src="./0-aux/logo_course.png" alt="curso_119" width="auto" height="25"></a>
### Module: 3. Seção 3: Scripts no Powershell

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

---

### Course Module 3 Strcuture:
3. <a href="#item03">Seção 3: Scripts no Powershell</a><br>
  3.1 <a href="#item03.01">Estrutura de um script</a><br>
  3.2 <a href="#item03.02">Variáveis</a><br>
  3.3 <a href="#item03.03">Arrays</a><br>
  3.4 <a href="#item03.04">Hash Table</a><br>
  3.5 <a href="#item03.05">Operadores Condicionais e Lógicos</a><br>
  3.6 <a href="#item03.06">Select-String</a><br>
  3.7 <a href="#item03.07">Expressões Regulares (REGEX)</a><br>
  3.8 <a href="#item03.08">IF...ELSE</a><br>
  3.9 <a href="#item03.09">Looping com For, ForEach e While</a><br>
  3.10 <a href="#item03.10">Criando Funções</a><br>
  3.11 <a href="#item03.11">Workflows</a><br>
  3.12 <a href="#item03.12">Job e Scheduled Jobs</a><br>
  3.13 <a href="#item03.13">New-Object - Usando o Wscript.Shell</a><br>
  3.14 <a href="#item03.14">GitHub - Repositório para scripts</a><br>

---

### Objective:
O objetivo desse primeiro módulo do curso foi apresentar o essencial do **Windows PowerShell**, explicando alguns conceitos básicos e mostrando alguns comandos. Também foi apresentado o **Windows PowerShell ISE** que é uma Interface Development Environment (IDE) para construção de scripts em **PowerShell**.

### Structure:
A estrutura deste módulo é formada por:
- Este arquivo de README.md.
- O arquivo [hello_world.ps1](./hello_world.ps1)

<div align="Center"><figure>
    <img src="../0-aux/md2-img1.png" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:
O desenvolvimento deste módulo do curso foi dividido em oito aulas. Abaixo é explicado o que foi desenvolvido em cada uma dessas aulas.

<a name="item03.01"><h4>3.1 Estrutura de um script</h4></a>[Back to summary](#item03)

Este módulo foi iniciado com a explição de como escrever um arquivo de script no **PowerShell ISE**. O arquivo de nome [new_script.ps1](./new_script.ps1) foi elaborado pelo **Notepad** com o comando `notepad new_script.ps1` e armazenado no diretório [scripts](./scripts/) deste módulo. Ele foi executado tanto no **PowerShell** como no **PowerShell ISE** e apenas exibiu uma mensagem determinada, conforme apresentado na imagem 02.

<div align="Center"><figure>
    <img src="../0-aux/md3-img2.png" alt="img02"><br>
    <figcaption>Imagem 02.</figcaption>
</figure></div><br>

<a name="item03.02"><h4>3.2 Variáveis</h4></a>[Back to summary](#item03)

O assunto abordado nessa aula foi variáveis que, em programação, é um objeto situado na memória que representa um valor ou expressão. Dentro da pasta `scripts` foi construído o arquivo [02-variable.ps1](./script/02-variable.ps1) com alguns exemplos de como utilizar variáveis e alguns métodos que elas podem ter. Esse arquivo foi executado no **Visual Studio Code (VS Code)**, conforme mostrado na imagem 02 abaixo.

<div align="Center"><figure>
    <img src="../0-aux/md3-img3.png" alt="img03"><br>
    <figcaption>Imagem 03.</figcaption>
</figure></div><br>

<a name="item03.03"><h4>3.3 Arrays</h4></a>[Back to summary](#item03)

Nesta aula foi criado um outro arquivo no **VS Code**, de nome [03-arrays.ps1](./scripts/03-arrays.ps1), onde foi desenvolvido um array com dois elementos, sendo cada um deles um DNS da **Google**. Em seguida foi realizado a contagem de quantos elementos tinha no array e após a mensagem impressa foi realizado um teste de conexão em cada um dos dois DNS, conforme ilustrado na imagem 04 abaixo.

<div align="Center"><figure>
    <img src="../0-aux/md3-img4.png" alt="img04"><br>
    <figcaption>Imagem 04.</figcaption>
</figure></div><br>

<a name="item03.04"><h4>3.4 Hash Table</h4></a>[Back to summary](#item03)

O Hash Table também é uma matriz assim como os Arrays, porém essa matriz é um pouco diferente, ela permite armazenar os dados aos pares. O arquivo [04-hash_table.ps1](./scripts/04-hash_table.ps1) foi elaborado para criação de Hash Tables, sendo no segundo exemplo utilizando o comando `[ordered]` na frente, para ordenar os elementos do Hash Table. No 03 e 04 exemplo foi mostrado como adicionar e remover elementos ao Hash Table. No exemplo 05 foi exibido como contar quantos elementos tinha no Hash Table e os valores que esses elementos possuíam. Enquanto no exemplo 06 foi mostrado como acessar um elemento do Hash Table, no qual nesse caso foi acessado um elemento para testar a conexão com o comando `Test-Connection`. A imagem 05 abaixo evidencia a execução desse arquivo. Já a imagem 06 mostra o último exemplo.

<div align="Center"><figure>
    <img src="../0-aux/md3-img5.png" alt="img05"><br>
    <figcaption>Imagem 05.</figcaption>
</figure></div><br>

<div align="Center"><figure>
    <img src="../0-aux/md3-img6.png" alt="img06"><br>
    <figcaption>Imagem 06.</figcaption>
</figure></div><br>


<a name="item03.05"><h4>3.5 Operadores Condicionais e Lógicos</h4></a>[Back to summary](#item03)

Nesta aula foi apresentado todos os operadores, não só os condicionais. O operador de atribuição é o `=` que serve para atribuir a uma variável um valor. Este pode ser acrescido de um operador matemático aritmético para realizar uma atribuição com uma operação aritmética, os operadores combinados são: `+=` (atribuição com adição), `-+` (atribuição com subtração), `*=` (atribuição com multiplicação), `/=` (atribuição com divisão) e `%=` (atribuição com módulo). Os operadores matemáticos aritméticos são os: `+` (adição), `-` (subtração ou negação no sentido de tornar o número negativo), `*` (multiplicação), `/` (divisão) e `%` (módulo que é o resto da divisão). 

Com relação aos operadores condicionais existem dois grupos, os operadores lógicos ou Booleanos que são: `AND` (conjunção), `OR` (disjunção não exclusiva), `NOT` (negação) e `XOR` (disjunção exclusiva). Já o outro grupo são os operadores relacionais ou de comparação, sendo os principais: `-lt` (menor que), `-le` (menor ou igual), `-gt` (maior que), `-ge` (maior ou igual), `-eq` (igual) e `ne` (não igual). Além desses, é possível considerar alguns outros como operadores relacionais já que eles realizam comparações, são eles: `like` (como), `-notlike` (não como), `-contains` (contém), `-notcontains` (não contém), `-match` (coincide) e `-notmatch` (não coincide). 

Também existe os operadores unários que são: `+` (transforma o valor em positivo), `-` (transforma o valor em negativo), `++` (incrementação), `--` (decrementação) e `!` (operador de negação lógico). No arquivo [05-operator.ps1](./scripts/05-operator.ps1) foram executados comandos exemplificando cada um dos operadores e o output desse arquivo é apresentado na imagem 07 abaixo.

<div align="Center"><figure>
    <img src="../0-aux/md3-img7.png" alt="img07"><br>
    <figcaption>Imagem 07.</figcaption>
</figure></div><br>

<a name="item03.06"><h4>3.6 Select-String</h4></a>[Back to summary](#item03)

Antes de explicar o comando `Select-String`, dentro do **PowerShell** foi executado o comando `Get-Content .\01-new_script.ps1` com um arquivo da pasta `script` para visualizar o conteúdo deste arquivo. Em seguida, este comando foi executado redirecionando a saída para o próximo comando que era o `Select-String` e conjunto de caractere que desejavasse procurar no arquivo, ficando da seguinte forma `Get-Content .\01-new_script.ps1 | Select-String Write`. Uma outra opção foi executar o comando `Get-ChildItem | Select-String Exemplo` que procurava a palavra `Exemplo` em todos os arquivo do diretório corrente, que no caso era o `script`. Também foi possível utilizar o comando `Select-String -Path 05-operator.ps1 -Pattern Operador` para localizar a palavra determinada no arquivo indicado. O parâmetro `-CaseSensitive` indicava que deveria ser diferenciado letras maiúsculas e minúsculas. O parâmetro `-Context` era possível especificar uma quantidade de linhas antes e depois da linha com a informação procurada. Já o parâmetro `-NotMatch` retornava tudo, exceto as linhas com a informação procurada. Na imagem 08 é exibido alguns dos comandos utilizados.

<div align="Center"><figure>
    <img src="../0-aux/md3-img8.png" alt="img08"><br>
    <figcaption>Imagem 08.</figcaption>
</figure></div><br>

<a name="item03.07"><h4>3.7 Expressões Regulares (REGEX)</h4></a>[Back to summary](#item03)

Expressões Regulares (Regex) é uma técnica ou linguagem para realizar correspondência de padrões em texto. No **PowerShell** elas estão relacionadas às expressões regulares do **.NET Framework**. Existem expressões regulares para inúmeras linguagens, muitas delas são similares, mas é capaz que existam diferenças entre uma ou outra. O site [regexlib](https://regexlib.com/Default.aspx) exibe todas expressões regulares.

Na pasta de `script` foi desenvolvido, pelo **VS Code**, o arquivo [07-regex.ps1](./scripts/07-regex.ps1) que a partir de uma entrada do usuário, verifica se o email informado atendia um padrão estabelecido com expressões regulares (Regex). O resultado é visualizado na imagem 09 abaixo.

<div align="Center"><figure>
    <img src="../0-aux/md3-img9.png" alt="img09"><br>
    <figcaption>Imagem 09.</figcaption>
</figure></div><br>

<a name="item03.08"><h4>3.8 IF...ELSE</h4></a>[Back to summary](#item03)

Nesta aula foi ensinado através do arquivo [08-if_else.ps1](./scripts/08-if_else.ps1) como estruturar condicionais no **PowerShell** com os comandos `If` e `Else`. No caso da utilização só com o `If` é uma estrutura condicional com uma única condição. Já com o uso do `Else` uma segunda condição é definida para quando a condição anterior não for atendida. Também foi possível criar estruturas condicionais com mais de 2 condições, no qual a última sempre será para quando nenhuma das outras atenderem. Neste caso, foi utilizado o comando `Elseif` para criação de condições intermediárias. Todos esses exemplos são mostrados na imagem 10 a seguir.

<div align="Center"><figure>
    <img src="../0-aux/md3-img10.png" alt="img10"><br>
    <figcaption>Imagem 10.</figcaption>
</figure></div><br>

<a name="item03.09"><h4>3.9 Looping com For, ForEach e While</h4></a>[Back to summary](#item03)

Na aula 9 deste módulo foi mostrado os três tipos de estrutura de repetição (`For`, `ForEach` e `While`) e como usar essas estruturas. Para isso, foi criado o arquivo [09-looping.ps1](./scripts/09-looping.ps1) com alguns exemplos e o output da execução desse arquivo é visualizado na imagem 11.

<div align="Center"><figure>
    <img src="../0-aux/md3-img11.png" alt="img11"><br>
    <figcaption>Imagem 11.</figcaption>
</figure></div><br>

<a name="item03.10"><h4>3.10 Criando Funções</h4></a>[Back to summary](#item03)

Funções são comandos em um script, que dura apenas durante a sessão em que estiver sendo executado. Na maioria das vezes, são longos comandos com tarefas repetitivas e utilização de parâmetros. Com o arquivo [10-functions](./scripts/10-function.ps1) foram construídas duas funções, uma de um comando executado anteriormente e outra com utilização de parâmetros. A imagem 12 exibe o output desse arquivo.

<div align="Center"><figure>
    <img src="../0-aux/md3-img12.png" alt="img12"><br>
    <figcaption>Imagem 12.</figcaption>
</figure></div><br>

<a name="item03.11"><h4>3.11 Workflows</h4></a>[Back to summary](#item03)

O Workflow é utilizado quando é necessário criar scripts de longa execução e que tenham que ser gerenciáveis. Usando um Workflow é possível: Interromper, Suspender, Reiniciar, Repetir e Execução paralela. Com o arquivo [11-workflow.ps1](./scripts/11-workflow.ps1) foi desenvolvido dois workflows, sendo o segundo com tipo de execução paralela. Esse arquivo foi executado pelo **Windows PowerShell ISE**, pois o **PowerShell** do **VS Code** era da versão `7.4.1` e a partir da versão `6`, essa funcionalidade foi removida. A imagem 13 mostra o arquivo de script sendo executado.

<div align="Center"><figure>
    <img src="../0-aux/md3-img13.png" alt="img13"><br>
    <figcaption>Imagem 13.</figcaption>
</figure></div><br>


<a name="item03.12"><h4>3.12 Job e Scheduled Jobs</h4></a>[Back to summary](#item03)

Jobs permitem a execução de comandos em background no computador local ou remoto. Já os Scheduled Jobs ou Trabalhos agendados são extremamente uteis quando existem tarefas que são executadas com maior frequência ou com recorrência e principalmente quando são atividades de longa duração. Para isso foi utilizado o arquivo [12-jobs.ps1](./scripts/12-jobs.ps1) onde foram desenvolvidos um job e um scheduled job. Na imagem 14 é exibido o primeiro job executado e algumas manipulações realizadas nele.

<div align="Center"><figure>
    <img src="../0-aux/md3-img14.png" alt="img14"><br>
    <figcaption>Imagem 14.</figcaption>
</figure></div><br>


<a name="item03.13"><h4>3.13 New-Object - Usando o Wscript.Shell</h4></a>[Back to summary](#item03)






<a name="item03.14"><h4>3.14 GitHub - Repositório para scripts</h4></a>[Back to summary](#item03)