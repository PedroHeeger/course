# MySQL   <img src="./0-aux/logo_course.png" alt="curso_122" width="auto" height="45">

### Repository: [course](../../../)
### Platform: <a href="../../">cev   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/curso_em_video.png" alt="cev" width="auto" height="25"></a>
### Software/Subject: <a href="../">mysql   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg" alt="mysql_server" width="auto" height="25"></a>
### Course: <a href="./">curso_122 (MySQL)   <img src="./0-aux/logo_course.png" alt="curso_122" width="auto" height="25"></a>

#### <a href="https://github.com/PedroHeeger/main/blob/main/cert_ti/04-curso/programming/power_shell/(24-03-20)_Cert_PowerShell_PH_UDM.pdf">Certificate</a>

---

### Theme:
- Database

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

<h3>Course Strcuture:</h3>
1. <a href="#item01">MySQL</a><br>
  1.1 <a href="#item01.01">Aula 1 – O que é um Banco de Dados?</a><br>   
  1.2 <a href="#item01.02">Aula 2a – Instalando o MySQL com WAMP</a><br>   
  1.3 <a href="#item01.03">Aula 2b – Instalando o XAMPP</a><br>   
  1.4 <a href="#item01.04">Aula 3 – Criando o primeiro Banco de Dados</a><br>   
  1.5 <a href="#item01.05">Aula 4 – Melhorando a Estrutura do Banco de Dados</a><br>   
  1.6 <a href="#item01.06">Aula 5 – Inserindo Dados na Tabela (INSERT INTO)</a><br>   
  1.7 <a href="#item01.07">Aula 6 – Alterando a Estrutura da Tabela (ALTER TABLE e DROP TABLE)</a><br>   
  1.8 <a href="#item01.08">Aula 7 – Manipulando Linhas (UPDATE, DELETE e TRUNCATE)</a><br>   
  1.9 <a href="#item01.09">Aula 8 – Gerenciando Cópias de Segurança MySQL</a><br>   
  1.10 <a href="#item01.10">Aula 9 – PHPMyAdmin (Parte 1)</a><br>   
  1.11 <a href="#item01.11">Aula 10 – PHPMyAdmin (Parte 2)</a><br>   
  1.12 <a href="#item01.12">Exercício para curso de MySQL</a><br>   
  1.13 <a href="#item01.13">Aula 11 – SELECT (Parte 1)</a><br>   
  1.14 <a href="#item01.14">Aula 12 – SELECT (Parte 2)</a><br>   
  1.15 <a href="#item01.15">Aula 13 – SELECT (Parte 3)</a><br>   
  1.16 <a href="#item01.16">Aula 14 – Modelo Relacional</a><br>   
  1.17 <a href="#item01.17">Aula 15 – Chaves Estrangeiras e JOIN</a><br>   
  1.18 <a href="#item01.18">Aula 16 – INNER JOIN com várias tabelas</a><br>   

---

### Objective:
O objetivo desse curso foi apresentar o software **PowerShell**, introduzindo o básico sobre essa ferramenta.

### Structure:
A estrutura do curso é formada por:
- Este arquivo de README.
- A pasta `0-aux`, pasta auxiliar com imagens utilizadas na construção desse arquivo de README.

### Development:

