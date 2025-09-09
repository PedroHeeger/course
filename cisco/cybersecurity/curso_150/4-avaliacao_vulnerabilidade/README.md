# Gerenciamento de Ameaças Cibernéticas - Módulo 4   <img src="../0-aux/logo_course.png" alt="curso_150" width="auto" height="45">

### Repository: [course](../../../../)
### Platform: <a href="../../../">cisco   <img src="https://github.com/PedroHeeger/my_tech_journey/blob/main/platforms/img/cisco.png" alt="cisco" width="auto" height="25"></a>
### Software/Subject: <a href="../../">cybersecurity   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/content/cybersecurity.jpg" alt="cybersecurity" width="auto" height="25"></a>
### Course: <a href="../">curso_150 (Gerenciamento de Ameaças Cibernéticas)   <img src="../0-aux/logo_course.png" alt="curso_150" width="auto" height="25"></a>
### Module: 4. Avaliação de Vulnerabilidade de Endpoint

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

### Course Module 4 Structure:
4. <a href="#item04">Avaliação de Vulnerabilidade de Endpoint</a><br>
  4.1 <a href="#item04.01">Introdução</a><br>
  4.2 <a href="#item04.02">Perfil de rede e servidor</a><br>
  4.3 <a href="#item04.03">Sistema de pontuação de vulnerabilidade comum (CVSS)</a><br>
  4.4 <a href="#item04.04">Gerenciamento seguro de dispositivos</a><br>
  4.5 <a href="#item04.05">Resumo da avaliação de vulnerabilidade de endpoint</a><br>

---

### Objective:
O objetivo desse curso foi apresentar o software **PowerShell**, introduzindo o básico sobre essa ferramenta.

### Folder Structure:
- [README.md](./README.md): Este documento de README, escrito em **Markdown**, descrevendo todo conteúdo realizado neste módulo.
- [0-aux](../0-aux/): Pasta auxiliar com imagens utilizadas na construção dos arquivos de README desse curso.

### Development:

