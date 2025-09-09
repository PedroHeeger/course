# Gerenciamento de Ameaças Cibernéticas - Módulo 2   <img src="../0-aux/logo_course.png" alt="curso_150" width="auto" height="45">

### Repository: [course](../../../../)
### Platform: <a href="../../../">cisco   <img src="https://github.com/PedroHeeger/my_tech_journey/blob/main/platforms/img/cisco.png" alt="cisco" width="auto" height="25"></a>
### Software/Subject: <a href="../../">cybersecurity   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/content/cybersecurity.jpg" alt="cybersecurity" width="auto" height="25"></a>
### Course: <a href="../">curso_150 (Gerenciamento de Ameaças Cibernéticas)   <img src="../0-aux/logo_course.png" alt="curso_150" width="auto" height="25"></a>
### Module: 2. Teste de Segurança de Rede

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

### Course Module 2 Structure:
2. <a href="#item02">Teste de Segurança de Rede</a><br>
  2.1 <a href="#item02.01">Introdução</a><br>
  2.2 <a href="#item02.02">Avaliações de segurança</a><br>
  2.3 <a href="#item02.03">Técnicas de teste de segurança</a><br>
  2.4 <a href="#item02.04">Ferramentas de teste de segurança de rede</a><br>
  2.5 <a href="#item02.05">Teste de penetração</a><br>
  2.6 <a href="#item02.06">Resumo de teste de segurança de rede</a><br>
3. <a href="#item03">Inteligência de ameaças</a><br>
  3.1 <a href="#item03.01">Introdução</a><br>
  3.2 <a href="#item03.02">Fontes de informação</a><br>
  3.3 <a href="#item03.03">Serviços de inteligência de ameaças</a><br>
  3.4 <a href="#item03.04">Resumo de Inteligência de Ameaças</a><br>
4. <a href="#item04">Avaliação de vulnerabilidade de endpoint</a><br>
  4.1 <a href="#item04.01">Introdução</a><br>
  4.2 <a href="#item04.02">Perfil de rede e servidor</a><br>
  4.3 <a href="#item04.03">Sistema de pontuação de vulnerabilidade comum (CVSS)</a><br>
  4.4 <a href="#item04.04">Gerenciamento seguro de dispositivos</a><br>
  4.5 <a href="#item04.05">Resumo da avaliação de vulnerabilidade de endpoint</a><br>
5. <a href="#item05">Gerenciamento de riscos e controles de segurança</a><br>
  5.1 <a href="#item05.01">Introdução</a><br>
  5.2 <a href="#item05.02">Gerenciamento de risco</a><br>
  5.3 <a href="#item05.03">Avaliação de risco</a><br>
  5.4 <a href="#item05.04">Controles de segurança</a><br>
  5.5 <a href="#item05.05">Resumo de Gerenciamento de riscos e controles de segurança</a><br>
6. <a href="#item06">Análise forense digital e análise e resposta a incidentes</a><br>
  6.1 <a href="#item06.01">Introdução</a><br>
  6.2 <a href="#item06.02">Manuseio de evidências e atribuição de ataque</a><br>
  6.3 <a href="#item06.03">O Cyber Kill Chain</a><br>
  6.4 <a href="#item06.04">O modelo Diamond de análise de intrusão</a><br>
  6.5 <a href="#item06.05">Resposta a incidentes</a><br>
  6.6 <a href="#item06.06">Recuperação de desastres</a><br>
  6.7 <a href="#item06.07">Análise forense digital e análise de incidentes e resumo de resposta</a><br>

---

### Objective:
O objetivo desse curso foi apresentar o software **PowerShell**, introduzindo o básico sobre essa ferramenta.

### Folder Structure:
- [README.md](./README.md): Este documento de README, escrito em **Markdown**, descrevendo todo conteúdo realizado neste módulo.
- [0-aux](../0-aux/): Pasta auxiliar com imagens utilizadas na construção dos arquivos de README desse curso.

### Development:

