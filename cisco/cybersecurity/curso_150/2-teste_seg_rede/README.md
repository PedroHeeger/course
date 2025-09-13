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
2. <a name="item02">Teste de Segurança de Rede</a><br>
  2.1 <a href="#item02.01">Introdução</a><br>
  2.2 <a href="#item02.02">Avaliações de segurança</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;2.2.1 <a href="#item02.02.01">Laboratório - Packet Tracer - Use comandos de diagnóstico</a><br>
  2.3 <a href="#item02.03">Técnicas de teste de segurança</a><br>
  2.4 <a href="#item02.04">Ferramentas de teste de segurança de rede</a><br>
  2.5 <a href="#item02.05">Teste de penetração</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;2.5.1 <a href="#item02.05.01">Laboratório - Use o Wireshark para comparar o tráfego Telnet e SSH</a><br>
  2.6 <a href="#item02.06">Resumo de teste de segurança de rede</a><br>

---

### Objective:
O objetivo deste módulo foi apresentar os fundamentos de testes de segurança de rede, abordando técnicas, ferramentas e práticas essenciais para identificar vulnerabilidades em sistemas, redes e aplicações. Foram exploradas avaliações de segurança utilizando scanners automatizados, varreduras de rede, testes de penetração e análise de tráfego, destacando a importância de diferenciar abordagens invasivas e não invasivas, credenciadas e não credenciadas, além de gerenciar falsos positivos e negativos. Também foram apresentados recursos de monitoramento avançado, como SIEM e SOAR, que permitem coletar, correlacionar e automatizar respostas a incidentes, garantindo uma visão integrada da segurança. O módulo contemplou, ainda, a aplicação de princípios de segurança das operações, ST&E e hardening de sistemas, bem como a utilização de ferramentas clássicas e modernas, como Nmap, SuperScan, Metasploit, Tripwire, L0phtCrack e GFI LanGuard, reforçando a capacidade de mapear a infraestrutura, identificar falhas e implementar defesas proativas e contínuas.

### Folder Structure:
- [README.md](./README.md): Este documento de README, escrito em **Markdown**, descrevendo todo conteúdo realizado neste módulo.
- [0-aux](../0-aux/): Pasta auxiliar com imagens utilizadas na construção dos arquivos de README desse curso.

### Development:

<a name="item02.01"><h4>2.1 Introdução</h4></a>[Back to summary](#item02)

💻 Teste de Segurança de Rede   
Como técnico de segurança digital, o papel principal é proteger a rede contra ameaças e ataques. Isso envolve atuar junto a uma equipe de profissionais de defesa cibernética, utilizando técnicas e ferramentas que permitem identificar falhas antes que sejam exploradas por invasores. Neste módulo, foram abordados recursos essenciais para avaliação de vulnerabilidades, incluindo:
- Ferramentas de linha de comando: utilizadas para coletar informações sobre a rede e diagnosticar problemas de conectividade.
- ST&E (Security Test & Evaluation): processo que verifica se os mecanismos de segurança implementados estão funcionando corretamente.
- Testes de penetração: simulações de ataques reais que ajudam a entender como o sistema resistiria diante de uma ameaça.

O objetivo é desenvolver a capacidade de reconhecer pontos fracos na infraestrutura, compreender como avaliá-los e, a partir disso, criar defesas mais robustas e eficazes.

<a name="item02.02"><h4>2.2 Avaliações de segurança</h4></a>[Back to summary](#item02)

🛡️ O Papel do Scanner de Vulnerabilidades   
Um scanner de vulnerabilidades é uma ferramenta que avalia computadores, redes, sistemas e aplicações em busca de pontos fracos. Ele automatiza a auditoria de segurança, gerando uma lista priorizada de riscos que devem ser corrigidos. Essa prática é essencial para manter a integridade e a proteção do ambiente corporativo.

🔍 O que os Scanners Detectam   
Esses scanners verificam diferentes tipos de fragilidades:
- Uso de senhas padrão ou senhas fracas;
- Patches de segurança não aplicados;
- Portas abertas que expõem serviços;
- Erros de configuração em softwares e sistemas operacionais;
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

<a name="item02.02.01"><h4>2.2.1 Laboratório - Packet Tracer - Use comandos de diagnóstico</h4></a>[Back to summary](#item02)

##### Parte 1: Reunir as configurações do dispositivo de usuário final


##### Parte 2: Coletar informações sobre a rede e os dispositivos

##### Parte 3: Diagnosticar problemas de conectividade




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

<a name="item02.05.01"><h4>2.5.1 Laboratório - Use o Wireshark para comparar o tráfego Telnet e SSH</h4></a>[Back to summary](#item02)

##### Parte 1: Usar o Wireshark para capturar o tráfego do navegador da Web.

##### Parte 2: Usar o Wireshark para capturar o tráfego Telnet.


##### Parte 3: Usar o Wireshark para capturar o tráfego SSH.


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
- **Nmap / Zenmap:** realizam varredura de portas TCP/UDP e ajudam a identificar sistemas operacionais e serviços ativos em uma rede.  
- **SuperScan:** scanner de portas para Windows, usado para mapear serviços ativos; requer privilégios de administrador para funcionar corretamente.  
- **Tripwire:** ferramenta de verificação de integridade de arquivos e sistemas, detectando alterações não autorizadas.  
- **LOphtCrack:** utilizado para auditoria de senhas, permitindo identificar senhas fracas ou comprometidas.  
- **Metasploit:** plataforma para testes de penetração que automatiza a exploração de vulnerabilidades conhecidas.  
- **SIEMs:** sistemas que coletam, correlacionam e analisam eventos de segurança para detecção de incidentes.  
- **GFI LANguard:** ferramenta de gerenciamento de vulnerabilidades e auditoria de rede, oferecendo relatórios detalhados sobre falhas de segurança.

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
- Uso malicioso: sniffing de credenciais, espionagem de comunicação. Exemplo: sniffers que conseguem observar todo o tráfego da rede ou filtrar dados específicos (como logins e senhas).