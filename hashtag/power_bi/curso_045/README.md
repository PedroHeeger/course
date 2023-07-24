# Minicurso Power BI 1   <img src="./0-aux/logo_course.png" alt="curso_045" width="auto" height="45">

### Repository: [course](../../../)
### Platform: <a href="../../">hashtag   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/hashtag.png" alt="hashtag" width="auto" height="25"></a>
### Software/Subject: <a href="../">power_bi   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/microsoft_powerbi.png" alt="power_bi" width="auto" height="25"></a>
### Course: <a href="./">curso_045 (Minicurso Power BI 1)   <img src="./0-aux/logo_course.png" alt="curso_045" width="auto" height="25"></a>

##### Para conferir outros reports e dashboards de outros projetos consulte meu repositório principal na sub-pasta de report clicando [aqui](https://github.com/PedroHeeger/main/tree/main/report).

---

### Theme:
- Data Analysis
- Business Intelligence (BI)

### Used Tools:
- BI Tool: 
  - Power BI   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/microsoft_powerbi.png" alt="power_bi" width="auto" height="25">
  - Power Query <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/microsoft_power_query.png" alt="power_query" width="auto" height="25">
- Integrated Development Environment (IDE):
  - VS Code   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" alt="vscode" width="auto" height="25">
- Versioning: 
  - Git   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="git" width="auto" height="25">
- Repository:
  - GitHub   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="github" width="auto" height="25">
- Others:
  - Google Drive <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/google_drive.png" alt="google_drive" width="auto" height="25">
  - Excel <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/microsoft_excel.png" alt="microsoft_excel" width="auto" height="25">
  - PowerPoint <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/microsoft_powerpoint.png" alt="power_point" width="auto" height="25">
  - Brandmark <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/sites/ai_brandmark.png" alt="brandmark" width="auto" height="25">
  - Linguagem M e Expressões DAX

---

### Objective:
O objetivo desse projeto foi introdução do software **Power BI** e o desenvolvimento de um report do zero com o tema **vendas**. Durante a construção foram apresentadas as ferramentas e funções do **Power BI** e também do **Power Query**.

### Structure:
A estrutura (Imagem 01) do projeto é formada por:
- Um arquivo em **Power BI** para a construção do report.
- Um arquivo em **Excel** com a base de dados utilizada.
- Uma arquivo de **PowerPoint** para a elaboração do layout do report.
- Arquivos de imagens e de ícones utilizados na construção do relatório.
- A pasta **0-aux**, pasta auxiliar com imagens utilizadas na construção desse arquivo de README.
- Obs.: A logomarca do curso foi criado apenas para fins didáticos utilizando o site de inteligência artificial **Brandmark**.

<div align="Center"><figure>
    <img src="./0-aux/img01.PNG" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:
O projeto foi iniciado no **Power Query** com a extração do arquivo de base de dados e criação de uma Query de nome **BaseVendas**. A estrutura da base de dados era composta pelas colunas: **SKU**, **Produto**, **Qtd Vendida**, **Data**, **Loja**, **Preço Unitário**, **Nome**, **Sobrenome** e **Gênero**. Foi realizado um processo de **ETL** (Extração, Transformação e Carregamento) antes de enviar os dados para o **Power BI**. O tratamento de dados inicio com a promoção da primeira linha como cabeçalho, definição dos tipos de dados das colunas e remoção de linhas e colunas vazias. Em seguida, as colunas **Nome** e **Sobrenome** foram mescladas se transformando em uma única coluna **Nome Completo**. Já a coluna **Loja** foi dividida em duas outras colunas **Cidade** e **Estado**. Na coluna **Gênero** foi alterado as informações de **Masculino** e **Feminino** para **M** e **F** respectivamente. Foi adicionada a coluna **Faturamento** que multiplicou a coluna **Preço Unitário** por **Qtd Vendida**.

Com o tratamento finalizado, a consulta foi carregada para uma tabela de mesmo nome no **Power BI**. Nesta tabela, não foi criada nenhuma medida. O plano de fundo do report foi construído no **PowerPoint**, sendo o material fornecido pela plataforma do curso. Três visuais de cartão foram inseridos para mostrar as métricas de **Faturamento**, **Qtd Vendida** e **Produto Mais Vendido**. Este último foi necessário realizar um filtro de Top 1 para encontrar o produto mais vendido. Os gráficos que fizeram parte desse relatório apresentaram as seguintes análises: **Análise Faturamento por Produto** (Gráfico de Barra), **Análise de Faturamento por Mês** (Gráfico de Coluna), **Análise de Faturamento por Gênero** (Gráfico de Rosca) e **Análise de Faturamento por Cidade** (Gráfico de Mapa). O report pode ser visualizado na imagem 02 abaixo.

<div align="Center"><figure>
    <img src="./0-aux/rep_curso_045_vendas.PNG" alt="img02"><br>
    <figcaption>Imagem 02: Report Vendas.</figcaption>
</figure></div><br>