<a name="item02.01"><h4>2.1 Introdução</h4></a>[Back to summary](#item02)

💻 Teste de Segurança de Rede   
Como técnico de segurança digital, o papel principal é proteger a rede contra ameaças e ataques. Isso envolve atuar junto a uma equipe de profissionais de defesa cibernética, utilizando técnicas e ferramentas que permitem identificar falhas antes que sejam exploradas por invasores. Neste módulo, serão abordados recursos essenciais para avaliação de vulnerabilidades, incluindo:
- Ferramentas de linha de comando: utilizadas para coletar informações sobre a rede e diagnosticar problemas de conectividade.
- ST&E (Security Test & Evaluation): processo que verifica se os mecanismos de segurança implementados estão funcionando corretamente.
- Testes de penetração: simulações de ataques reais que ajudam a entender como o sistema resistiria diante de uma ameaça.

O objetivo é desenvolver a capacidade de reconhecer pontos fracos na infraestrutura, compreender como avaliá-los e, a partir disso, criar defesas mais robustas e eficazes.

<a name="item02.02"><h4>2.2 Avaliações de segurança</h4></a>[Back to summary](#item02)

🛡️ O Papel do Scanner de Vulnerabilidades   
Um scanner de vulnerabilidades é uma ferramenta que avalia computadores, redes, sistemas e aplicações em busca de pontos fracos. Ele automatiza a auditoria de segurança, gerando uma lista priorizada de riscos que devem ser corrigidos. Essa prática é essencial para manter a integridade e a proteção do ambiente corporativo.

🔍 O que os Scanners Detectam   
Esses scanners verificam diferentes tipos de fragilidades:
- Uso de senhas padrão ou senhas fracas.
- Patches de segurança não aplicados.
- Portas abertas que expõem serviços.
- Erros de configuração em softwares e sistemas operacionais.
- Endereços IP ativos, incluindo dispositivos inesperados conectados à rede.

🌐 Importância e Ferramentas Populares   
A verificação de vulnerabilidades é fundamental para identificar riscos, más configurações e falta de controles de segurança em redes com roteadores, firewalls, servidores e dispositivos variados.
- Principais scanners: Nessus, Retina, Core Impact e GFI LanGuard.
- Funções comuns: auditoria de conformidade, aplicação de patches, identificação de configurações incorretas, suporte a dispositivos móveis/sem fio, rastreamento de malware e identificação de dados sensíveis.

⚙️ Critérios de Avaliação e Categorias de Scanners   
Ao escolher um scanner, deve-se considerar: precisão, confiabilidade, escalabilidade e relatórios gerados. Eles podem ser adquiridos como software local ou solução em nuvem e se dividem em categorias:
- Scanners de rede: sondam hosts, portas abertas e vulnerabilidades conhecidas.
- Scanners de aplicativos: analisam o código-fonte sem executar o app.
- Scanners de aplicativos web: verificam falhas em aplicações web.

🔍 Abordagens de Varredura   
Além das categorias, os scanners podem adotar diferentes formas de análise:
- Varredura invasiva: tenta explorar falhas diretamente, podendo até causar impacto no sistema.
- Varredura não invasiva: apenas identifica riscos sem explorar vulnerabilidades, evitando danos.
- Varredura credenciada: usa credenciais válidas para acesso interno, permitindo análise mais profunda e detalhada.
- Varredura não credenciada: simula ataques externos sem acesso autorizado, mostrando a visão de um invasor.

⚠️ Falsos Positivos e Negativos   
Todos os tipos de scanners estão sujeitos a erros:
- Falso positivo: quando uma vulnerabilidade é apontada, mas não existe.
- Falso negativo: quando uma falha real não é identificada.

As varreduras credenciadas geralmente reduzem tanto falsos positivos quanto falsos negativos, tornando a análise mais confiável.

🖥️ Ferramentas de Linha de Comando   
Além dos scanners, existem utilitários que ajudam na análise de segurança:
- ipconfig / ifconfig: mostram configuração de rede e IP.
- ping: testa conectividade com um host.
- arp: lista endereços IP e MAC associados.
- tracert / traceroute: rastreia a rota de pacotes até o destino.
- nslookup / dig: consulta servidores DNS.
- netstat: exibe portas em uso e conexões ativas.
- nbtstat: soluciona problemas de nomes NetBIOS.
- nmap: detecta hosts, sistemas operacionais e serviços.
- netcat: realiza varredura de portas, captura de banners e cópia de arquivos.
- hping: monta/análise pacotes, testa firewalls e identifica sistemas.

📊 SIEM – Security Information and Event Management   
O SIEM coleta e agrega logs de dispositivos de segurança, redes, servidores e aplicações. Ele reduz o volume de eventos agrupando ocorrências semelhantes e identifica desvios do comportamento normal.
- Objetivos principais: detectar ameaças internas e externas, monitorar recursos, gerar relatórios de conformidade e apoiar respostas a incidentes.
- Sistemas avançados incluem análise de comportamento de usuários para prever ataques antes que se concretizem.
- Considerações: os sistemas SIEM costumam ter custo elevado e exigem análise frequente dos relatórios gerados. Por isso, tornam-se mais viáveis para empresas que processam milhões de eventos diariamente.

🤖 SOAR – Security Orchestration, Automation and Response   
O SOAR complementa o SIEM, coletando informações de várias fontes e automatizando respostas a incidentes de baixo nível, reduzindo a necessidade de intervenção humana. Seus três principais recursos são:
- Gerenciamento de ameaças e vulnerabilidades.
- Operações de segurança.
- Resposta a incidentes.

Quando integrado ao SIEM, o SOAR potencializa a capacidade de detectar, correlacionar e reagir rapidamente a ameaças.

<a name="item02.03"><h4>2.3 Técnicas de teste de segurança</h4></a>[Back to summary](#item02)

🔐 Segurança das Operações   
A segurança das operações está ligada às práticas diárias que garantem que um ambiente de TI continue protegido após ser planejado, implementado e colocado em funcionamento. Uma rede, mesmo bem projetada, permanece vulnerável se não houver monitoramento constante, aplicação de boas práticas e manutenção contínua. Desde a fase de planejamento e implementação, a equipe de operações precisa analisar os projetos, identificar riscos e ajustar configurações antes que o ambiente seja colocado em produção. Já na fase operacional, as atividades passam a focar em manter sistemas, aplicações e serviços funcionando de forma correta e segura.

🛠️ Conhecimentos Essenciais   
Os profissionais que realizam testes e asseguram a proteção de ambientes de rede precisam dominar conceitos técnicos variados, como:
- Sistemas operacionais: entender como funcionam e quais vulnerabilidades podem surgir.
- Programação básica: útil para compreender scripts maliciosos e desenvolver automações defensivas.
- Protocolos de rede (TCP/IP): fundamentais para interpretar tráfego e identificar comportamentos suspeitos.
- Vulnerabilidades de rede e mitigação: capacidade de reconhecer falhas e aplicar correções.
- Hardening: prática de reforçar dispositivos e servidores contra ataques.
- Firewalls e IPS: configuração e análise de ferramentas que controlam e filtram acessos.

Esse conjunto de conhecimentos é indispensável para conduzir testes eficazes e interpretar resultados de forma precisa.

🧪 Testes de Segurança   
Os testes permitem avaliar se as medidas de proteção realmente funcionam, sem depender que uma ameaça real ocorra. Eles podem ser feitos em fases iniciais, durante a implementação, ou já em um ambiente em operação. Uma prática comum é o *ST&E (Security Test & Evaluation)*, que consiste em examinar a rede já operacional, verificando se controles técnicos e administrativos estão alinhados à política de segurança da organização. Os principais objetivos incluem:
- Identificar falhas de design, configuração ou operação.
- Avaliar a adequação dos mecanismos de segurança.
- Medir a consistência entre documentação e implementação prática.

Esses testes devem ser repetidos periodicamente e sempre que houver mudanças no sistema, principalmente em ambientes críticos ou expostos a ameaças constantes.

🧭 Tipos de Testes   
Existem diversas técnicas que ajudam a avaliar o nível de segurança de um ambiente:
- Pentest (Teste de Penetração): simula ataques de invasores para verificar a viabilidade de exploração de falhas e os impactos potenciais. Pode incluir até engenharia social.
- Varredura de rede: identifica máquinas ativas, portas abertas e serviços disponíveis, fornecendo uma visão geral da superfície de ataque.
- Varredura de vulnerabilidade: detecta fraquezas, como senhas padrão, configurações incorretas ou pontos expostos a ataques DoS.
- Cracking de senha: testa a robustez das credenciais, apontando senhas fracas que devem ser substituídas.
- Revisão de logs: analisa registros de eventos para detectar atividades anômalas ou indícios de intrusão.
- Verificadores de integridade: monitoram alterações não autorizadas em arquivos, sistemas e acessos.
- Detecção de vírus e malware: identifica e remove softwares maliciosos em tempo real.

Obs.: técnicas mais antigas, como wardialing, ainda podem aparecer em auditorias, mas hoje são consideradas legadas.

📊 Uso dos Resultados   
Os relatórios e achados de segurança não devem ficar apenas como documentação. Eles servem para:
- Definir planos de mitigação de riscos.
- Rastrear a evolução da postura de segurança da organização.
- Apoiar análises de custo-benefício para novos investimentos.
- Melhorar processos de avaliação de risco e compliance.
- Servir como referência para ações corretivas futuras.

<a name="item02.04"><h4>2.4 Ferramentas de teste de segurança de rede</h4></a>[Back to summary](#item02)

🧰 Ferramentas de Teste de Segurança   
O mercado de cibersegurança oferece uma ampla variedade de ferramentas voltadas à análise e validação da segurança de redes e sistemas. Algumas são gratuitas e de código aberto, muito populares entre administradores e pesquisadores, enquanto outras são soluções comerciais, geralmente adotadas em ambientes corporativos de maior porte. Essas ferramentas auxiliam tanto na descoberta de vulnerabilidades quanto na análise de eventos em tempo real, apoiando desde varreduras básicas até operações avançadas de monitoramento e resposta.

🌐 Exemplos de Ferramentas   
- **Nmap / Zenmap**: Scanner de rede amplamente utilizado para identificar hosts ativos, serviços disponíveis e mapeamento de infraestrutura. Conta com interface gráfica (Zenmap) e pode executar desde varreduras simples até técnicas furtivas mais difíceis de detectar.
- **SuperScan**: Focado em detecção de portas abertas TCP/UDP e serviços associados. Também permite consultas adicionais como Whois, Traceroute e análise de hostnames.
- **SIEM (Security Information and Event Management)**: Plataforma corporativa que coleta e correlaciona logs de diferentes sistemas, fornecendo visibilidade em tempo real e relatórios históricos de incidentes.
- **GFI Languard**: Scanner de vulnerabilidades e conformidade que detecta falhas de configuração em estações e servidores.
- **Tripwire**: Ferramenta de monitoramento de integridade que verifica alterações não autorizadas em arquivos e configurações críticas.
- **Nessus**: Uma das soluções mais conhecidas de varredura de vulnerabilidades, com foco em falhas de acesso remoto e erros de configuração.
- **L0phtCrack**: Voltado para auditoria de senhas, ajuda a identificar credenciais fracas e realizar recuperação de senhas perdidas.
- **Metasploit**: Framework poderoso para testes de penetração, que permite explorar vulnerabilidades conhecidas e validar a eficácia de defesas.

Muitas dessas ferramentas são consideradas clássicas e servem como base para compreender as abordagens modernas de testes de rede e aplicações.

⚡ Foco no Nmap   
O Nmap é um dos scanners mais versáteis e utilizados no mundo. Ele pode executar:
- Port Scanning (TCP/UDP): identifica quais serviços estão ativos em determinado host.
- Port Sweeping: verifica um mesmo serviço em múltiplos hosts da rede.
- Varreduras furtivas: técnicas mais discretas, projetadas para evitar detecção por firewalls e sistemas de prevenção de intrusão.
- Fingerprinting de sistemas operacionais: identifica qual SO está em execução no host analisado.
- Protocol Scan (Camada 3): identifica suporte a protocolos específicos, como GRE e OSPF.

Apesar de ser uma ferramenta legítima para administradores de rede, também pode ser usada de forma maliciosa, razão pela qual seu uso deve estar sempre associado a práticas éticas. O Nmap está disponível em diversos sistemas operacionais e possui tanto interface de linha de comando quanto interface gráfica (Zenmap).

⚡ Foco no SuperScan   
O SuperScan é uma ferramenta clássica para Windows, voltada para varredura de portas e análise de serviços. Suas versões mais recentes oferecem:
- Varreduras rápidas e ajustáveis.
- Suporte a múltiplos intervalos de IP.
- Diferentes métodos de detecção de hosts ativos.
- Suporte a varreduras TCP SYN e UDP.
- Relatórios simples em HTML.
- Recursos de enumeração para ambientes Windows (como usuários e compartilhamentos).

Embora seja uma solução mais antiga e limitada em comparação a scanners modernos, ainda pode ser útil para auditorias básicas em redes Microsoft.

📊 SIEM: Monitoramento Inteligente   
O SIEM vai além das varreduras. É uma tecnologia que une duas funções antes separadas:
- SIM (Security Information Management): foco em armazenamento e análise de longo prazo.
- SEM (Security Event Management): voltado para alertas e respostas em tempo real.

Com essa fusão, o SIEM oferece uma visão centralizada dos eventos de segurança, permitindo:
- Correlação de dados: combina logs de diferentes fontes para identificar padrões de ataque.
- Agregação de eventos: elimina duplicidades e organiza informações em relatórios consolidados.
- Análise forense: fornece histórico detalhado para investigações pós-incidente.
- Retenção de registros: mantém dados acessíveis para auditorias e conformidade.

Além disso, o SIEM fornece detalhes sobre usuários, dispositivos e postura de segurança (como versão de antivírus ou atualização de patches), permitindo que a equipe responda perguntas críticas:
- Quem está envolvido no evento?
- O acesso realizado era legítimo?
- O dispositivo está em conformidade com as políticas?

Com essas informações, a organização consegue priorizar incidentes e agir de forma mais rápida e eficiente.

📌 Conclusão   
Ferramentas como Nmap e SuperScan oferecem recursos valiosos de varredura e mapeamento, enquanto soluções mais avançadas como o SIEM trazem uma visão global e estratégica da segurança. Nenhuma ferramenta, no entanto, resolve todos os problemas sozinha – o ideal é combiná-las em uma estratégia de defesa em camadas, ajustada ao porte e às necessidades da organização.

<a name="item02.05"><h4>2.5 Teste de penetração</h4></a>[Back to summary](#item02)

🛡️ Teste de Penetração (Pen Testing)   
O teste de penetração, também chamado de pentest, é uma abordagem controlada para avaliar a segurança de sistemas, redes e aplicações. Diferente de uma simples varredura de vulnerabilidades, o pentest envolve simular ataques reais, usando técnicas que invasores poderiam aplicar para tentar comprometer dados ou sistemas críticos. O principal objetivo é identificar falhas antes que agentes mal-intencionados possam explorá-las, permitindo que a organização fortaleça suas defesas de forma proativa. Por isso, esse tipo de teste é frequentemente denominado ataque ético de hacker.

🎯 Tipos de Teste de Penetração   
Os testes podem variar conforme o nível de conhecimento do avaliador sobre o sistema:
- Caixa Preta (Black Box):
    - O avaliador não possui informações internas do sistema.
    - O teste simula a perspectiva de um atacante externo, tentando descobrir falhas a partir de recursos visíveis publicamente.
    - É mais rápido e menos custoso, mas fornece uma visão limitada da segurança interna.
- Caixa Cinza (Gray Box):
    - O testador tem acesso parcial a informações sobre o sistema, como credenciais limitadas ou documentação parcial.
    - Esse método combina técnicas de caixa preta e branca, permitindo testes mais direcionados sem total visibilidade interna.
- Caixa Branca (White Box):
    - O avaliador conhece detalhadamente a arquitetura, código-fonte e configuração do sistema.
    - Simula ataques internos ou de alguém que obteve informações privilegiadas.
    - É mais demorado e caro, mas fornece um panorama completo das vulnerabilidades e permite testes profundos.

⚡ Fases do Teste de Penetração   
Um pentest é geralmente dividido em quatro etapas:
- Planejamento:
    - Definição de escopo, regras e objetivos do teste.
    - Acordo sobre métodos permitidos e limites de atuação.
- Coleta de Informações (Reconhecimento):
    - Busca por dados relevantes sobre o alvo.
    - Pode ser passivo, usando fontes públicas (sites, registros WHOIS), ou ativo, com interação direta (varreduras de portas, análise de serviços).
- Exploração (Ataque):
    - Aplicação das técnicas para obter acesso a sistemas ou dados.
    - Inclui escalonamento de privilégios e movimentação lateral dentro da rede.
    - Possível instalação temporária de ferramentas para testes (persistência), sempre garantindo que o sistema seja restaurado ao final.
- Relatórios:
    - Documentação detalhada das vulnerabilidades encontradas, métodos utilizados e recomendações de mitigação.
    - Serve como guia para a organização reforçar sua segurança.

🤝 Exercícios Avançados de Pentest   
Algumas empresas realizam exercícios maiores envolvendo equipes especializadas:
- Red Team: Responsável por simular ataques de invasores.
- Blue Team: Atua na defesa, monitorando e neutralizando os ataques do Red Team.
- White Team: Supervisiona, define regras e garante que o exercício siga objetivos claros, sem envolver ataques reais fora do escopo.
- Purple Team: Integra Red e Blue Teams para otimizar a identificação de vulnerabilidades e melhorar processos defensivos.

Outra alternativa é o programa de recompensas por bugs (Bug Bounty), em que desenvolvedores externos identificam vulnerabilidades em sistemas públicos, muitas vezes recebendo compensação financeira.

🖥️ Analisadores de Pacotes e Sniffing   
Além do pentest, outra prática essencial para entender a segurança de redes é a análise de tráfego:
- Packet Analyzers (Analisadores de Pacotes): interceptam e registram dados que trafegam na rede.
    - Aplicações legítimas incluem solução de problemas e auditoria de rede.
    - Aplicações maliciosas podem capturar informações sensíveis, como senhas ou dados pessoais.
- Sniffing: técnica usada para monitorar tráfego de rede.
    - Pode ser passivo, apenas observando pacotes, ou ativo, modificando ou redirecionando dados.
    - Usos legítimos: diagnóstico de rede, identificação de gargalos e troubleshooting.
    - Riscos: invasores podem capturar dados confidenciais se tiverem acesso à rede.

A segurança física é um fator crítico para prevenir sniffing malicioso, garantindo que dispositivos não autorizados não consigam se conectar à infraestrutura interna.

📌 Conclusão   
O teste de penetração permite que empresas compreendam seus pontos fracos antes de serem explorados. Aliado a packet analyzers e técnicas de sniffing, oferece uma visão completa da postura de segurança, permitindo decisões informadas para proteger sistemas, redes e dados sensíveis.

<a name="item02.06"><h4>2.6 Resumo de teste de segurança de rede</h4></a>[Back to summary](#item02)

🔍 Scanners de Vulnerabilidades   
Esses scanners avaliam computadores, redes ou aplicações em busca de pontos fracos. Entre os mais utilizados estão Nessus, Retina, Core Impact e GFI LanGuard. Eles podem atuar de diferentes formas:
- Scanners de Rede: identificam falhas em dispositivos conectados.
- Scanners de Aplicação: analisam softwares e serviços específicos.
- Scanners Web: focam em sites e aplicações online.

Há também distinções no modo de execução:
- Varreduras Invasivas: tenta explorar falhas diretamente, podendo até causar impacto no sistema.
- Varreduras Credenciadas: utilizam credenciais de acesso (usuário/senha) para uma análise mais detalhada do ambiente.

⚙️ Ferramentas de Linha de Comando   
Vários utilitários simples podem auxiliar na avaliação de vulnerabilidades: ipconfig, ping, arp, tracert, nslookup, netstat, nbtstat, nmap, netcat, hping.

📊 SIEM e SOAR   
- SIEM (Security Information and Event Management): agrega logs de servidores, dispositivos de rede e soluções de segurança, permitindo análise e correlação de eventos.
- SOAR (Security Orchestration, Automation and Response): coleta informações de diversas fontes e automatiza respostas a incidentes de menor complexidade.

🛡️ Segurança das Operações   
Refere-se às práticas do dia a dia necessárias para implantar e manter um sistema seguro. Normalmente, os testes começam já na implementação da rede e seguem em ambiente operacional. Um ST&E (Security Test & Evaluation) avalia se as medidas de proteção estão funcionando como esperado.

Principais tipos de testes de rede:
- Penetração
- Varredura de rede
- Varredura de vulnerabilidade
- Quebra de senha
- Revisão de logs
- Verificadores de integridade
- Detecção de vírus

🔧 Ferramentas de Testes de Rede   
- Nmap / Zenmap: varredura de portas TCP/UDP, identificação de sistemas operacionais.
- SuperScan: scanner de portas para Windows, requer privilégios de administrador.
- Tripwire: verificador de integridade.
- LOphtCrack: quebra de senha.
- Metasploit: plataforma de exploração de falhas.
- SIEMs e GFI LANguard: análise, correlação e gerenciamento de vulnerabilidades.

🎯 Testes de Penetração   
Os pen tests simulam ataques reais para identificar pontos fracos antes que criminosos os explorem.

Fases principais:
- Planejamento: definição de escopo e regras.
- Descoberta: coleta de informações (passiva e ativa).
- Ataque: exploração de falhas e movimentação lateral.
- Relatórios: documentação dos achados.

Algumas organizações vão além e realizam exercícios de Red/Blue Team:
- Red Team: ofensivo, tenta comprometer o sistema.
- Blue Team: defensivo, atua para detectar e mitigar ataques.
- White Team: supervisiona, define regras e objetivos.
- Purple Team: colaboração entre ofensores e defensores.

🌐 Analisadores de Pacotes (Packet Analyzers)   
Ferramentas que capturam e registram tráfego de rede.
- Uso legítimo: análise de desempenho, resolução de problemas, verificação de largura de banda.
- Uso malicioso: sniffing de credenciais, espionagem de comunicação.

Exemplo: sniffers que conseguem observar todo o tráfego da rede ou filtrar dados específicos (como logins e senhas).


<a name="item03.01"><h4>3.1 Introdução</h4></a>[Back to summary](#item03)

🌐 Inteligência contra Ameaças   
A segurança cibernética exige atualização constante, já que novas ameaças surgem diariamente. Este módulo apresenta como identificar e avaliar fontes de inteligência que ajudam a antecipar riscos e fortalecer as defesas da rede.

Objetivos de aprendizado:
- Avaliar as principais fontes de informações sobre ameaças emergentes.
- Conhecer os serviços de inteligência usados para comunicar riscos à segurança da rede.

<a name="item03.02"><h4>3.2 Fontes de informação</h4></a>[Back to summary](#item03)

📡 Fontes de Inteligência de Ameaças   
Para se manter à frente de ataques cibernéticos, é essencial conhecer e utilizar fontes confiáveis de informações sobre ameaças. Elas fornecem alertas, análises e relatórios que ajudam profissionais de segurança a antecipar e mitigar riscos.

🔹 Principais fontes e serviços de inteligência:
- SANS (SysAdmin, Audit, Network, Security Institute): oferece diversos recursos gratuitos mediante solicitação, incluindo:
    - Internet Storm Center: sistema de alerta antecipado sobre ameaças online.
    - NewsBites: resumo semanal com notícias de segurança.
    - ORISK: resumo de vulnerabilidades recém-descobertas, ataques ativos e análises de exploração.
    - Alertas de Segurança Flash.
    - Sala de Leitura com mais de 1.200 pesquisas premiadas.
    - Desenvolvimento de cursos de capacitação em segurança.
- Mitre: mantém a base de vulnerabilidades CVE (Common Vulnerabilities and Exposures), amplamente utilizada por profissionais e empresas de segurança.
- FIRST (Forum of Incident Response and Security Teams): reúne equipes de resposta a incidentes de diferentes setores, promovendo cooperação e compartilhamento de informações para prevenção e resposta rápida a incidentes.
- SecurityNewsWire: portal de notícias que agrega alertas, vulnerabilidades e explorações recentes.
- (ISC)² (International Information Systems Security Certification Consortium): oferece produtos educacionais e serviços de carreira neutros, atendendo mais de 75.000 profissionais em mais de 135 países.
- CIS (Center for Internet Security) e MS-ISAC (Multi-State Information Sharing and Analysis Center): fornecem prevenção, mitigação e resposta a ameaças para governos estaduais, locais e tribais, com monitoramento contínuo e alertas de vulnerabilidades.

📌 Práticas para se manter atualizado:   
- Acompanhar ameaças recentes: assinar feeds em tempo real, consultar sites especializados, seguir blogs e podcasts de segurança.
- Atualização constante de habilidades: participar de treinamentos, workshops e conferências da área.

📊 Relatórios e publicações importantes:
- Cisco Annual Cybersecurity Report e Mid-Year Cybersecurity Report: oferecem análises sobre vulnerabilidades críticas, tendências de ataques e estratégias de mitigação.

🎙️ Blogs e podcasts especializados   
Fornecem atualizações contínuas sobre ameaças e técnicas de defesa. Exemplos incluem os blogs de especialistas da Cisco e os podcasts do Cisco Talos Group, disponíveis para streaming ou download.

📌 Conclusão   
Manter-se informado e atualizado exige disciplina e compromisso contínuo, mas é fundamental para que profissionais de segurança possam antecipar ataques e proteger redes de forma eficiente.

<a name="item03.03"><h4>3.3 Serviços de inteligência de ameaças</h4></a>[Back to summary](#item03)

🛡️ Serviços de Inteligência contra Ameaças   
Os serviços de inteligência contra ameaças permitem o compartilhamento de informações sobre vulnerabilidades, indicadores de comprometimento (IOCs) e técnicas de mitigação. Essas informações são distribuídas tanto para profissionais quanto para sistemas de segurança, criando regras de firewall e IOCs em tempo real para os dispositivos assinantes.

🕵️ Cisco Talos Threat Intelligence   
O Cisco Talos é uma das maiores equipes comerciais de inteligência de ameaças do mundo, composta por pesquisadores, analistas e engenheiros. O objetivo do Talos é proteger usuários, dados e infraestrutura de adversários ativos, coletando informações sobre ameaças ativas, existentes e emergentes. Seus produtos de segurança utilizam essa inteligência em tempo real para fornecer proteção rápida e eficaz. Talos também mantém regras de detecção para ferramentas como Snort.org, ClamAV e SpamCop, além de disponibilizar software, serviços e dados gratuitos.

🔥 FireEye   
A FireEye combina inteligência, experiência e tecnologia para proteger redes corporativas. Sua plataforma Helix Security Platform é baseada em nuvem e integra SIEM, SOAR e ferramentas de segurança com análise comportamental e detecção avançada de ameaças, apoiada pela rede global de inteligência Mandiant. O sistema FireEye bloqueia ataques em e-mails, web e arquivos, incluindo malware avançado que ignora soluções tradicionais baseadas em assinaturas. Ele atua em todas as fases do ciclo de vida do ataque usando análise stateful sem assinatura, detectando ameaças de dia zero.

🇺🇸 DHS – AIS   
O Departamento de Segurança Interna dos EUA oferece o serviço gratuito Automated Indicator Sharing (AIS), que permite a troca em tempo real de indicadores de ameaças cibernéticas entre o governo federal e o setor privado. O AIS cria um ecossistema de proteção imediata, compartilhando ameaças reconhecidas para fortalecer redes contra ataques específicos.

📝 MITRE e CVE   
A MITRE Corporation mantém o catálogo CVE (Common Vulnerabilities and Exposures), que fornece identificadores únicos para vulnerabilidades de segurança cibernética publicamente conhecidas. Isso facilita o compartilhamento de informações entre organizações e padroniza a identificação de vulnerabilidades.

🌐 Padrões Abertos de Compartilhamento de Inteligência   
Vários padrões abertos permitem a comunicação automatizada de inteligência contra ameaças em formatos consistentes e legíveis por máquina:
- STIX: especificações para troca de informações de ameaças cibernéticas; inclui CybOX.
- TAXII: protocolo de camada de aplicação que permite comunicação de CTI via HTTPS e suporta STIX.
- CybOX: define eventos e propriedades de operações de rede para segurança cibernética.

🤝 MISP – Malware Information Sharing Platform   
O MISP é uma plataforma open-source apoiada pela União Europeia para compartilhar indicadores de comprometimento (IOCs) de ameaças recém-descobertas. Ele permite o compartilhamento automatizado entre pessoas e máquinas, utilizando STIX e outros formatos de exportação.

🧠 Plataformas de Inteligência de Ameaças (TIP)   
Plataformas de inteligência de ameaças centralizam dados de múltiplas fontes e formatos para facilitar a análise. Existem três tipos principais de dados:
- IOCs (Indicadores de Comprometimento)
- TTPs (Ferramentas, Técnicas e Procedimentos)
- Informações de reputação sobre domínios e destinos da internet

Essas plataformas agregam informações para apresentá-las de forma compreensível e utilizável, permitindo que organizações façam uso eficiente da inteligência de ameaças.

🐝 Honeypots   
Honeypots são redes ou servidores simulados que atraem atacantes, permitindo a coleta de informações sobre ataques. Os dados obtidos podem ser compartilhados com assinantes de plataformas de inteligência de ameaças. Honeypots hospedados na nuvem isolam os ataques da rede de produção, oferecendo uma alternativa segura para a coleta de informações de ameaças.

<a name="item03.04"><h4>3.4 Resumo de Inteligência de Ameaças</h4></a>[Back to summary](#item03)

🌐 Organizações de Inteligência de Rede   
Existem diversas organizações que fornecem inteligência de rede, como SANS, MITRE, FIRST, SecurityNewsWire, (ISC)² e CIS. Manter-se atualizado sobre ameaças e continuar aprimorando habilidades é essencial. Recursos recomendados incluem o Cisco Annual Cybersecurity Report, o Mid-Year Cybersecurity Report, blogs especializados e podcasts sobre segurança.

🛡️ Serviços de Inteligência contra Ameaças   
Esses serviços permitem o compartilhamento de informações sobre vulnerabilidades, indicadores de comprometimento (IOCs) e técnicas de mitigação. As informações são distribuídas tanto para profissionais quanto para sistemas de segurança. À medida que novas ameaças surgem, regras de firewall e IOCs são criadas e enviadas automaticamente para os dispositivos assinantes.

Principais Serviços
- Cisco Talos Threat Intelligence Group: coleta informações sobre ameaças ativas, existentes e emergentes para proteger usuários, dados e infraestrutura.
- FireEye: usa uma abordagem de três frentes (inteligência, experiência e tecnologia) e oferece SIEM e SOAR via Helix Security Platform, que combina análise comportamental, detecção avançada de ameaças e suporte da rede mundial Mandiant.
- DHS – AIS (Automated Indicator Sharing): serviço gratuito do Departamento de Segurança Interna dos EUA que permite a troca em tempo real de indicadores de ameaças cibernéticas entre governo e setor privado.

📝 MITRE e CVE   
A MITRE Corporation mantém o catálogo CVE (Common Vulnerabilities and Exposures), que fornece identificadores únicos para vulnerabilidades de segurança conhecidas, facilitando o compartilhamento de informações entre organizações.

🌐 Padrões de Compartilhamento de Inteligência   
Existem padrões abertos que padronizam a troca de informações de inteligência de ameaças:
- STIX (Structured Threat Information Expression): especificações para troca de informações sobre ameaças cibernéticas.
- TAXII (Trusted Automated Exchange of Indicator Information): protocolo que permite comunicação de CTI via HTTPS, suportando STIX.
- CybOX: define esquemas para capturar e comunicar eventos e propriedades de operações de rede.

Esses padrões ajudam a automatizar a troca de informações de inteligência de ameaças em formatos consistentes e legíveis por máquina.

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

<a name="item06.01"><h4>6.1 Introdução</h4></a>[Back to summary](#item06)













<a name="item06.02"><h4>6.2 Gerenciamento de risco</h4></a>[Back to summary](#item06)




<a name="item06.03"><h4>6.3 Avaliação de risco</h4></a>[Back to summary](#item06)





<a name="item06.04"><h4>6.4 Controles de segurança</h4></a>[Back to summary](#item06)


<a name="item06.05"><h4>6.5 Resumo de Gerenciamento de riscos e controles de segurança</h4></a>[Back to summary](#item06)