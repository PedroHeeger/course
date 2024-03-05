# Aprenda PowerShell do zero   <img src="./0-aux/logo_course.png" alt="curso_119" width="auto" height="45">

### Repository: [course](../../../)
### Platform: <a href="../../">udemy   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/udemy.png" alt="udemy" width="auto" height="25"></a>
### Software/Subject: <a href="../">powershell   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows_powershell.png" alt="windows_powershell" width="auto" height="25"></a>
### Course: <a href="./">curso_119 (Aprenda PowerShell do zero)   <img src="./0-aux/logo_course.png" alt="curso_119" width="auto" height="25"></a>

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

---

<a name="item0"><h3>Course Strcuture:</h3></a>
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
Este projeto foi desenvolvido em quatro aulas.


# aula 2.1

 $PSVersionTable.PSVersion
Get-Host
(Get-Host).Version

# aula 2.2

cd, dir, ls
cls, clear

Get-Command
Get-Command -CommandType Cmdlet
Get-Command -CommandType Alias
Get-Command -CommandType Function

Get-ChildItem

```
# Apenas um teste inicial
clear
Write-Host "Hello World"
Get-ChildItem c:\
```


# aula 2.3


