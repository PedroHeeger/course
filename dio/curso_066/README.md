# Dev Week - Ifood Ciência de Dados com Python


Repositório: [course](https://github.com/PedroHeeger/course/blob/main/)
Plataforma: [dio](https://github.com/PedroHeeger/course/blob/main/dio)
Curso: [curso_066 (Dev Week - Ifood Ciência de Dados com Python)](https://github.com/PedroHeeger/course/blob/main/dio/curso_066)

Tema:
- Ciência de Dados
- Inteligência Artificial (AI)

Ferramentas Utilizadas:
- Linguagem de Programação: Python
- Ambiente de Desenvolvimento (IDE): Google Colab; VS Code
- Versionamento: Git
- Repositório: GitHub
- Bibliotecas: Gdown; Pandas; Matplotlib;

Objetivo:
O objetivo desse projeto prático é analisar a satisfação dos feedbacks dos talentos da DIO em relação a um Bootcamp qualquer (cujo os dados foram gerados hipoteticamente, apenas para fins didáticos). Essa análise é feita através do o cálculo do Net Promoter Score (NPS), uma métrica utilizada para medir..., para notas dada para esse Bootcamp. Sendo utilizado também as técnicas de Natural Language Processing (NLP) para analisar os sentimentos expressos nos comentários associados às notas.

Para isso, utilizaremos o cálculo do Net Promoter Score (NPS) e a aplicação de IA para analisar sentimentos dos comentários. Este projeto foi realizado em três aulas.

Desenvolvimento:

Na aula 1, criamos um arquivo de Excel no formato CSV com apenas uma planilha contendo duas colunas para ser nossa base de dados e salvamos no **Google Drive**. A primeira coluna referente a **nota**, com as notas que, hipoteticamente, os alunos deram para um Bootcamp qualquer da DIO, e a segunda coluna nomeada de **comentario** com os comentários que os alunos deram para esse mesmo Bootcamp.
Utilizamos a linguagem de programação **Python** no nosso ambiente de desenvolvimento **Google Colab** para escrever nosso script de código. 
Começamos o código utilizando a biblioteca **gdown** para baixar a base de dados para a pasta **/content** do sistema de arquivos no **Google Colab**.
Através da biblioteca Pandas lemos o arquivo de CSV em um Dataframe e o resultado da exibição é mostrado na imagem 01.

![Imagem01](/img/img01)

A partir da criação do Dataframe realizamos o cálculo do **Net Promoter Score (NPS)**. O NPS é uma métrica utilizada para medir a experiência do cliente e prever o crescimento dos negócios. Ela fornece uma escala de 0 a 10 para determinar quem são os clientes Detratores (pontuação de 0 a 6), os Passivos (pontuação de 7 a 8), e os Promotores (pontuação de 9 a 10). Feito a determinação, a métrica utiliza a fórmula **NPS = % Promotores - % Detratores** para cálculo do NPS.

Faremos três blocos de códigos com o mesmo processo, porém utilizando três paradigmas de programação diferentes. O primeiro paradigma utilizado é o **Paradigma Imperativo**, onde a implementação é realizada de uma maneira imperativa, ou seja, os comandos são executados sequencialmente. O segundo paradigma utilizado é o **Paradigma Funcional**, no qual criamos uma função para encapsular a lógica de cálculo do NPS apresentando uma separação de responsabilidades mais claras do que a versão imperativa, além de melhorias de código pontuais. Já o terceiro paradigma é o **Paradigma Orientado a Objetos (POO)**, neste, duas classes são definidas 


## Dia 1: [Conheça o Google Colab e o Projeto Desta Dev Week](https://www.youtube.com/live/59XwC5e8U1k?feature=share)

Vamos mergulhar no Google Colab, aprendendo como ele pode ser usado para automatizar tarefas cotidianas, principalmente através da manipulação de planilhas. Além disso, você aprenderá na prática o conceito do Net Promoter Score (NPS), uma métrica fundamental para entender a satisfação do cliente.

## Dia 2: [Desvendando o Poder dos Seus Dados com Python](https://www.youtube.com/live/2Y59NEO9KU4?feature=share)

No segundo dia, vamos conectar nosso Google Colab ao Google Drive, extrair dados do NPS e aplicar as técnicas de ETL (Extração, Transformação e Carregamento) nesses dados. Com a ajuda da biblioteca matplotlib, criaremos gráficos para visualizar e compreender o nível de satisfação dos nossos usuários.

## Dia 3: [Decifrando Sentimentos com Inteligência Artificial (IA)](https://www.youtube.com/live/wj9tVSWVzOM?feature=share)

No último dia, vamos utilizar as técnicas de Processamento de Linguagem Natural (PLN) para analisar os sentimentos expressos nos comentários associados às notas de NPS. Dessa forma, teremos uma perspectiva qualitativa que complementa nossos dados quantitativos.
