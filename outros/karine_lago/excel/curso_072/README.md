# Imersão Excel 2   <img src="./0-aux/logo_course.png" alt="curso_072" width="auto" height="45">

### Repository: [course](../../../)
### Platform: <a href="../">karine_lago   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/karine_lago.jpeg" alt="karine_lago" width="auto" height="25"></a>
### Software/Subject: <a href="../../">excel   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/microsoft_excel.png" alt="excel" width="auto" height="25"></a>
### Course: <a href="./curso_072">curso_072 (Imersão Excel 2)   <img src="./0-aux/logo_course.png" alt="curso_072" width="auto" height="25"></a>

#### <a href="https://github.com/PedroHeeger/main/blob/main/cert_ti/05-particip/data/excel/(23-07-06)%20Cert%20Excel%20PH%20Karine%20Lago%20(Imersão).pdf">Certificate</a>
##### Para conferir outros reports e dashboards de outros projetos, consulte meu repositório principal na sub-pasta de report clicando [aqui](https://github.com/PedroHeeger/main/tree/main/report).

---

### Theme:
- Data Analysis

### Used Tools:
- BI Tool: 
  - Excel <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/microsoft_excel.png" alt="microsoft_excel" width="auto" height="25">
- Integrated Development Environment (IDE):
  - VS Code   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" alt="vscode" width="auto" height="25">
- Versioning: 
  - Git   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" alt="git" width="auto" height="25">
- Repository:
  - GitHub   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" alt="github" width="auto" height="25">
- Others:
  - Google Drive <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/google_drive.png" alt="google_drive" width="auto" height="25">
  - Looka <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/sites/ai_looka.svg" alt="looka" width="auto" height="25">

---

### Objective:
- O objetivo desse projeto prático foi introduzir as principais ferramentas e fórmulas do software **Microsoft Excel**. Além de desenvolver um report do zero sobre a temática **vendas**, onde foi realizado uma análise das vendas da uma base de dados hipotética da Walmart. 

### Structure:
- A estrutura (Imagem 01) do projeto é formada por dois arquivos em **Excel** um para cada aula, sendo a aula 2 e 3 resolvida no mesmo arquivo. Uma pasta com as imagens dos ícones inseridos no report. Duas pastas, uma contendo três arquivos de base de dados em **Excel**, um para cada ano (2021, 2022, 2023); a outra contendo, também em um arquivo de **Excel**, a base de dados só do mês de Julho/2023 para ser inserido posteriormente. Além da pasta **0-aux**, pasta auxiliar com imagens utilizadas na construção desse arquivo de README. A logomarca do curso foi criado apenas para fins didáticos utilizando o site de inteligência artificial **Looka**.

<div align="Center"><figure>
    <img src="./0-aux/img01.PNG" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:
Este projeto foi desenvolvido em três aulas.

#### Class 1
Na primeira aula foi apenas uma introdução as ferramentas e fórmulas do **Excel**. Nesta aula foi utilizada a fórmula `VLOOKUP` para preencher três colunas vazias (**Marca**, **Categoria** e **Classificação**) que estavam em outra aba. Foram realizados operações com as fórmulas `COUNTIF` e `SUMIF` e a utilização da fórmula condicional `IFS` para calcular as métricas: **Quantidade de Pedidos**, **Faturamento**, **Quantidade Vendida** e **Porcentagem de Comissão**. Também foi utilizado a ferramenta de **Validação Dados** para criar uma validação no formato de lista.

#### Class 2 e 3
Na aula 2 e 3 foi utilizado o **Power Query** em um novo arquivo para realizar um processo de ETL (Extração, Transformação e Carregamento) de uma base de dados formada por três arquivos de **Excel**, um para cada ano (2021, 2022 e 2023). A extração foi realizada direto na pasta dos arquivos, pois estavam todos sozinhos na mesma pasta e possuiam a mesma estrutura de dados. Os dados foram carregados no **Excel** em uma tabela formatada, onde foi criado uma condicional junto com uma validação de dados para quando selecionarmos o tipo de classificação (**Bronze**, **Prata** e **Ouro**), as linhas correspondentes seriam destacadas.

Em uma outra aba foi desenvolvido todas as tabelas dinâmicas referente aos dados, que no caso foram onze. Essas tabelas alimentaram os gráficos dinâmicos construídos na aba do report e também os quatro visuais de cartões (**Total Faturamento**, **Total Pedido**, **Melhor Gerente**, **Percentual de Itens com Ocorrência**) criados com as formas do **Excel**. Em relação aos gráficos foram de efetuadas **análise de faturamento por período** (Gráfico de Linha), **análise de representatividade por marca** (Gráfico de Rosca), **análise de faturamento por categoria de produto** (Gráfico de Colunas) e **análise de faturamento por estado** (Gráfico de Mapa).

Além dos gráficos, foram criadas três segmentações de dados (**Anos**, **Marca** e **Categoria**) para filtragem dos visuais. Alguns ícones foram inseridos para confecção do report, e também configurações de layout foram realizadas. Com o report concluído, foi copiado a base de dados de Julho/2023 que estava em outra pasta e colado na pasta das bases atuais, sendo necessário atualizar os dados no arquivo do report para que a tabela recebesse os novos dados e passasse as informaçõs para as tabelas dinâmicas que por sua vez, atualizaram os gráficos. Por fim, o report é apresentado na imagem 02 abaixo.

<div align="Center"><figure>
    <img src="./0-aux/rep_vendas_curso_072.PNG" alt="img02"><br>
    <figcaption>Imagem 02: Report.</a></figcaption>
</figure></div><br>