<a name="item01.01"><h4>Aula 1 – O que é um Banco de Dados?</h4></a>[Back to summary](#item01)

Os primeiros computadores, surgidos a partir de 1945, eram voltados para uso acadêmico e militar e se tornaram mais comuns na década de 1950. Naquela época, as informações eram armazenadas em papel, por meio de fichas que eram preenchidas e guardadas em pastas, posteriormente organizadas em arquivos metálicos. Se compararmos essa estrutura com o conceito de banco de dados, as fichas representariam os registros, as pastas seriam as tabelas e os armários (arquivos metálicos) corresponderiam aos arquivos. O grande desafio desse sistema era o excesso de papel acumulado. A partir do final dos anos 1950 e início dos anos 1960, o foco passou a ser a digitalização dessas informações, já que os computadores começaram a se popularizar no ambiente empresarial, tornando-se progressivamente menores e mais acessíveis em comparação aos gigantescos modelos militares e acadêmicos iniciais.

No início da digitalização, o conceito de banco de dados ainda não era amplamente difundido. Assim, os dados eram armazenados em fitas magnéticas ou cartões perfurados, que funcionavam de forma sequencial — ou seja, os registros eram organizados um após o outro, tornando o processo de busca lento e ineficiente, já que era necessário percorrer toda a fita para encontrar um registro específico. Esse método de armazenamento ficou conhecido como Arquivos Sequenciais ou Arquivos de Acesso Sequencial. Com o tempo, surgiram os discos (como disquetes e HDs), que permitiam o armazenamento de dados de forma direta e não sequencial, eliminando a necessidade de ler todo o disco para localizar um registro. Além disso, esses discos introduziram a indexação, o que possibilitava organizar os registros como se fossem tabelas, com um índice para facilitar a identificação. Esse novo formato ficou conhecido como Arquivos Diretos ou Arquivos de Acesso Direto.

Embora os arquivos de acesso direto fossem uma melhoria significativa em relação aos arquivos sequenciais, ainda havia um problema com os índices, que eram bastante simplistas. Foi na década de 1960 que ocorreu um marco importante na evolução dos bancos de dados. O Departamento de Defesa dos Estados Unidos recebeu a tarefa de desenvolver uma forma mais eficiente e segura de armazenar informações. Como parte desse esforço, surgiu um evento crucial chamado CODASYL, um grande encontro que reuniu militares, empresas e universidades para discutir novas tecnologias. Entre as muitas inovações propostas, uma das mais notáveis foi a criação do **COBOL**, uma das linguagens de programação mais influentes da história. O **COBOL** foi a primeira linguagem a tratar tanto da lógica da programação quanto dos dados embutidos nela, dando grande importância à estrutura de dados. Essa característica tornou o **COBOL** essencial, e muitas grandes empresas ainda o utilizam até os dias atuais, embora muitas estejam gradualmente migrando para outras soluções. Além do **COBOL**, no CODASYL foi discutido o surgimento de uma nova tecnologia que foi nomeada de Banco de Dados.

O conceito de Banco de Dados, criado na década de 1960, permanece até hoje dividido em quatro componentes principais: a Base de Dados, que contém os dados propriamente ditos; o Sistema Gerenciador, conhecido como SGBD (Sistema de Gerenciamento de Banco de Dados) ou DBMS (Database Management System) em inglês, que é responsável por administrar esses dados; a Linguagem de Exploração, utilizada para interagir e manipular o banco de dados; e os Programas Adicionais, que incluem funções como gerenciamento de usuários, otimizadores de dados e qualquer outro software que possa ser integrado ao sistema.

Além do Departamento de Defesa dos EUA, a IBM desempenhou um papel fundamental na construção dos bancos de dados. A empresa, que remonta às inovações de Herman Hollerith, evoluiu para se tornar uma das maiores companhias de tecnologia do mundo. Uma das primeiras propostas da IBM foi a criação do conceito de dados hierárquicos, onde os dados seriam organizados em uma estrutura com diferentes níveis de hierarquia, o que deu origem ao Modelo Hierárquico. Além disso, a IBM desenvolveu uma evolução desse modelo, no qual os dados não seriam mais organizados de forma hierárquica, mas interligados de maneira semelhante a uma rede, resultando no Modelo em Rede.

Os modelos hierárquico e em rede, criados pela IBM no final da década de 1960, permitiam armazenar informações como dados de clientes, serviços, funcionários, empresas e fornecedores. No entanto, esses modelos apresentavam uma limitação: não facilitavam o relacionamento entre os dados, ou seja, a conexão entre registros de diferentes conjuntos. Para resolver esse problema, na década de 1970, Edgar F. Codd, um pesquisador da IBM, propôs um novo modelo. Em vez de usar hierarquias ou redes, esse modelo organizava os dados com base em relações, originando o Modelo Relacional. Embora o Modelo Relacional seja amplamente utilizado até hoje, outros modelos surgiram posteriormente, como o Modelo baseado em Documentos e o Modelo Orientado a Objetos, mais recente. Ainda assim, o Modelo Relacional é considerado mais simples de compreender e explicar.

O Modelo Relacional é extremamente importante, pois permite, por exemplo, em um cadastro de cliente em um banco de dados, acessar diversos registros relacionados a esse mesmo cliente. Dessa forma, é possível obter informações sobre seu endereço, as compras realizadas e, a partir dessas compras, identificar onde, o que e quando ele adquiriu determinado produto, além de consultar o estoque desse item. Tudo isso é viabilizado pelas relações entre os dados.

Uma das linguagens de exploração mais utilizadas no modelo relacional é a SQL, que originalmente era chamada de **Structured English Query Language (SEQUEL)**. Com o tempo, o nome foi alterado para **Structured Query Language (SQL)**. Basicamente, SQL é uma linguagem de consulta de dados. A ideia inicial era que ela se tornasse uma linguagem universal, suportada por todos os bancos de dados. No entanto, cada fabricante fez suas próprias adaptações à SQL, criando versões específicas, o que gerou confusão no mercado, já que, em vez de uma única linguagem, surgiram várias variações. Para lidar com esse problema, os órgãos de padronização ANSI e ISO intervieram para unificar e regular a linguagem.

A partir desse ponto, surgiram vários bancos de dados, como o **Oracle**, que é um dos maiores do mercado atualmente; a IBM, com seu banco de dados **DB2**; e o **dBase**, um banco de dados antigo que caiu em desuso. A Microsoft também oferece o **SQL Server**. Essas são soluções pagas, voltadas para o mercado empresarial. No entanto, também existem opções gratuitas, como o **MySQL**, que é uma das soluções mais populares e atualmente pertence à Oracle. Parte dos desenvolvedores que criaram o **MySQL** fez um fork dele, resultando no **MariaDB**. Além desses, há o **Firebird** e o **PostgreSQL**, ambos também gratuitos e amplamente utilizados.

<a name="item01.02"><h4>Aula 2a – Instalando o MySQL com WAMP</h4></a>[Back to summary](#item01)





<a name="item01.03"><h4>Aula 2b – Instalando o XAMPP</h4></a>[Back to summary](#item01)





<a name="item01.04"><h4>Aula 3 – Criando o primeiro Banco de Dados</h4></a>[Back to summary](#item01)






<a name="item01.05"><h4>Aula 4 – Melhorando a Estrutura do Banco de Dados</h4></a>[Back to summary](#item01)







<a name="item01.06"><h4>Aula 5 – Inserindo Dados na Tabela (INSERT INTO)</h4></a>[Back to summary](#item01)






<a name="item01.07"><h4>Aula 6 – Alterando a Estrutura da Tabela (ALTER TABLE e DROP TABLE)</h4></a>[Back to summary](#item01)