<a name="item04.01"><h4>4.1 Introdução</h4></a>[Back to summary](#item04)

💰 Investimento em Segurança Cibernética   
Uma das principais questões das organizações é quanto gastar em segurança de rede e operações cibernéticas. A resposta vem da avaliação de risco e vulnerabilidade, que orienta quanto esforço e recursos devem ser aplicados para proteger redes e dados.

🔎 Avaliação de Vulnerabilidades   
Analistas de segurança usam diversas ferramentas para realizar avaliações de vulnerabilidade. Esse processo envolve criar perfis de rede e de dispositivos, que servem como linha de base para identificar desvios do comportamento normal. Perfis de servidores também são criados para definir estados operacionais aceitos e monitorar possíveis alterações suspeitas.

📊 CVSS – Common Vulnerability Scoring System   
As organizações utilizam o CVSS para calcular o nível de risco de uma vulnerabilidade, considerando várias métricas. Esses relatórios ajudam a classificar vulnerabilidades de acordo com seu impacto e urgência, facilitando a priorização de ações de correção.

⚖️ Gerenciamento de Risco   
Com base na avaliação de vulnerabilidades e nos resultados do CVSS, as organizações aplicam técnicas de gerenciamento de risco para selecionar e implementar controles de segurança adequados.

🏢 ISMS – Information Security Management System   
O Sistema de Gerenciamento de Segurança da Informação (ISMS) é usado para identificar, analisar e tratar riscos de segurança. Ele garante que processos e políticas estejam alinhados para proteger dados e ativos organizacionais de forma contínua.

<a name="item04.02"><h4>4.2 Perfil de rede e servidor</h4></a>[Back to summary](#item04)

📊 Perfis de Rede e Linha de Base   
Para detectar incidentes de segurança, é essencial conhecer o comportamento normal da rede. A criação de perfis de rede, dispositivos e servidores estabelece uma linha de base estatística que serve de referência. Qualquer desvio significativo pode indicar comprometimento. É importante capturar dados atualizados e representativos. Por exemplo, picos de tráfego durante backups devem ser considerados normais, mas acessos externos a servidores já migrados para a nuvem não. A técnica de janela deslizante ajuda a filtrar períodos relevantes, mantendo a linha de base precisa ao longo do tempo.

🚨 Identificação de Anomalias   
Mudanças inesperadas, como aumento de tráfego WAN, conexões com servidores obscuros, uso de protocolos incomuns ou comunicação excessiva entre hosts, podem indicar ataques. Ferramentas como NetFlow e Wireshark auxiliam na caracterização do tráfego normal. Além disso, alterações no comportamento de usuários detectadas por sistemas AAA, logs de servidores ou plataformas como o Cisco ISE também podem revelar contas comprometidas.

🖥️ Perfis de Servidores   
Um perfil de servidor define o estado operacional aceito de um servidor. Ele inclui:
- Portas de escuta: especificam quais serviços podem se comunicar pela rede (ex.: HTTP, HTTPS, SSH).
- Usuários e contas: indicam quais perfis de acesso estão autorizados a interagir com o servidor.
- Contas de serviço: definem os usuários usados exclusivamente por aplicativos ou processos internos.
- Ambiente de software: lista os programas, processos e tarefas que devem estar instalados e ativos.

Esse perfil ajuda a identificar atividades suspeitas em servidores críticos.

🤖 Análise de Comportamento de Rede (NBA)   
A NBA aplica técnicas de big data, estatística e machine learning para comparar a linha de base com o desempenho atual da rede. Desvios podem indicar ataques, worms em varredura ou movimentação lateral de malware. Além da análise comportamental, existem métodos baseados em regras, que verificam pacotes de acordo com padrões predefinidos de ataques.

🧪 Testes de Segurança Essenciais   
Como organizações estão conectadas à internet e expostas a riscos constantes, testes periódicos são fundamentais:
- Análise de Risco: avalia a probabilidade e impacto de ataques em ativos críticos, identificando agentes de ameaça prováveis.
    - Ferramentas: frameworks de gestão de risco, consultores internos/externos.
- Avaliação de Vulnerabilidades: usa softwares para identificar falhas como patches ausentes, portas abertas ou serviços inseguros.
    - Ferramentas: OpenVAS, Nessus, Qualys, Nmap, Microsoft Baseline Analyzer, FireEye Mandiant.
- Testes de Penetração (Pen Test): simulam ataques reais para verificar até onde um invasor poderia ir. Exploram vulnerabilidades de fato, mostrando o impacto de uma invasão.
    - Ferramentas: Metasploit, CORE Impact, hackers éticos.

<a name="item04.03"><h4>4.3 Sistema de pontuação de vulnerabilidade comum (CVSS)</h4></a>[Back to summary](#item04)

📌 O que é o CVSS   
O Common Vulnerability Scoring System (CVSS) é um padrão utilizado para avaliar o risco e a gravidade de vulnerabilidades em sistemas de hardware e software. Ele fornece uma pontuação numérica que ajuda a determinar a urgência da correção e a priorizar recursos de segurança. A versão mais recente, CVSS 3.1, lançada em 2019 e mantida pelo FIRST (Forum of Incident Response and Security Teams), foi desenvolvida em conjunto com empresas como a Cisco e tornou-se referência global no setor.

Os benefícios do CVSS incluem:
- Fornecer pontuações padronizadas de vulnerabilidade, comparáveis entre organizações.
- Utilizar uma estrutura aberta e transparente, permitindo que qualquer usuário compreenda as métricas.
- Ajudar na priorização do risco de forma significativa para cada contexto organizacional.

⚙️ Estrutura do CVSS   
O CVSS é baseado em três grupos de métricas:
- Métricas Base: características da vulnerabilidade que não mudam ao longo do tempo. Dividem-se em:
    - Explorabilidade: avalia como a vulnerabilidade pode ser explorada (vetor de ataque, complexidade, privilégios necessários e interação do usuário).
    - Impacto: mede os efeitos na confidencialidade, integridade e disponibilidade (CIA) do sistema afetado.
- Métricas Temporais: refletem como a gravidade muda com o tempo, conforme surgem patches, assinaturas e contramedidas.
- Métricas Ambientais: ajustam a pontuação ao contexto específico de uma organização, considerando impacto em seus próprios ativos e processos.

A avaliação é feita por meio de uma calculadora CVSS, disponível no site do FIRST, que gera uma pontuação e uma string vetorial — um resumo padronizado das métricas escolhidas, facilitando a comparação entre diferentes avaliações.

🔎 Métricas do Grupo Base   
As principais métricas do Grupo Base incluem:
- Vetor de ataque: quanto mais remoto o atacante puder estar (rede, local, físico), maior a gravidade.
- Complexidade do ataque: avalia quantos fatores externos precisam estar presentes para a exploração.
- Privilégios necessários: nível de acesso exigido para explorar a vulnerabilidade.
- Interação do usuário: se a exploração depende de ação do usuário ou não.
- Escopo: indica se a exploração impacta apenas a autoridade inicial ou se se estende a outras.
- Impacto na confidencialidade, integridade e disponibilidade: mede as consequências da exploração sobre cada pilar da tríade CIA.

Essas métricas se combinam para gerar a pontuação base, que pode variar entre 0 e 10, classificada de acordo com os seguintes níveis:
- Nada: 0
- Baixo: 0.1 – 3.9
- Médio: 4.0 – 6.9
- Alto: 7.0 – 8.9
- Crítico: 9.0 – 10.0

Em geral, vulnerabilidades acima de 3.9 devem ser tratadas, com prioridade crescente conforme a gravidade aumenta.

🗂️ Integração com CVE e NVD   
O CVSS trabalha em conjunto com outras bases de dados de vulnerabilidades:
- CVE (Common Vulnerabilities and Exposures): catálogo que fornece identificadores únicos (ex.: CVE-2023-XXXX) para vulnerabilidades conhecidas, permitindo padronização de registros e pesquisas.
- NVD (National Vulnerability Database): mantido pelo NIST (EUA), complementa os identificadores CVE com informações adicionais, como detalhes técnicos, sistemas afetados e a pontuação CVSS correspondente.

Essas fontes, somadas às pontuações do CVSS, permitem uma avaliação mais completa e ajudam organizações a alocar recursos de forma estratégica para mitigar riscos.

<a name="item04.04"><h4>4.4 Gerenciamento seguro de dispositivos</h4></a>[Back to summary](#item04)

📌 Gestão de Riscos   
O gerenciamento de riscos é um processo contínuo e cíclico que envolve a identificação, avaliação, resposta, implementação e monitoramento dos riscos que afetam uma organização ou indivíduos associados a seus sistemas. Ele se baseia na relação entre ameaças, vulnerabilidades e o contexto organizacional, buscando equilibrar proteção e custos.

Segundo o NIST SP 800-30, a avaliação de risco consiste em identificar, estimar e priorizar riscos de segurança da informação, analisando a probabilidade e o impacto de eventos que possam comprometer a organização. Uma etapa importante é o emparelhamento de ameaças e vulnerabilidades (T-V), que gera um perfil de risco inerente usado como linha de base para comparações futuras.

As principais estratégias de resposta ao risco incluem:
- Prevenção: eliminar atividades que geram risco quando o custo supera os benefícios.
- Redução: aplicar medidas que diminuam vulnerabilidades, como atualização de sistemas visados por atacantes.
- Compartilhamento: transferir parte do risco a terceiros, como contratação de serviços de segurança (SECaaS) ou seguros.
- Retenção: aceitar riscos de baixo impacto ou de difícil mitigação.

🔎 Gestão de Vulnerabilidades   
O gerenciamento de vulnerabilidades é uma prática proativa que visa impedir a exploração de falhas conhecidas antes que causem danos. Ele depende de informações de fontes como boletins de fornecedores e CVE, além de análises de impacto para priorizar correções.

O ciclo de vida do gerenciamento de vulnerabilidades envolve:
- Descobrir: inventariar ativos, sistemas e serviços para mapear vulnerabilidades.
- Priorizar ativos: classificar dispositivos e sistemas segundo seu valor para o negócio.
- Avaliar: determinar o perfil de risco básico de acordo com ameaças e vulnerabilidades.
- Relatar: documentar riscos e planos de segurança.
- Reparar: aplicar correções priorizando riscos críticos.
- Verificar: auditar e confirmar a eliminação das falhas.

Esse processo reduz tempo e custos, evitando respostas emergenciais após incidentes.

🖥️ Gestão de Ativos   
Saber quais dispositivos e softwares estão conectados à rede é essencial para a segurança. O gerenciamento de ativos permite identificar equipamentos autorizados, localizar dispositivos não conformes e manter registros detalhados. De acordo com o NISTIR 8011, esse processo inclui:
- Detecção automatizada e inventário dos dispositivos.
- Definição do estado desejado por meio de políticas e planos de segurança.
- Identificação de ativos não conformes.
- Correção ou aceitação dos riscos associados.
- Repetição periódica para manter a rede sob controle.

O gerenciamento de dispositivos móveis (MDM) apresenta desafios adicionais em ambientes BYOD, pois esses dispositivos podem ser perdidos, roubados ou adulterados. Medidas como criptografia, autenticação reforçada e desativação remota são necessárias. Ferramentas como o Cisco Meraki Systems Manager permitem monitoramento e atualização de dispositivos móveis a partir da nuvem.

⚙️ Gestão de Configuração   
A configuração adequada de hardware e software é uma das formas mais eficazes de reduzir riscos. Isso inclui a criação de imagens de linha de base, que padronizam sistemas com softwares essenciais, ferramentas de segurança e políticas de controle. O gerenciamento de configuração também abrange servidores e dispositivos de rede, garantindo integridade nos processos de inicialização, mudança e monitoramento. Ferramentas como Puppet, Chef, Ansible e SaltStack são amplamente utilizadas em ambientes de nuvem e virtualização.

🔧 Gestão de Patches   
O gerenciamento de patches está diretamente ligado à mitigação de vulnerabilidades. Ele envolve identificar, adquirir, instalar e verificar atualizações de software em sistemas operacionais, aplicações e dispositivos de rede. Muitas vezes, aplicar patches é a única maneira de eliminar uma vulnerabilidade. Esse processo é exigido por regulamentações como SOX e HIPAA, sendo essencial para evitar falhas de auditoria e multas.

Existem diferentes abordagens:
- Baseada em agente: cada host executa um agente que identifica e instala patches necessários, muito útil em dispositivos móveis.
- Varredura sem agente: o servidor de gerenciamento varre a rede e aplica patches nos dispositivos detectados.
- Monitoramento passivo de rede: identifica vulnerabilidades analisando tráfego, quando informações de versão estão disponíveis.

Ferramentas como SCCM da Microsoft, SolarWinds e LANDesk oferecem soluções de nível corporativo para gerenciar patches em grande escala.

<a name="item04.05"><h4>4.5 Resumo da avaliação de vulnerabilidade de endpoint</h4></a>[Back to summary](#item04)

🌐 Perfis de Rede e Dispositivos   
A execução de perfis de rede e dispositivos permite gerar estatísticas de linha de base que servem como referência para identificar desvios no comportamento normal. Entre os principais elementos do perfil de rede estão a duração da sessão, a taxa de transferência, as portas utilizadas e o espaço de endereços de ativos críticos. Já o perfil de servidor estabelece o estado operacional aceito, definindo parâmetros de rede, usuários e aplicativos permitidos.

📊 Análise de Dados e Detecção de Anomalias   
O comportamento da rede é descrito por grandes volumes de dados, como características de pacotes, fluxos e telemetria de múltiplas fontes. A análise de Big Data auxilia na detecção de anomalias estatísticas, comportamentais e baseadas em regras, fortalecendo a segurança contra atividades suspeitas.

🛡️ Ferramentas de Avaliação de Segurança   
A segurança de rede pode ser medida de diferentes formas. A análise de risco identifica vulnerabilidades e seus impactos para a organização. A avaliação de vulnerabilidades utiliza softwares especializados para examinar redes internas e servidores expostos. Já o teste de penetração simula ataques autorizados, avaliando a eficácia das defesas implementadas.

📌 Common Vulnerability Scoring System (CVSS)   
O CVSS é um padrão aberto usado para classificar vulnerabilidades por meio de métricas que geram uma pontuação de 0 a 10, associada a níveis qualitativos como nenhum, baixo, médio, alto ou crítico. Esse sistema avalia fatores como vetor de ataque, complexidade, privilégios necessários, interação do usuário e escopo. Métricas temporais e ambientais ajustam o risco para o contexto da organização. Além do CVSS, bases como CVE e NVD são amplamente utilizadas para consulta sobre vulnerabilidades.

⚖️ Gerenciamento de Riscos   
O gerenciamento de riscos envolve a implementação de controles adequados e pode seguir quatro estratégias: evitar riscos interrompendo atividades vulneráveis; reduzir riscos por meio de medidas mitigatórias; compartilhar riscos transferindo responsabilidades ou contratando seguros; e reter riscos quando considerados aceitáveis.

🔍 Gerenciamento de Vulnerabilidades   
Essa prática busca prevenir a exploração de falhas antes que sejam utilizadas por atacantes. O ciclo de vida segue seis etapas: descobrir vulnerabilidades, priorizar ativos, avaliar riscos, relatar resultados, corrigir falhas e verificar a eficácia das ações.

💻 Gerenciamento de Ativos e Dispositivos Móveis   
O gerenciamento de ativos permite controlar dispositivos e softwares conectados à rede, identificando equipamentos autorizados e acessos irregulares. Já o gerenciamento de dispositivos móveis (MDM) é fundamental em ambientes que adotam BYOD, permitindo configurar, monitorar e atualizar remotamente dispositivos variados para reduzir riscos.

⚙️ Gerenciamento de Configuração   
Esse processo garante a integridade de sistemas ao padronizar e controlar configurações de hardware e software. Imagens de linha de base e políticas de segurança ajudam a reduzir a superfície de ataque, mantendo maior consistência entre os sistemas.

🩹 Gerenciamento de Patches   
Relacionada ao gerenciamento de vulnerabilidades, essa prática garante a aplicação de atualizações de software para eliminar falhas conhecidas. Pode ser feita por métodos baseados em agente, sem agente ou por monitoramento passivo de rede. Além de ser uma medida eficaz de segurança, muitas vezes é obrigatória para atender requisitos de conformidade regulatória.