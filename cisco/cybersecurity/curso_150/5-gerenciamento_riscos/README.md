# Gerenciamento de Ameaças Cibernéticas - Módulo 5   <img src="../0-aux/logo_course.png" alt="curso_150" width="auto" height="45">

### Repository: [course](../../../../)
### Platform: <a href="../../../">cisco   <img src="https://github.com/PedroHeeger/my_tech_journey/blob/main/platforms/img/cisco.png" alt="cisco" width="auto" height="25"></a>
### Software/Subject: <a href="../../">cybersecurity   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/content/cybersecurity.jpg" alt="cybersecurity" width="auto" height="25"></a>
### Course: <a href="../">curso_150 (Gerenciamento de Ameaças Cibernéticas)   <img src="../0-aux/logo_course.png" alt="curso_150" width="auto" height="25"></a>
### Module: 5. Gerenciamento de Riscos e Controles de Segurança

---

### Theme:
- Cybersecurity

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

---

### Course Module 5 Structure:
5. <a href="item05">Gerenciamento de Riscos e Controles de Segurança</a><br>
  5.1 <a href="#item05.01">Introdução</a><br>
  5.2 <a href="#item05.02">Gerenciamento de risco</a><br>
  5.3 <a href="#item05.03">Avaliação de risco</a><br>
  5.4 <a href="#item05.04">Controles de segurança</a><br>
  5.5 <a href="#item05.05">Resumo de Gerenciamento de riscos e controles de segurança</a><br>

---

### Objective:
O objetivo desse curso foi apresentar o software **PowerShell**, introduzindo o básico sobre essa ferramenta.

### Folder Structure:
- [README.md](./README.md): Este documento de README, escrito em **Markdown**, descrevendo todo conteúdo realizado neste módulo.
- [0-aux](../0-aux/): Pasta auxiliar com imagens utilizadas na construção dos arquivos de README desse curso.

### Development:

