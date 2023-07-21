# Intensivão de Power BI 2022   <img src="./0-aux/logo_course.png" alt="curso_040" width="auto" height="45">

### Repository: [course](../../../)
### Platform: <a href="../../">hashtag   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/hashtag.png" alt="hashtag" width="auto" height="25"></a>
### Software/Subject: <a href="../">power_bi   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/microsoft_powerbi.png" alt="power_bi" width="auto" height="25"></a>
### Course: <a href="./">curso_040 (Intensivão de Power BI 2022)   <img src="./0-aux/logo_course.png" alt="curso_040" width="auto" height="25"></a>

#### <a href="https://app.powerbi.com/view?r=eyJrIjoiYmE4OWI5ZDYtNmNkYi00OGQyLWIxMzctYWVlNmJkYWUyZGMyIiwidCI6ImI1NTJmZWJlLWFkMjgtNGI4Ny1iZjI5LTFlODhiYmZkY2I4ZiJ9">Power BI Report Aula 1</a>
#### <a href="https://app.powerbi.com/view?r=eyJrIjoiOTNiZTQ2YjYtODg3Mi00OGE2LTllMDEtYzE2MmMwOGI0Y2E3IiwidCI6ImI1NTJmZWJlLWFkMjgtNGI4Ny1iZjI5LTFlODhiYmZkY2I4ZiJ9">Power BI Report Aula 2</a>
#### <a href="https://app.powerbi.com/view?r=eyJrIjoiMTRlOGVjY2QtNGEyMy00ZjY0LThkMTAtN2RjMTdhMTNmMzExIiwidCI6ImI1NTJmZWJlLWFkMjgtNGI4Ny1iZjI5LTFlODhiYmZkY2I4ZiJ9">Power BI Report Aula 3</a>
#### <a href="https://app.powerbi.com/view?r=eyJrIjoiYWUzN2Y1ZWItNWE2Yy00NGQzLWFjNjMtZWEwODI3YTNhNzlhIiwidCI6ImI1NTJmZWJlLWFkMjgtNGI4Ny1iZjI5LTFlODhiYmZkY2I4ZiJ9">Power BI Report Aula 4</a>
##### Para conferir outros reports e dashboards de outros projetos consulte meu repositório principal na sub-pasta de report clicando [aqui](https://github.com/PedroHeeger/main/tree/main/report).

---

### Theme:
- Data Analysis
- Business Intelligence (BI)

### Used Tools:
- BI Tool: 
  - Power BI   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/microsoft_powerbi.png" alt="power_bi" width="auto" height="25">
  - Power Query <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/microsoft_power_query.png" alt="power_query" width="auto" height="25">
  - Excel <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/microsoft_excel.png" alt="microsoft_excel" width="auto" height="25">
- Integrated Development Environment (IDE):
  - VS Code   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" alt="vscode" width="auto" height="25">
- Versioning: 
  - Git   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="git" width="auto" height="25">
- Repository:
  - GitHub   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="github" width="auto" height="25">
- Others:
  - Google Drive <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/google_drive.png" alt="google_drive" width="auto" height="25">
  - Brandmark <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/sites/ai_brandmark.png" alt="brandmark" width="auto" height="25">
  - PowerPoint <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/microsoft_powerpoint" alt="power_point" width="auto" height="25">

---

### Objective:
O objetivo desse projeto prático foi construir quatro reports, um para cada aula, com as seguintes temáticas respectivamente: **vendas**, **poodução**, **recursos humanos** e **financeiro**. Durante a construção foram apresetadas as ferramentas e funções do **Power BI** e também do **Power Query**.

### Structure:
A estrutura (Imagem 01) do projeto é formada por:
- Quatro arquivos em **Power BI**, um para cada aula, com a construção dos reports.
- Uma pasta com quatro apostilas em **PDF**, uma para cada aula.
- Uma pasta (**material**) com todo material de apoio para construção dos reports, como: quatro bases de dados em **Excel** para cada projeto em **Power BI**, arquivos de imagens para construção do plano de fundo dos reports, incluindo plano de fundo dos **Tooltips**, dois arquivos em **PowerPoint** para montagem do plano de fundo, duas sub-pastas (**Ícones** e **Imagens**) com os arquivos de imagens e de ícones utilizados na construção dos relatórios.
- A pasta **0-aux**, pasta auxiliar com imagens utilizadas na construção desse arquivo de README.
- Obs.: A logomarca do curso foi criado apenas para fins didáticos utilizando o site de inteligência artificial **Brandmark**.

<div align="Center"><figure>
    <img src="./0-aux/img01.PNG" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:
Este projeto foi desenvolvido em quatro aulas.

