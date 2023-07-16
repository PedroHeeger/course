# Dev Week - Ifood Ciência de Dados com Python   <img src="./0-aux/dev_week.png" alt="curso_066" width="auto" height="45">

### Repository: [course](../../../)   
### Platform: <a href="../../">dio   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/plataforma/dio.jpeg" alt="dio" width="auto" height="25"></a>   
### Software/Subject: <a href="../">python   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" alt="python" width="auto" height="25"></a>
### Course: <a href="./">curso_066 (Dev Week - Ifood Ciência de Dados com Python)   <img src="./0-aux/dev_week.png" alt="curso_066" width="auto" height="25"></a>

---

### Theme:
- Data Science
- Artificial Intelligence (AI)

### Used Tools:
- Programming Language: 
  - Python   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" alt="python" width="auto" height="25">
- Integrated Development Environment (IDE):
  - Google Colab   <img src="../../../0-outros/logos/software/google_colab.png" alt="google_colab" width="auto" height="25">
  - VS Code   <img src="../../../0-outros/logos/software/vscode.png" alt="vscode" width="auto" height="25">
- Versioning: 
  - Git   <img src="../../../0-outros/logos/software/git.png" alt="git" width="auto" height="25">
- Repository:
  - GitHub   <img src="../../../0-outros/logos/software/github.png" alt="github" width="auto" height="25">
- Library: 
  - Gdown   <img src="../../../0-outros/logos/software/google_drive.png" alt="gdown" width="auto" height="25">
  - Matplotlib   <img src="../../../0-outros/logos/software/matplotlib.png" alt="matplotlib" width="auto" height="25">
  - Pandas   <img src="../../../0-outros/logos/software/pandas.png" alt="pandas" width="auto" height="25">
  - Openai   <img src="../../../0-outros/logos/software/openai.png" alt="openai" width="auto" height="25">
- Others:
  - Google Drive <img src="../../../0-outros/logos/software/google_drive.png" alt="google_drive" width="auto" height="25">
  - Excel <img src="../../../0-outros/logos/software/microsoft_excel.png" alt="microsoft_excel" width="auto" height="25">
  - ChatGPT <img src="../../../0-outros/logos/software/chatgpt.png" alt="chat_gpt" width="auto" height="25">

---

### Objective:
- O objetivo desse projeto prático é analisar a satisfação dos feedbacks dos talentos da DIO em relação a um Bootcamp qualquer (cujo os dados foram gerados hipoteticamente apenas para fins didáticos). Essa análise é feita através do o cálculo do Net Promoter Score (NPS), uma métrica utilizada para medir a experiência do cliente e prever o crescimento dos negócios, para notas dada para esse Bootcamp. Sendo utilizado também as técnicas de Natural Language Processing (NLP) para analisar os sentimentos expressos nos comentários associados às notas.

### Structure:
- A estrutura é composta por apenas um arquivo de script em Jupyter Notebook (**curso_066.ipynb**), utilizado para executar os códigos; um arquivo de Excel em CSV (**feedbacks.csv**), que é a base de dados; este arquivo de README e uma pasta contendo algumas imagens auxilares utilizadas nesse arquivo de README. A estrutura é exibida na imagem 01.

<div align="Center"><figure>
    <img src=".//img/img01.PNG" alt="img01"><br>
    <figcaption>Imagem 01.</figcaption>
</figure></div><br>