<a name="item05.01"><h4>5.1 Introdução</h4></a>[Back to summary](#item05)

⚖️ Gerenciamento de Riscos   
O gerenciamento de riscos é o processo de identificar, avaliar e tratar riscos que podem afetar a organização. Ele envolve reconhecer vulnerabilidades, ameaças e possíveis impactos nos sistemas, processos e ativos de uma empresa. O objetivo é aplicar controles de segurança adequados e ações administrativas para proteger os recursos críticos de forma eficiente.

📊 Cálculo de Riscos   
O cálculo de riscos permite quantificar o nível de ameaça a partir da combinação de probabilidade e impacto. Essa avaliação pode ser feita de forma qualitativa, atribuindo categorias como baixo, médio e alto, ou quantitativa, utilizando métricas numéricas que medem a gravidade de cada risco. O resultado orienta quais riscos exigem atenção prioritária e quais podem ser monitorados.

🛡️ Avaliação de Controles de Segurança   
Após identificar e calcular os riscos, é necessário avaliar os controles de segurança existentes ou planejados. Esses controles devem ser compatíveis com as características da organização, considerando fatores como o tamanho da empresa, o setor de atuação, os recursos disponíveis e a criticidade dos ativos. A adequação dos controles garante que os riscos sejam mitigados de maneira proporcional e eficaz.

<a name="item05.02"><h4>5.2 Gerenciamento de risco</h4></a>[Back to summary](#item05)

⚠️ Conceito de Risco   
Risco é a probabilidade de perda causada por uma ameaça, seja um ato mal-intencionado ou um evento inesperado que comprometa os sistemas de informação ou ativos da empresa. O impacto está relacionado ao dano resultante, como perda de ativos ou interrupção de serviços. O gerenciamento de riscos busca reduzir essas ameaças a um nível aceitável, aplicando controles para manter esse equilíbrio.

📈 Níveis de Risco   
- Alto Risco: Nenhuma ação ou controle é aplicado, deixando a organização exposta a ameaças críticas que podem gerar consequências catastróficas.
- Baixo Risco: O devido cuidado é exercido, reduzindo parte da ameaça, embora ainda haja possibilidade de perdas.
- Risco Aceitável: Envolve due diligence, isto é, medidas razoáveis que minimizam significativamente as ameaças. Alguns riscos permanecem, mas são controlados.

🌐 Origem e Consciência de Riscos   
Os riscos podem ser internos, externos ou ambos, e seus impactos podem se estender a toda a empresa e até a entidades externas. Incentivar a conscientização dos riscos entre os funcionários fortalece a compreensão coletiva sobre quais riscos existem, seus possíveis impactos e como devem ser gerenciados.

🔄 Processo de Gerenciamento de Riscos   
O gerenciamento de riscos é formal e contínuo, buscando equilibrar o impacto de uma ameaça e o custo de implementar controles. Nenhum risco pode ser totalmente eliminado, mas todos podem ser ajustados para níveis aceitáveis. As etapas principais são:
- Enquadrar o risco: Identificação das ameaças que aumentam o risco, como falhas de processos, interrupções de serviço, ataques, danos à reputação, responsabilidades legais ou perda de propriedade intelectual.
- Avaliar o risco: Analisar a gravidade das ameaças, priorizando-as pelo impacto financeiro (quantitativo) ou pelo efeito operacional (qualitativo).
- Responder ao risco: Desenvolver planos de ação que podem mitigar, transferir ou aceitar riscos, conforme sua criticidade.
- Monitorar o risco: Revisar continuamente os controles aplicados e acompanhar os riscos aceitos. Para isso, pode ser usado um registro de riscos, que documenta ameaças, controles adotados e estratégias de resposta.

<a name="item05.03"><h4>5.3 Avaliação de risco</h4></a>[Back to summary](#item05)

⚠️ Ameaça   
Uma ameaça é o potencial de que uma vulnerabilidade seja explorada. O vetor de ameaça é o caminho usado por um invasor para atingir o alvo.

🔎 Fontes de ameaça   
- Adversarial: Pessoas, grupos, organizações ou nações.
- Acidental: Ações sem intenção maliciosa.
- Estrutural: Falhas em software ou equipamentos.
- Ambiental: Desastres naturais ou provocados pelo homem.

📊 Avaliação do Risco   
O risco pode ser classificado em diferentes níveis:
- Alto: Mede a magnitude do impacto, que pode variar de insignificante a catastrófico.
- Baixo: Difícil estimar a probabilidade de ataque humano, pois envolve avaliar motivação, habilidade, oportunidade e tamanho da ameaça.
- Aceitável: Considera fatores como facilidade de descoberta, capacidade de exploração, reconhecimento e detecção de intrusão. Usa estimativas e dados históricos para maior precisão.

🎯 Objetivos da Análise de Risco   
- Identificar ativos e seu valor.
- Identificar vulnerabilidades e ameaças.
- Quantificar probabilidade e impacto das ameaças.
- Equilibrar o custo da contramedida em relação ao impacto da ameaça.

🧮 Análise Quantitativa   
Atribui valores numéricos ao processo de análise de risco.
- Valor do Ativo: Custo de reposição ou receita gerada.
- EF (Fator de Exposição): Percentual de perda em caso de ameaça.
- SLE (Perda Única Esperada): Valor do ativo × EF.
- ARO (Taxa Anual de Ocorrência): Probabilidade de perda em 1 ano, podendo ser maior que 100%.
- ALE (Expectativa de Perda Anual): SLE × ARO, indicando quanto a empresa pode gastar para proteger o ativo.

📐 Análise Qualitativa   
Baseia-se em cenários e opiniões, relacionando a probabilidade de ocorrência de uma ameaça com seu impacto. A matriz de risco ou mapa de calor é usada para priorizar ameaças e orientar a resposta da empresa.

🛡️ Estratégias de Mitigação   
A mitigação busca reduzir a gravidade da perda ou a probabilidade de ocorrência.
- Aceitar: Criar planos de contingência e assumir o risco no curto prazo.
- Reduzir: Implementar controles como firewalls, patches, permissões e atualizações.
- Evitar: Alterar a abordagem para eliminar totalmente o risco.
- Transferir: Utilizar seguros, terceirização ou contratação de especialistas.

<a name="item05.04"><h4>5.4 Controles de segurança</h4></a>[Back to summary](#item05)

⚠️ Risco Inerente   
O risco inerente é aquele que um sistema apresenta naturalmente, antes da aplicação de qualquer controle de segurança relacionado a pessoas, processos ou tecnologias.

🛡️ Controles de Segurança   
Os controles de segurança são medidas adotadas para evitar, detectar, reduzir ou corrigir riscos aos ativos da empresa. Eles podem ser classificados em três tipos principais:
- Administrativos: Procedimentos e políticas que definem como lidar com informações sensíveis e determinam o comportamento esperado das pessoas.
- Técnicos: Recursos de hardware ou software que atuam diretamente na proteção contra riscos.
- Físicos: Barreiras e mecanismos, como cercas, fechaduras e sistemas de vigilância, que impedem acesso não autorizado a instalações e recursos.

O uso adequado de uma salvaguarda ou contramedida é determinado pela necessidade e pelo objetivo específico de proteção.

🚧 Controles por Função   
Além da classificação, os controles podem ser entendidos de acordo com a função que desempenham:
- Preventivos: Evitam atividades indesejadas ou limitam ações de usuários. Exemplos incluem firewalls e restrições de privilégios.
- Dissuassivos: Buscam desencorajar ações maliciosas, como políticas de acesso e avisos de monitoramento.
- Detetivos: Identificam violações ou atividades suspeitas após sua ocorrência, como sistemas de detecção de intrusão.
- Corretivos: Restauram a integridade e a disponibilidade dos sistemas após incidentes, incluindo antivírus, alarmes e planos de continuidade de negócios.
- De Recuperação: Reconstroem recursos e funções após falhas ou violações, por meio de backups, clusters de servidores ou sistemas tolerantes a falhas.
- Compensatórios: Substituem ou complementam controles ausentes, oferecendo alternativas viáveis, como monitoramento reforçado ou políticas de supervisão.

🌐 Conformidade e CIS Controls   
O Center for Internet Security (CIS) mantém um conjunto de 18 controles essenciais que podem ser mapeados para normas e estruturas de conformidade reconhecidas, como PCI DSS, NIST Cybersecurity Framework, HIPAA, GDPR e ISO/IEC 27001. Esse mapeamento auxilia profissionais de segurança a alinhar práticas internas com requisitos regulatórios. Além disso, os membros do CIS têm acesso à ferramenta CIS-CAT Pro, que apoia a avaliação da conformidade e fornece recomendações práticas para implementar os controles de acordo com cada estrutura regulatória.

<a name="item05.05"><h4>5.5 Resumo de Gerenciamento de riscos e controles de segurança</h4></a>[Back to summary](#item05)

⚠️ Conceito de Risco   
Risco é a probabilidade de perda causada por uma ameaça, seja um ato mal-intencionado ou um evento inesperado, que compromete sistemas de informação ou ativos organizacionais. O impacto do risco está relacionado ao dano gerado, como a perda de ativos ou a interrupção de serviços. O objetivo do gerenciamento de riscos é reduzir essas ameaças a níveis aceitáveis e manter esse equilíbrio por meio de controles adequados. O risco pode ser interno, externo ou ambos, podendo afetar não apenas a empresa, mas também entidades externas conectadas a ela.

🔎 Avaliação de Ameaças e Riscos   
A avaliação de ameaças é o ponto de partida da avaliação de riscos. Uma ameaça representa o potencial de exploração de uma vulnerabilidade, enquanto o vetor de ameaça é o caminho utilizado pelo invasor para atingir o alvo. As fontes de ameaça podem ser:
- Adversariais: provenientes de indivíduos, grupos ou nações.
- Acidentais: decorrentes de erros sem intenção maliciosa.
- Estruturais: falhas em equipamentos ou softwares.
- Ambientais: desastres naturais ou causados pelo homem.

Essas ameaças podem ser internas ou externas. Durante a avaliação, a organização classifica o risco em baixo, aceitável ou alto.

📊 Análise de Riscos   
Uma análise de risco possui quatro objetivos principais:
- Identificar ativos e seu valor.
- Identificar vulnerabilidades e ameaças.
- Quantificar a probabilidade e o impacto das ameaças.
- Equilibrar o impacto da ameaça em relação ao custo da contramedida.

Na análise quantitativa, números e fórmulas são aplicados considerando fatores como valor do ativo, fator de exposição, expectativa de perda única (SLE), taxa anualizada de ocorrência (ARO) e expectativa de perda anual (ALE). Já a análise qualitativa usa opiniões e cenários para avaliar a probabilidade e o impacto de uma ameaça. Nesse contexto, a matriz de riscos ou mapa de calor é uma ferramenta útil para priorizar riscos e definir respostas.

🛠️ Mitigação de Riscos   
A mitigação deve buscar o equilíbrio entre custos de contramedidas e benefícios da redução de riscos. Entre as estratégias possíveis estão:
- Aceitar o risco e reavaliar periodicamente.
- Reduzir o risco por meio da implementação de controles.
- Evitar o risco alterando completamente a abordagem.
- Transferir o risco para terceiros, como por meio de seguros ou terceirizações.

🛡️ Controles de Segurança   
Os controles de segurança são contramedidas aplicadas para proteger os ativos da empresa. Podem ser classificados em:
- Administrativos: políticas e procedimentos que orientam o comportamento humano em relação a informações sensíveis.
- Técnicos: recursos de hardware e software aplicados para reduzir riscos.
- Físicos: barreiras físicas, como cercas, bloqueios e mecanismos de segurança em instalações.

Além disso, existem controles funcionais, que são aplicados de acordo com o papel desempenhado:
- Preventivos: impedem atividades indesejadas e restringem ações não autorizadas.
- Dissuassivos: desencorajam tentativas de ataque ou acesso indevido.
- Detetivos: identificam atividades suspeitas ou violações de segurança após sua ocorrência.
- Corretivos: restauram os sistemas após um incidente, garantindo a confidencialidade, integridade e disponibilidade.
- De Recuperação: reconstroem recursos e capacidades após uma violação ou falha grave.
- Compensatórios: oferecem alternativas ou complementos quando o controle ideal não pode ser aplicado.