#### Class 1
O primeiro report criado neste curso, foi sobre a temática **compras**. O processo iniciou com a extração dos dados pelo **Power Query** de um dos arquivos (**Compras**) de base de dados em **Excel** e a criação de uma única Query (**BaseCompras**). A estrutura de dados no **Excel** possuía as seguintes colunas: **Data da Compra**, **Produto**, **PrecoOriginal**, **PrecoPago**, **Fornecedor**, **Qtd. Comprada**, **TotalOriginal**, **TotalPago**, **Nome Comprador**, **Sobrenome** e **Região Destino**.

No **Power Query**, foram realizados alguns tratamentos dos dados. O primeiro deles, foi a substituição da primeira linha como cabeçalho dos dados. Em seguida, foi alterado todos os tipos de dados de todas as colunas, pois não estava sendo indentificado de qual tipo era cada coluna. Também foi realizado a exclusão de linhas e colunas vazias, ou seja, com dados ausentes. As colunas **Nome Comprador** e **Sobrenome** foram mescladas em uma única coluna e renomeada para **Nome Completo**. Foi inserida uma nova coluna, renomeada para **Desconto Negociado**, que realizava o cálculo da subtração entre as colunas **TotalOriginal** e **TotalPago** para obter o total de desconto obtido na compra dos produtos. Todas as ações do **Power Query** utilizam a **Linguagem M** para realização, porém não foi necessário escrever os comandos dessa linguagem, tudo foi feito através dos atalhos da barra de ferramentas. Após essas modificações, a consulta foi carregada para uma tabela no **Power BI**.

Para a construção do report foram necessários cinco visuais. Primeiramente, foram criados dois de cartões, um exibindo o **Custo Total Pago** pela compra dos produtos, enquanto o outro, o **Produto Mais Comprado**. Neste último, foi necessário criar um filtro para obter o top 1 dos produtos mais comprados. Os outros visuais foram três gráficos, sendo: um de colunas agrupadas (**Análise do Custo Total Original x Custo Total Pago Mensal**), outro de barras (**Análise do Custo Total Pago por Fornecedor**) e por último, um gráfico de mapa coroplético (**Análise da Quantidade de Produtos Comprados por Região**). Na imagem 01, abaixo, é exibido o primeiro report do curso.

<div align="Center"><figure>
    <a href=""><img src="./0-aux/rep_curso_040.1_compras.PNG" alt="img02"><br>
    <figcaption>Imagem 02: Report.</a></figcaption>
</figure></div><br>

#### Class 2
Na segunda aula, foi criado um novo report, desta vez, sobre a temática **logística**. O desenvolvimento teve início também com a extração dos dados pelo **Power Query**, porém o arquivo de base de dados foi **Base Logistica**, que criou uma única Query nomeada para **Frete**. A estrutura dos dados era formada pelas colunas: **Viagem**, **Data Pedido**, **Data Entrega**, **Prazo Entrega**, **UF**, **Marca**, **Tipo de Veículo**, **Valor do Frete Líquido**, **Km**, **Combustível**, **Manutenção** e **Custos Fixos**.

O primeiro tratamento realizado no **Power Query** foi a utilização da primeira linha como cabeçalho. Na sequência, foi definido os tipos de dados das colunas, pois estavam em aberto e é importante sempre definir de quais tipos são os dados. Foi criada uma nova coluna que foi renomeada para **Custos Totais** e que calculava o somatório de todos os custos, ou seja, as colunas **Combustível**, **Manutenção** e **Custos Fixos**. Essas três colunas não foram mais necessárias e portanto, foram excluídas, já que a coluna **Custos Totais** contemplava a soma delas. Uma nova coluna foi inserida e renomeada para **Tempo Entrega** que calculava o tempo de entrega em dias entre a coluna **Data Entrega** e **Data Pedido**. Para finalizar, foi inserida uma coluna condicional (**Status Entrega**) que comparava a coluna **Tempo Entrega** com **Prazo Entrega** para verificar se o tempo de entrega estava dentro do prazo estabelecido, determinando as condições **No Prazo** (Verdadeiro) e **Atrasado** (Falso).

Os dados foram carregados em única tabela no **Power BI** com o mesmo nome da consulta (**Frete**). Com as **Expressões DAX** foi criado sete medidas. A primeira pedida elaborada foi a de **Receita** que somava a coluna **Valor do Frete Líquido**. A medida **Total Custos** somava a coluna **Custos Fixos** para obter o total de custos. Com a receita e o total de custos, foi obtido o lucro através da medida **Lucro**. A medida **Km Rodados** somou todas as distâncias em Km da coluna **Km** para descobrir o total de quilômetros rodados. Para calcular a quantidade de viagens realizadas (**Qtd Viagens**) foi necessário a contagem da quantidade de linhas da tabela. Abaixo estão as **Expressões DAX** dessas cinco medidas criadas.