### Development:
Este projeto foi realizado em três aulas. 

  - #### Class 01:
    Na aula 1, foi criado um arquivo de Excel no formato CSV com apenas uma planilha contendo duas colunas para ser nossa base de dados e salvamos no **Google Drive**. A primeira coluna referente a **nota**, com as notas que, hipoteticamente, os alunos deram para um Bootcamp qualquer da DIO, e a segunda coluna nomeada de **comentario** com os comentários que os alunos deram para esse mesmo Bootcamp.

    Utilizei a linguagem de programação **Python** no nosso ambiente de desenvolvimento **Google Colab** para escrever nosso arquivo de script em Jupyter Notebook. Iniciei o código utilizando a biblioteca **gdown** para baixar a base de dados para a pasta **/content** do sistema de arquivos no **Google Colab**. Através da biblioteca Pandas foi realizado a leitura do arquivo em CSV para um Dataframe e o output é mostrado na imagem 02.

    <div align="Center"><figure>
      <img src=".//img/img02.PNG" alt="img02"><br>
      <figcaption>Imagem 02.</figcaption>
    </figure></div><br>

    A partir da criação do Dataframe realizei o cálculo do **Net Promoter Score (NPS)**. O NPS é uma métrica utilizada para medir a experiência do cliente e prever o crescimento dos negócios. Ela fornece uma escala de 0 a 10 para determinar quem são os clientes Detratores (pontuação de 0 a 6), os Passivos (pontuação de 7 a 8), e os Promotores (pontuação de 9 a 10). A determinação é feita contando a quantidade de clientes Detratores e Promotores e calculando quanto porcento eles representam da quantidade total de notas, descartando os clientes Passivos. Feito a determinação, a métrica utiliza a fórmula **NPS = % Promotores - % Detratores** para cálculo do NPS.

    Construí três blocos de códigos com o mesmo processo, para cada bloco foi utilizando três paradigmas de programação diferentes. O primeiro paradigma utilizado, como apresentado na imagem 03, é o **Paradigma Imperativo**, onde a implementação é realizada de uma maneira imperativa, ou seja, os comandos são executados sequencialmente. 

      ```python
      # Selecionando apenas a coluna de nota do Dataframe
      notas = dados['nota']

      detratores = 0
      promotores = 0

      # Percorrendo a coluna de nota do Dataframe, verificando quantos são os Promotores e os Detratores
      for nota in notas:
        if nota >= 9:
          promotores += 1
        elif nota <= 6:
          detratores += 1

      # Calculando o NPS 
      nps = (promotores - detratores) / len(notas) * 100

      print(nps)
    ```

    O segundo paradigma utilizado é o **Paradigma Funcional**, no qual criamos uma função para encapsular a lógica de cálculo do NPS apresentando uma separação de responsabilidades mais claras do que a versão imperativa, além de melhorias de código pontuais. 

      ```python
      import pandas as pd

      # Criando uma função que contabiliza, de formas diferentes, a quantidade de Promotores e Detratores
      def calcular_nps(notas):
        detratores = notas.apply(lambda nota: nota <= 6).sum()
        promotores = notas[notas >= 9].count()

        # Retornando o cálculo do NPS
        return (promotores - detratores) / len(notas) * 100

      # Selecionando apenas a coluna de nota do Dataframe
      notas = dados['nota']

      # Chamando a função para calcular o NPS
      nps = calcular_nps(notas)

      print(nps)
      ```

    Já o terceiro paradigma é o **Paradigma Orientado a Objetos (POO)**, neste, duas classes são definidas, onde **Feedback** representa um único feedback de usuário e **AnalisadorFeedback** é utilizado para o cálculo do NPS a partir de uma lista de Feedbacks. A POO fornece uma abstração mais clara dos dados e comportamentos envolvidos no cálculo do NPS.

      ```python
      # Criando a classe Feedback que conterá a nota e o comentário da base de dados
      class Feedback:
        def __init__(self, nota, comentario):
          self.nota = nota
          self.comentario = comentario

      # Criando a classe AnalisadorFeedback que conterá o feedback
      class AnalisadorFeedback:
        def __init__(self, feedbacks):
          self.feedbacks = feedbacks

        # Criando uma função que contabiliza a quantidade de Promotores e Detratores
        def calcular_nps(self):
          # Por ser uma lista do Python, aplicamos o conceito de "list comprehension" para filtrar nossos Feedbacks.
          detratores = sum(1 for feedback in self.feedbacks if feedback.nota <= 6)
          promotores = sum(1 for feedback in self.feedbacks if feedback.nota >= 9)

          # Calculando o NPS e retornando
          nps = (promotores - detratores) / len(self.feedbacks) * 100
          return nps

      # Passando a nota e o comentário da base de dados para Classe Feedback com uma função Lambda
      feedbacks = dados.apply(lambda linha: Feedback(linha['nota'], linha['comentario']), axis=1)

      # Outra forma de realizar a mesma execução de cima
      # feedbacks = [Feedback(linha['nota'], linha['comentario']) for i, linha in dados.iterrows()]

      # Passando para Classe AnalisadorFeedback os feedbacks que são a nota e o comentário
      analisador = AnalisadorFeedback(feedbacks)

      # Chamando a função para calcular o NPS 
      nps = analisador.calcular_nps()

      print(nps)
      ```

  - #### Class 02:
    Nesta aula com o uso do módulo **pyplot** da biblioteca **matplotlib** foi construído um gráfico de colunas para determinar as zonas do NPS. Dividi o gráfico em quatro zonas: Crítico, Aperfeiçoamento, Qualidade e Excelência, cada zona com uma cor e uma faixa de valores no eixo X. Em seguida, inseri o valor calculado do NPS no gráfico e configurei o layout. Com o uso do módulo **patches** construí e inseri a legenda no gráfico. O resultado é exibido na imagem 03.

      ```python
      import matplotlib.pyplot as plt
      import matplotlib.patches as mpatches

      # Definindo as constantes que usaremos para visualizar o valor do NPS calculado em um gráfico
      NPS_ZONAS = ['Crítico', 'Aperfeiçoamento', 'Qualidade', 'Excelência']
      NPS_VALORES = [-100, 0, 50, 75, 100]
      NPS_CORES = ['#FF595E', '#FFCA3A', '#8AC926', '#1982C4']

      # Criando uma função que constrói um gráfico
      def criar_grafico_nps(nps):
        fig, ax = plt.subplots(figsize=(10, 2))

        # Percorrendo a constante com as zonas, definindo os seus valores mínimos e máximos no eixo X e suas cores
        for i, zona in enumerate(NPS_ZONAS):
          ax.barh([0], width=NPS_VALORES[i+1]-NPS_VALORES[i], left=NPS_VALORES[i], color=NPS_CORES[i])

        # Definindo o posicionamento do NPS no gráfico, exibindo seu valor
        ax.barh([0], width=0.5, left=nps, color='black')

        # Removendo o eixo Y; Delimitando os limites do eixo X; e Exibindo os limites de cada zona
        ax.set_yticks([])
        ax.set_xlim(-100, 100)
        ax.set_xticks(NPS_VALORES)
        
        # Formatando o texto do valor do NPS calculado
        plt.text(nps, 0, f'{nps: .2f}', ha='center', va='center', color='white', bbox=dict(facecolor='black'))

        # Construindo a legenda, definindo os rótulos e as cores
        patches = [mpatches.Patch(color=NPS_CORES[i], label=NPS_ZONAS[i]) for i in range(len(NPS_ZONAS))]
        plt.legend(handles=patches, bbox_to_anchor=(1,1))

        plt.show()

      # Chamando a função e passando o valor do NPS calculado para ela
      criar_grafico_nps(nps)
      ```
    
    <div align="Center"><figure>
      <img src=".//img/img03.PNG" alt="img03"><br>
      <figcaption>Imagem 03.</figcaption>
    </figure></div><br>

  - #### Class 03:
    Na última aula, utilizei a biblioteca **openai** e configurei uma API Key na minha conta do site da [OpenAI](https://platform.openai.com/account/api-keys) para integrar com o ChatGPT. Criei uma função que utiliza os feedbacks da base de dados formatando as duas colunas para um padrão (nota-comentario). Em seguida construí uma variável para armazenar o prompt que o GPT irá executar. Com os feedbacks formatados e o prompt estabelecido, criei uma consulta e passei essas informações para o ChatGPT realizar uma análise de sentimento com base nessas informações, e pedi para ele classificar o feedback formatado em Positivo, Neutro ou Negativo. Realizei esse mesmo processo, retirando as notas do feedback, mantendo apenas o comentário.

      ```python
      import openai

      # Passando a chave da API da conta no site da OpenAi
      openai.api_key = openai_api_key

      # Criando uma função para analisar os sentimentos dos feedbacks e classificá-los
      def analisar_sentimentos(feedbacks):

        # Padronizado o formato dos feedbacks
        comentarios_formatados = "\n".join([f"- Nota {feedback.nota}! {feedback.comentario}" for feedback in feedbacks])
        # print(comentarios_formatados)

        # Criando um prompt para ser executado pela API do ChatGPT
        prompt = f"""
                  Analise os seguintes comentários e os classifique em Positivo, Neutro e Negativo:
                  {comentarios_formatados}"""

        # Criando a consulta para o ChatGPT passando os feedbacks padronizados e o prompt definido
        completion = openai.ChatCompletion.create(
          # model="gpt-4",
          model="gpt-3.5-turbo",
          max_tokens = 20,
          messages=[
          {
              "role": "system", 
              "content": "Você é um modelo de análise de sentimentos com foco em feedbacks sobre experiências educacionais."
          },
          {
              "role": "user", 
              "content": prompt
          }
          ]
        )

        # Retornando a resposta da consulta
        return completion.choices[0].message.content

      # Chamando a função para executar a análise de sentimentos dos feedbacks
      insigths = analisar_sentimentos(feedbacks)
      print(insigths)
      ```
