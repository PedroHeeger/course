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
  3.8 <a href="#item03.08">Expressões Regulares (REGEX)</a><br>
  3.9 <a href="#item03.09">Expressões Regulares (REGEX)</a><br>
  3.10 <a href="#item03.10">Expressões Regulares (REGEX)</a><br>
  3.11 <a href="#item03.11">Expressões Regulares (REGEX)</a><br>
  3.12 <a href="#item03.12">Expressões Regulares (REGEX)</a><br>
  3.13 <a href="#item03.13">Expressões Regulares (REGEX)</a><br>
  3.14 <a href="#item03.14">Expressões Regulares (REGEX)</a><br>

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

Este módulo foi iniciado com a explição de como escrever um arquivo de script no **PowerShell ISE**. O arquivo de nome [new_script.ps1](./new_script.ps1) foi elaborado pelo **Notepad** com o comando `notepad new_script.ps1` e executado no **PowerShell**, ele apenas exibiu uma mensagem determinada. Após isso, esse arquivo foi salvo no diretório [scripts](./scripts/) deste módulo.

<a name="item03.02"><h4>3.2 Variáveis</h4></a>[Back to summary](#item03)

O assunto abordado nessa aula foi variáveis que, em programação, é um objeto situado na memória que representa um valor ou expressão. Dentro da pasta `scripts` foi construído o arquivo [02-variable.ps1](./script/02-variable.ps1) com alguns exemplos de como utilizar variáveis e alguns métodos que elas podem ter.

<a name="item03.03"><h4>3.3 Arrays</h4></a>[Back to summary](#item03)

Nesta aula foi criado um outro arquivo de nome [03-arrays.ps1](./scripts/03-arrays.ps1) onde foi desenvolvido um array com dois elementos, sendo cada um deles um DNS da **Google**. Em seguida foi realizado a contagem de quantos elementos tinha no array e após a mensagem impressa foi realizado um teste de conexão em cada um dos dois DNS, conforme mostrado na imagem 02 abaixo.

<div align="Center"><figure>
    <img src="../0-aux/md3-img2.png" alt="img02"><br>
    <figcaption>Imagem 02.</figcaption>
</figure></div><br>

<a name="item03.04"><h4>3.4 Cmdlets, funções e Alias</h4></a>[Back to summary](#item03)



<a name="item03.05"><h4>3.5 Operadores Condicionais e Lógicos</h4></a>[Back to summary](#item03)



<a name="item03.06"><h4>3.6 Select-String</h4></a>[Back to summary](#item03)



<a name="item03.07"><h4>3.7 Expressões Regulares (REGEX)</h4></a>[Back to summary](#item03)