```
Receita = SUM(Frete[Valor do Frete Líquido])
```

```
Total Custos = SUM(Frete[Custos Totais])
```

```
Lucro = [Receita] - [Total Custos]
```

```
Km Rodados = SUM(Frete[Km])
```

```
Qtd Viagens = COUNTROWS(Frete)
```

As últimas duas medidas foram utilizadas para a construção de um gráfico de velocímetro. A primeira delas foi a medida **Viagens No Prazo** que contabilizava a quantidade de linhas da tabela quando na coluna **Status Entrega** fosse **No Prazo**, ou seja, o total de viagens que foi realizada dentro do prazo. A medida **% Entrega no Prazo** realizava o cálculo do percentual das **Viagens No Prazo** sobre o total de viagens (**Qtd Viagens**). Esse valor percentual foi indicado no gráfico, onde uma linha de meta de 60% foi inserida para avaliar se estavam acima ou abaixo da meta.

```
Viagens No Prazo = CALCULATE(COUNTROWS(Frete),Frete[Status Entrega]="No Prazo")
```

```
% Entrega no Prazo = [Viagens No Prazo] / [Qtd Viagens]
```

Além do gráfico de velocímetro que realizou uma **Análise do Percentual de Entregas no Prazo**, outros seis visuais foram construídos, um gráfico de coluna para a **Análise da Quantidade de Viagens por Mês**, um visual de matriz com uma **Análise da Receita e Quantidade de Viagens por Tipo de Veículo e Marca**, e quatro visuais de cartões exibindo: **Receita**, **Lucro**, **Km Rodado** e **Qtd Viagens**. Uma segmentação de dados de **ano e mês** foi adicionada para a filtragem dos dados. A seguir, a visualização do report logístico é apresentada na imagem 03.

<div align="Center"><figure>
    <a href=""><img src="./0-aux/rep_curso_040.2_logistico.PNG" alt="img03"><br>
    <figcaption>Imagem 03: Report Logístico.</a></figcaption>
</figure></div><br>

#### Class 3
A aula, cuja temática de construção do report foi **vendas**, foi iniciada através do **Power Query** com a criação de duas Queries extraídas da base de dados **Base Vendas**. Cada consulta veio de uma aba desse arquivo em **Excel**. A consulta **CadastroProdutos** veio da segunda aba e posteriormente seria carregada em uma **tabela dimensão**. A primeira aba originou a consulta **Vendas** que foi carregada em uma **tabela fato**, e em sua estrutura de dados possuía as seguintes colunas: **SKU Vendido**, **Qtd Vendida**, **Preco Unitario**, **Faturamento**, **Loja**, **Data da Venda** e **Codigo Cliente**. As únicas alterações realizadas nas consultas foram: promover a primeira linha para cabeçalho e definir os tipos de dados das colunas. 

Após o tratamento no **Power Query**, as Queries foram carregadas para tabelas dentro do **Power BI**. O relacionamento entre elas não foi reconhecido automaticamente, logo, foi necessário relacionar a coluna **SKU** da tabela dimensão com a coluna **SKU Vendido** da tabela fato. O relacionamento é ilustrado na imagem 04 abaixo.

<div align="Center"><figure>
    <img src="./0-aux/img04.PNG" alt="img04"><br>
    <figcaption>Imagem 04.</figcaption>
</figure></div><br>

No **Power BI** foi criado quatro medidas dentro da tabela **Vendas** e cada uma delas originou um visual de cartão com um gráfico de **Sparkline** dentro de cada cartão. As medidas **Faturamento Total** e **Unidades Vendidas** realizaram a soma das colunas **Faturamento** e **Qtd Vendida**, respectivamente. A medida **Ticket Medio** calculou a média da coluna **Faturamento** para obter o preço médio de vendas. Já a medida **Qtd Clientes** fez a contagem das linhas com **Codigo Cliente** diferente para determinar a quantidade de clientes.

```
Faturamento Total = Sum(Vendas[Faturamento])
```

```
Unidades Vendidas = Sum(Vendas[Qtd Vendida])
```

```
Ticket Medio = AVERAGE(Vendas[Faturamento])
```

```
Qtd Clientes = DISTINCTCOUNT(Vendas[Codigo Cliente])
```

Na construção do report, além dos cartões com **Sparkline**, foi construído outros dois visuais. Um gráfico de barras para a **Análise do Faturamento Total por Marca** e um visual de **Imagem Grid**, ou seja, imagens dos produtos comercializados, no qual é possível selecioná-los para filtrar os demais visuais. Para este visual foi necessário a coluna **Imagem** da tabela dimensão **CadastroProdutos**, pois nesta coluna tinha os links para utilização das imagens. O projeto do report de **vendas** é apresentado abaixo (Imagem 05).

<div align="Center"><figure>
    <a href=""><img src="./0-aux/rep_curso_040.3_vendas.PNG" alt="img05"><br>
    <figcaption>Imagem 05: Report Vendas.</a></figcaption>
</figure></div><br>

Nesta aula, foi criada também uma segunda página, só para apresentação do visual **Decomposition Tree** (Árvore de Decomposição), mas esta página foi ocultada do relatório.

#### Class 4
Para última aula, o tema do report foi **projetos**. O procedimento inicial é sempre parecido, sendo feito um processo de **ETL** (Extração, Transformação e Carregamento), começando com a obtenção dos dados pelo **Power Query** para criação de uma consulta (**Projetos**). Nesta ocasião, o arquivo em **Excel** de base de dados foi **Base Projetos** composta apenas por uma aba com a seguinte estrutura: **Código Projeto**, **Setor**, Valor Orçado**, **Valor Negociado**, **Desconto Concedido**, **Data Ativação Lead**, **Data Início**, **Data Termino**, **Responsável** e **Status**. No **Power Query** os dados foram tratados (promoção da primeira linha como cabeçalho, definação dos tipos de dados das colunas e exclusão de linhas em branco) e carregados em uma tabela no **Power BI**, com o mesmo nome da consulta.

Todas as sete medidas criadas foram armazenadas dentro da única tabela. A primeira medida elaborada foi **Oportunidades** que contava a quantidade de linhas da tabela para conhecer o total de oportunidades de projetos. A medida **Projetos Fechados** também realiza uma contagem, porém quando uma condição é atendida, que no caso, é quando na coluna **Data Início** é diferente de em branco (vazio), ou seja, quando existe uma data de início do projeto, passando a ser considerado com um projeto fechado. Já a medida **Total Leads** subtrai as medidas anteriores uma pela outra, para calcular quantos projetos não foram fechados. Essas três medidas são demonstradas a seguir.

```
Oportunidades = COUNTROWS(Projetos)
```

```
Projetos Fechados = CALCULATE(COUNTROWS(Projetos),Projetos[Data Início]<>BLANK())
```

```
Total Leads = [Oportunidades]-Projetos[Projetos Fechados]
```

Para a medida **Total Orçado** é semelhante a medida **Projetos Fechados**, porém ao invés de contabilizar as linhas, vai somar a coluna **Valor Orçado** para obter o orçamento dos projetos fechados. A medida **Total Negociado** é parecida com esta anterior, pórem soma a coluna **Valor Negociado** para calcular o faturamento, de fato, dos projetos fechados. Então com essas duas medidas, é subtraída uma da outra na medida **Desconto Negociado** para calcular quanto de desconto foi dado nos projetos fechados.

```
Total Orçado = CALCULATE(
    Sum(Projetos[Valor Orçado]), 
    Projetos[Data Início]<>BLANK()
    )
    // Aqui estou somando o orçamento dos projetos fechados
```

```
Total Negociado = CALCULATE(
    Sum(Projetos[Valor Negociado]),
    Projetos[Data Início]<>BLANK()
)
```

```
Desconto Negociado = [Total Orçado] - [Total Negociado]
```

Uma última medida foi criada, porém não foi utilizada na construção do report. A medida **Total Orçado Geral** é quase a mesma que **Total Orçado**, a diferença é que está aplica para todos os projetos, fechados ou não.

```
Total Orçado Geral = Sum(Projetos[Valor Orçado])
```

Todas as medidas, excluindo essa última, foram utilizada para construção dos visuais de cartão. Além dos cartões, o relatório contou com outros quatro visuais: um gráfico de coluna agrupada (**Análise do Orçado x Negociado por Ano**), um gráfico de área (**Análise dos Projetos Fechados por Ano e Trimestre**), um gráfico de funil (**Análise de Oportunidades por Status**), sendo este, com uso do **Tooltip** construído em outra página, e por último, um visual de **Play Axis**, que executa, em um loop, uma filtragem dos dados por **Setor**, em um determinado tempo. A imagem 06 apresentam o último report, sobre a temática **projetos**.  

<div align="Center"><figure>
    <a href=""><img src="./0-aux/rep_curso_040.4_projetos.PNG" alt="img06"><br>
    <figcaption>Imagem 06: Report Projetos.</a></figcaption>
</figure></div><br>

A **Tooltip** foi desenvolvida em outra página, com um gráfico de colunas que realiza uma **Análise de Oportunidades por Setor**, além de dois cartões exibindo o **Valor Orçado** e o **Melhor Setor**. O **Tooltip** é exibido na imagem 07, a seguir.

<div align="Center"><figure>
    <img src="./0-aux/img07.PNG" alt="img07" width="300px"><br>
    <figcaption>Imagem 07: Tooltip.</figcaption>
</figure></div><br>