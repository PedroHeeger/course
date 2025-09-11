# Gerenciamento de Ameaças Cibernéticas - Módulo 1   <img src="../0-aux/logo_course.png" alt="curso_150" width="auto" height="45">

### Repository: [course](../../../../)
### Platform: <a href="../../../">cisco   <img src="https://github.com/PedroHeeger/my_tech_journey/blob/main/platforms/img/cisco.png" alt="cisco" width="auto" height="25"></a>
### Software/Subject: <a href="../../">cybersecurity   <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/content/cybersecurity.jpg" alt="cybersecurity" width="auto" height="25"></a>
### Course: <a href="../">curso_150 (Gerenciamento de Ameaças Cibernéticas)   <img src="../0-aux/logo_course.png" alt="curso_150" width="auto" height="25"></a>
### Module: 1. Governança e Conformidade

---

### Theme:
- Cybersecurity

### Used Tools:
- Operating System (OS): 
  - Windows 11 <img src="https://github.com/PedroHeeger/main/blob/main/0-aux/logos/software/windows11.png" alt="windows11" width="auto" height="25">
- Cloud Services:
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

### Course Module 1 Structure:
1. <a name="item01">Governança e Conformidade</a><br>
1.1 <a href="#item01.01">Introdução</a><br>
1.2 <a href="#item01.02">Governança</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;1.2.1 <a href="#item01.02.01">Laboratório - Desenvolver Políticas e procedimentos de segurança cibernética</a><br>
1.3 <a href="#item01.03">A ética da segurança cibernética</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;1.3.1 <a href="#item01.03.01">Laboratório - Crie seu código pessoal de conduta ética</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;1.3.2 <a href="#item01.03.02">Laboratório - Recomendar medidas de segurança para atender aos requisitos de conformidade</a><br>
1.4 <a href="#item01.04">Estrutura de gerenciamento de segurança de TI</a><br>
1.5 <a href="#item01.05">Resumo de Governança e conformidade</a><br>

---

### Objective:
O objetivo deste módulo foi apresentar os fundamentos da governança em segurança digital, destacando políticas, papéis e responsabilidades na administração de dados. Também foram exploradas as principais leis, regulamentações e normas internacionais aplicáveis à proteção da informação. Além disso, foram abordados os princípios éticos na tomada de decisões em ambientes digitais e introduzidos frameworks e controles essenciais, como ISO 27000, NIST, CIS e CSA, para garantir conformidade, proteção de dados e integridade operacional em organizações.

### Folder Structure:
- [README.md](./README.md): Este documento de README, escrito em **Markdown**, descrevendo todo conteúdo realizado neste módulo.
- [0-aux](../0-aux/): Pasta auxiliar com imagens utilizadas na construção dos arquivos de README desse curso.

### Development:

<a name="item01.01"><h4>1.1 Introdução</h4></a>[Back to summary](#item01)

🏛️ Governança na Segurança Digital   
A governança é essencial na segurança digital porque define políticas e processos que estabelecem responsabilidades, prestação de contas e formas de mitigar riscos digitais. Além disso, garante que as práticas adotadas estejam alinhadas às regulamentações e normas aplicáveis.

📚 Conhecimento de Leis e Regulamentações   
O profissional de segurança digital deve compreender as leis que tratam da segurança da informação, privacidade e proteção de dados em seu país. Esse conhecimento é fundamental para assegurar que a empresa esteja em conformidade legal.

⚖️ Compromisso Ético   
Mais do que regras e normas, a governança envolve responsabilidade moral. O profissional de segurança digital tem a obrigação ética de sempre agir de forma correta, utilizando suas habilidades para proteger pessoas, dados e organizações.

<a name="item01.02"><h4>1.2 Governança</h4></a>[Back to summary](#item01)

🏢 Governança da Segurança de TI   
A governança da segurança de TI define quem pode tomar decisões sobre riscos de segurança digital em uma empresa. Ela garante que os riscos sejam mitigados de forma adequada, que as estratégias de segurança estejam alinhadas aos objetivos do negócio e que as práticas sigam as regulamentações vigentes.

⚙️ Governança x Gerenciamento   
Governança não deve ser confundida com o gerenciamento de segurança de TI. Enquanto a governança define responsabilidades e diretrizes, o gerenciamento implementa controles para reduzir riscos. Já a governança de dados trata especificamente de quem pode decidir sobre os dados dentro da organização.

👥 Funções na Administração de Dados   
Bons programas de governança de dados envolvem diferentes papéis, cada um com responsabilidades específicas:
- Proprietário dos dados: Garante políticas, classificação correta dos ativos e critérios de acesso.
- Controlador de dados: Define como e para quê os dados pessoais são processados.
- Processador de dados: Lida com dados pessoais em nome do controlador.
- Custodiante dos dados: Aplica controles técnicos segundo regras do proprietário dos dados.
- Administrador de dados: Assegura que os dados atendam às necessidades do negócio e às normas.
- Gestor de proteção de dados: Supervisiona a estratégia de proteção da informação.

📜 Política de Segurança Digital   
É um documento de alto nível que expressa a visão da empresa sobre segurança digital. Ela:
- Demonstra o compromisso organizacional.
- Define padrões de comportamento e requisitos de segurança.
- Garante consistência no uso de sistemas, softwares e hardware.
- Especifica consequências legais de violações.
- Oferece suporte da gerência sênior para a equipe de segurança.

🔖 Tipos de Políticas de Segurança   
Existem diferentes tipos, cada um com função específica:
- Política corporativa: Plano estratégico geral de segurança digital.
- Política específica do sistema: Regras para dispositivos, softwares e configurações.
- Política específica do problema: Instruções para situações operacionais particulares.

🔑 Políticas Comuns em Empresas   
Algumas políticas são mais frequentes e críticas para a proteção das informações:
- Identificação e autenticação.
- Senhas seguras.
- Utilização aceitável.
- Acesso remoto.
- Manutenção de rede.
- Tratamento de incidentes.
- Dados (classificação, armazenamento e descarte).
- Credenciais.

🕵️ Exemplos de Problemas e Soluções   
Situações reais em empresas mostram como aplicar medidas de segurança:
- Phishing em funcionários: Treinamento e conscientização de segurança.
- Acesso excessivo a dados: Controles baseados na “necessidade de saber”.
- Downloads de softwares não autorizados: Ativar monitoramento IDS/IPS e antivírus.
- Uso indevido de VPN: Monitorar comportamento anormal de funcionários.

🛡️ Medidas Adicionais de Proteção   
Outras práticas reforçam a segurança contra ameaças de usuários:
- Conscientização ligada à avaliação de desempenho.
- Filtragem de conteúdo na rede.
- Bloqueio de portas USB e drives de CD.
- Antivírus automático em mídias externas.
- Permissões restritas de gravação/exclusão.

⚖️ Ética na Segurança Digital   
Profissionais de segurança têm habilidades semelhantes às de criminosos digitais. A diferença está na ética, que funciona como um código de conduta para usar essas competências de forma responsável e em benefício da proteção das empresas.

<a name="item01.02.01"><h4>1.2.1 Laboratório - Desenvolver Políticas e procedimentos de segurança cibernética</h4></a>[Back to summary](#item01)

Este laboratório foi desenvolvido em quatro partes, cada uma composta por várias etapas. Algumas etapas foram documentadas diretamente neste arquivo README, enquanto outras exigiram a criação de arquivos específicos. O objetivo do laboratório foi analisar vulnerabilidades identificadas em uma empresa fictícia, classificá-las por ordem de criticidade, desenvolver uma política de segurança da informação para a vulnerabilidade mais crítica, criar um procedimento detalhado para sua implementação e, por fim, elaborar um plano para disseminar e avaliar as políticas de segurança da empresa. Além disso, foi realizado uma análise conceitual dos documentos de segurança da informação para melhor compreensão e entendimento.

O cenário apresentou uma empresa fictícia de serviços de saúde (ACME Serviços de Saúde) que sofreu múltiplas violações de dados nos cinco anos anteriores, resultando em prejuízos financeiros e danos à sua reputação. Para solucionar o problema, a empresa contratou um novo Diretor Executivo de Segurança da Informação (CISO), que reuniu uma equipe especializada em testes de penetração para conduzir uma auditoria completa de segurança em toda a organização. A auditoria independente identificou as seguintes vulnerabilidades:
 1. Várias contas foram identificadas para funcionários que não estão mais empregados pela ACME.
 2. Várias contas de usuário permitiram privilégios não autorizados e escalados. Essas contas acessavam sistemas e informações sem autorização formal.
 3. Vários dispositivos e sistemas permitiram acesso remoto não seguro.
 4. Quarenta por cento de todas as senhas da empresa auditadas foram decifradas em 6 horas.
 5. A expiração de senha não foi padronizada.
 6. Arquivos confidenciais foram encontrados sem criptografia nos dispositivos dos usuários.
 7. Vários hotspots sem fio usaram WEP para criptografia e autenticação.
 8. As evidências indicam que o e-mail confidencial foi enviado de e para residências de funcionários e dispositivos móveis sem criptografia.
 9. Os logs de detecção de invasão eram raramente revisados e analisados.
 10. Dispositivos com dados confidenciais da empresa foram usados pelos funcionários para uso privado.
 11. Os dispositivos dos funcionários não foram atendidos e os funcionários não fizeram logout da rede e dos sistemas de dados da empresa.
 12. Configurações e atualizações de dispositivos inconsistentes foram realizadas.
 13. Várias regras de firewall foram definidas para permitir todo o tráfego, a menos que sejam negadas especificamente.
 14. Os servidores da empresa não foram atualizados com as correções mais recentes.
 15. O servidor Web da intranet permitiu que os usuários alterassem informações pessoais, inclusive informações de contato.

##### Parte 1: Revisão do cenário

Na primeira parte deste laboratório, foi realizada uma revisão dos conceitos básicos de documentos de segurança da informação. Abaixo são listados os principais tipos de documentos e suas funções:
- **Policies (Políticas):** Diretrizes formais que definem regras, responsabilidades e objetivos de segurança da informação dentro da organização, orientando o comportamento dos colaboradores e a gestão de riscos. (Define a intenção e regras gerais de segurança)
- **Procedures (Procedimentos):** Instruções detalhadas e passo a passo que explicam como implementar e cumprir as políticas de segurança, garantindo consistência na execução das ações. (Passo a passo para implementar a policy/standard na prática)
- **Standards (Padrões/Normas):** Regras obrigatórias que especificam requisitos mínimos ou melhores práticas de segurança, como configurações de sistemas ou protocolos a serem seguidos. (Regras obrigatórias derivadas da policy)
- **Baselines (Referências/Configurações Mínimas):** Configurações padrão ou critérios mínimos de segurança para sistemas, redes e dispositivos, servindo como ponto de referência para auditorias e implementações. (Configuração mínima prática que garante que o standard seja seguido)
- **Guidelines (Diretrizes):** Recomendações e orientações que apoiam a tomada de decisões em segurança da informação, fornecendo boas práticas que podem ser adaptadas conforme o contexto, mas sem caráter obrigatório. (Recomendações ou boas práticas que ajudam a aplicar a política ou o standard, mas não são obrigatórias)

##### Parte 2: Revisar e priorizar descobertas de auditoria

Na Parte 2 deste laboratório, o foco foi revisar e priorizar as descobertas da auditoria de segurança realizada na empresa. Primeiro, cada vulnerabilidade identificada foi pesquisada para compreender seu tipo, impacto e facilidade de exploração, a fim de determinar quais representavam a maior ameaça à organização. Em seguida, com base nessa análise, foram selecionadas as cinco principais descobertas que a empresa devia tratar prioritariamente, começando pela vulnerabilidade mais crítica. Por fim, a classificação das vulnerabilidades foi registrada em uma tabela, incluindo a vulnerabilidade, a política recomendada para mitigá-la e a justificativa para a posição de cada item na ordem de prioridade.

- Avaliação:

| #  | Vulnerabilidade | Impacto | Probabilidade de Exploração | Criticidade |
|----|----------------|---------|----------------------------|------------|
| 1  | Contas de funcionários inativos ainda habilitadas | Alto – acesso não autorizado a sistemas críticos | Alta – contas existentes podem ser exploradas facilmente | Crítica |
| 2  | Privilégios não autorizados e escalonados | Muito alto – permite alteração de dados e sistemas | Média-alta – depende da descoberta por um usuário mal-intencionado | Crítica |
| 3  | Acesso remoto não seguro | Alto – risco de invasão externa | Alta – acesso remoto é explorável se inseguro | Crítica |
| 4  | Senhas decifradas rapidamente (40% em 6h) | Muito alto – compromete toda autenticação | Alta – vulnerável a ataques de força bruta | Crítica |
| 5  | Expiração de senha não padronizada | Médio – aumenta risco de senha comprometida a longo prazo | Média – depende do comportamento do usuário | Moderada |
| 6  | Arquivos confidenciais sem criptografia | Alto – vazamento de dados sensíveis | Média – depende de acesso físico ou remoto | Alta |
| 7  | Hotspots WEP | Alto – rede vulnerável a interceptação | Alta – WEP é facilmente quebrável | Alta |
| 8  | E-mails confidenciais sem criptografia | Alto – risco de interceptação e vazamento de dados | Média – depende do tráfego de rede | Alta |
| 9  | Logs de detecção de invasão raramente analisados | Médio – intrusões podem passar despercebidas | Média – depende do ataque | Moderada |
| 10 | Dispositivos com dados confidenciais usados para fins pessoais | Alto – risco de vazamento ou malware | Média – depende do comportamento do usuário | Alta |
| 11 | Dispositivos não atendidos e sem logout | Médio – acesso físico indevido possível | Média – depende do ambiente físico | Moderada |
| 12 | Configurações e atualizações inconsistentes | Alto – sistemas vulneráveis a exploits conhecidos | Alta – falha conhecida é explorável | Alta |
| 13 | Regras de firewall muito abertas | Muito alto – permite tráfego não autorizado | Alta – fácil exploração externa | Crítica |
| 14 | Servidores sem atualizações | Alto – vulnerabilidades conhecidas exploráveis | Alta – exploits públicos podem ser usados | Crítica |
| 15 | Servidor Web da intranet permitindo alteração de dados pessoais | Médio – possível corrupção de dados | Média – depende do uso interno | Moderada |

- Priorização:

| #  | Vulnerabilidade | Impacto | Probabilidade de Exploração | Criticidade |
|----|----------------|---------|----------------------------|------------|
| 2  | Privilégios não autorizados e escalados | Muito alto – permite alteração de dados e sistemas | Média-alta – depende da descoberta por um usuário mal-intencionado | Crítica |
| 4  | Senhas decifradas rapidamente (40% em 6h) | Muito alto – compromete toda autenticação | Alta – vulnerável a ataques de força bruta | Crítica |
| 13 | Regras de firewall muito abertas | Muito alto – permite tráfego não autorizado | Alta – fácil exploração externa | Crítica |
| 1  | Contas de funcionários inativos ainda habilitadas | Alto – acesso não autorizado a sistemas críticos | Alta – contas existentes podem ser exploradas facilmente | Crítica |
| 3  | Acesso remoto não seguro | Alto – risco de invasão externa | Alta – acesso remoto é explorável se inseguro | Crítica |
| 14 | Servidores sem atualizações | Alto – vulnerabilidades conhecidas exploráveis | Alta – exploits públicos podem ser usados | Crítica |
| 7  | Hotspots WEP | Alto – rede vulnerável a interceptação | Alta – WEP é facilmente quebrável | Alta |
| 6  | Arquivos confidenciais sem criptografia | Alto – vazamento de dados sensíveis | Média – depende de acesso físico ou remoto | Alta |
| 12 | Configurações e atualizações de dispositivos inconsistentes | Alto – sistemas vulneráveis a exploits conhecidos | Alta – falha conhecida é explorável | Alta |
| 10 | Dispositivos com dados confidenciais usados para fins pessoais | Alto – risco de vazamento ou malware | Média – depende do comportamento do usuário | Alta |
| 8  | E-mails confidenciais sem criptografia | Alto – risco de interceptação e vazamento de dados | Média – depende do tráfego de rede | Alta |
| 5  | Expiração de senha não padronizada | Médio – aumenta risco de senha comprometida a longo prazo | Média – depende do comportamento do usuário | Moderada |
| 9  | Logs de detecção de invasão raramente analisados | Médio – intrusões podem passar despercebidas | Média – depende do ataque | Moderada |
| 11 | Dispositivos não atendidos e sem logout | Médio – acesso físico indevido possível | Média – depende do ambiente físico | Moderada |
| 15 | Servidor Web da intranet permitindo alteração de dados pessoais | Médio – possível corrupção de dados | Média – depende do uso interno | Moderada |

- Classificação: 

| #  | Vulnerabilidade | Política recomendada | Justificativa |
|----|-----------------|-------------------|---------------|
| 2  | Privilégios não autorizados e escalados | Revisar todas as permissões de usuários e ajustar para o mínimo necessário (princípio do menor privilégio) | Impede que usuários acessem ou alterem sistemas e dados sem autorização, reduzindo risco de comprometimento interno |
| 4  | Senhas decifradas rapidamente (40% em 6h) | Implementar senhas fortes, obrigatórias, e autenticação multifator (MFA) | Garante que a autenticação seja mais resistente a ataques de força bruta e protege dados sensíveis |
| 13 | Regras de firewall muito abertas | Revisar e restringir regras de firewall, permitindo apenas o tráfego necessário e bloqueando o restante | Evita que tráfego não autorizado acesse a rede, protegendo sistemas contra ataques externos |
| 1  | Contas de funcionários inativos ainda habilitadas | Desativar ou remover imediatamente todas as contas de ex-funcionários | Evita que contas antigas sejam usadas para acessar sistemas críticos indevidamente |
| 3  | Acesso remoto não seguro | Implementar VPN segura, protocolos criptografados e autenticação forte para acesso remoto | Reduz a chance de invasões externas e protege dados transmitidos pela rede |
| 14 | Servidores sem atualizações | Aplicar regularmente patches de segurança e atualizações críticas nos servidores | Reduz a probabilidade de exploração de vulnerabilidades conhecidas |
| 7  | Hotspots WEP | Substituir criptografia WEP por WPA3 em todos os pontos de acesso sem fio | Protege a rede sem fio contra ataques conhecidos de quebra de criptografia |
| 6  | Arquivos confidenciais sem criptografia | Criptografar todos os arquivos confidenciais em repouso e em trânsito | Minimiza o risco de vazamento de dados em caso de acesso indevido |
| 12 | Configurações e atualizações de dispositivos inconsistentes | Padronizar políticas de configuração e atualização de dispositivos, garantindo que todos estejam atualizados | Evita exploração de vulnerabilidades conhecidas devido a falhas de configuração |
| 10 | Dispositivos com dados confidenciais usados para fins pessoais | Proibir o uso de dispositivos corporativos para uso pessoal ou implementar políticas de separação de dados | Evita vazamento acidental de dados e exposição a malware |
| 8  | E-mails confidenciais sem criptografia | Implementar criptografia de e-mails corporativos e treinamento para envio seguro de informações | Garante que informações sensíveis não sejam interceptadas durante o envio |
| 5  | Expiração de senha não padronizada | Definir política de expiração de senhas consistente e obrigatória | Reduz risco de senhas antigas serem comprometidas |
| 9  | Logs de detecção de invasão raramente analisados | Estabelecer processos regulares de monitoramento e análise de logs de segurança | Permite identificar e responder rapidamente a incidentes de segurança |
| 11 | Dispositivos não atendidos e sem logout | Implementar políticas de bloqueio automático e exigir logout ao se ausentar | Reduz risco de acesso não autorizado a dispositivos deixados sem supervisão |
| 15 | Servidor Web da intranet permitindo alteração de dados pessoais | Restringir alterações de dados sensíveis apenas a usuários autorizados e implementar logs de auditoria | Evita alterações indevidas e mantém rastreabilidade das ações |

##### Parte 3: Desenvolver documentos de políticas

Na Parte 3 deste laboratório, o objetivo foi desenvolver documentos formais de políticas de segurança da informação para a empresa fictícia de serviços de saúde. Essa parte foi dividida em duas etapas: a primeira consistiu em criar uma política de segurança da informação específica para uma das vulnerabilidades identificadas na auditoria, seguindo os elementos essenciais de uma política e mantendo o documento conciso, com no máximo duas páginas. A segunda etapa envolveu a criação de um procedimento detalhado, que ofereceu instruções passo a passo para que os usuários conseguissem aplicar a política corretamente, incluindo todas as informações necessárias para a execução das ações de segurança definidas.

Para esta atividade, foi escolhida a vulnerabilidade **“Privilégios não autorizados e escalonados”**, que havia sido classificada como a mais crítica, apresentando impacto muito alto e probabilidade média-alta de exploração. Com base nessa prioridade, foram desenvolvidos dois documentos: o [policy.md](./policy.md), contendo a política de segurança da informação específica para controlar os privilégios de usuário, e o [procedure.md](./procedure.md), detalhando o procedimento passo a passo para implementar a política e garantir que os acessos fossem concedidos de acordo com o princípio do menor privilégio.

##### Parte 4: Desenvolva um plano para disseminar e avaliar políticas

Na Parte 4 deste laboratório, o objetivo foi desenvolver um plano para disseminar e avaliar as políticas de segurança da informação da ACME Serviços de Saúde. Essa etapa consistiu em documentar um plano de implementação e disseminação, detalhando as tarefas, eventos e ações necessárias para garantir que todos os funcionários compreendessem as políticas de segurança aplicáveis às suas funções. Além disso, o plano especificou os departamentos envolvidos e definiu métodos para avaliar se os indivíduos adquiriram o conhecimento adequado sobre as políticas que impactam suas responsabilidades profissionais. O plano foi elaborado e registrado no arquivo [plan.md](./plan.md).

<a name="item01.03"><h4>1.3 A ética da segurança cibernética</h4></a>[Back to summary](#item01)

⚖️ Ética e Segurança Digital   
A ética é o conjunto de princípios que nos ajuda a diferenciar o certo do errado. No campo da segurança digital, ela guia especialistas a equilibrar a lei, os interesses da empresa e os direitos das pessoas ao tomar decisões difíceis. Muitas vezes, não há resposta óbvia, a conduta correta depende da análise do contexto e da perspectiva ética utilizada.
- 📊 Ética Utilitarista
    - A visão utilitarista, defendida por filósofos como Jeremy Bentham e John Stuart Mill, considera que o valor de uma ação está em suas consequências. Portanto, uma decisão é ética quando gera o maior benefício para o maior número de pessoas, mesmo que não seja a solução perfeita para todos os envolvidos.
- 🛡️ Abordagem de Direitos
    - Segundo essa abordagem, cada indivíduo possui direitos fundamentais — como privacidade, segurança e acesso à verdade — que devem ser respeitados. Nenhuma decisão pode violar esses direitos, e cabe à sociedade aplicar as leis de forma justa e igualitária.
- 🤝 Abordagem de Bem Comum
    - Essa perspectiva entende que o comportamento ético deve fortalecer a comunidade como um todo. As decisões não devem atender apenas a interesses individuais, mas contribuir para metas e valores coletivos, promovendo solidariedade e responsabilidade social.

💻 Os Dez Mandamentos da Ética em Informática   
O Computer Ethics Institute criou dez princípios que funcionam como guia de conduta no uso de computadores:
- Não usar um computador para prejudicar outras pessoas;
- Não interferir no trabalho de computação de outras pessoas;
- Não invadir arquivos de computador de outras pessoas;
- Não usar um computador para roubar;
- Não usar um computador para mentir;
- Não copiar ou usar software proprietário sem pagar;
- Não usar os recursos do computador de outras pessoas sem autorização;
- Não se apropriar de propriedade intelectual alheia;
- Considerar os impactos sociais das suas criações;
- Sempre usar um computador com consideração e respeito aos colegas.

✅ Exemplos de Ações Éticas   
Algumas atitudes reforçam a confiança e o respeito no uso da tecnologia, mostrando como a ética digital deve ser aplicada na prática:
- Creditar fontes em publicações: respeita o princípio de não se apropriar da produção intelectual de outras pessoas.
- Postar mensagens de agradecimento em fóruns ou sistemas internos: segue o mandamento de usar computadores de forma a garantir consideração e respeito pelos colegas.

❌ Exemplos de Ações Antiéticas   
Existem condutas que violam diretamente os princípios éticos e podem gerar riscos tanto pessoais quanto organizacionais:
- Reclamar do trabalho de um colega em um chat privado: infringe o mandamento de não usar computadores para prejudicar outras pessoas.
- Acessar arquivos de clientes para verificar o desempenho de um colega: desrespeita a regra de não bisbilhotar arquivos de outras pessoas.
- Usar credenciais de colegas sem autorização para acessar aplicativos: viola o princípio de não utilizar recursos computacionais de terceiros sem permissão.
- Baixar músicas ou softwares protegidos por direitos autorais sem pagar: fere a regra de não copiar ou usar software proprietário sem licença.
- Alterar o plano de projeto de um colega sem consentimento: quebra o mandamento de não interferir no trabalho de outras pessoas.

🕵️‍♂️ Categorias de Crime Digital   
Os crimes digitais podem ser divididos em três tipos: (1) quando o computador é o alvo do ataque, como em casos de malware e DDoS; (2) quando o computador é usado como ferramenta para cometer fraudes ou roubos; (3) quando o computador apenas armazena dados ligados a um crime, como arquivos ilegais.

🚨 Crescimento do Cibercrime   
Com ferramentas cada vez mais acessíveis, o crime digital cresce em ritmo acelerado, superando a capacidade de criação de novas leis. Nos EUA, órgãos como o IC3 (FBI), a InfraGard e a SIIA atuam para combater essas ameaças, que já são consideradas um problema global.

📜 Tipos de Leis e Regulamentações   
Nos Estados Unidos, três tipos de leis sustentam a segurança digital:
- Leis Estatutárias: criadas pelo Congresso, como a CFAA, que proíbe acessos não autorizados a sistemas.
- Leis Administrativas: aplicadas por órgãos como a FCC e a FTC, voltadas para fraude e propriedade intelectual.
- Direito Comum: baseado em decisões judiciais que criam precedentes.

🏛️ FISMA   
O Federal Information Security Management Act (FISMA) foi criado para reforçar a segurança das informações nos sistemas de tecnologia do governo dos Estados Unidos. Ele exige que todas as agências federais desenvolvam e mantenham um programa robusto de segurança da informação, que inclua inventário atualizado dos sistemas de TI, avaliações periódicas de risco, políticas para redução de vulnerabilidades, treinamentos para colaboradores, testes de controles de segurança, procedimentos de resposta a incidentes e planos de continuidade de operações. Essa lei tornou a segurança digital uma responsabilidade estratégica do governo, impondo padrões mínimos de proteção e responsabilização em caso de falhas.

⚖️ Leis Específicas por Setor   
Além do FISMA, setores estratégicos possuem regulamentações próprias que tratam da proteção de dados sensíveis. 
- A Gramm-Leach-Bliley Act (GLBA) regula instituições financeiras, impondo restrições no compartilhamento de informações de clientes.
- A Sarbanes-Oxley Act (SOX) surgiu após escândalos corporativos e reformulou padrões de contabilidade e auditoria para empresas de capital aberto.
- No setor de pagamentos, o PCI DSS estabelece regras contratuais para proteger dados de cartões de crédito e reduzir fraudes.
- Já no campo da criptografia, o governo dos EUA mantém restrições de importação e exportação, principalmente para evitar que tecnologias sensíveis sejam usadas por estados hostis ou organizações criminosas.

🔒 Privacidade e Proteção de Dados   
Nos EUA não há uma lei federal única de privacidade, mas várias regulamentações:
- ECPA (1986) protege comunicações eletrônicas.
- CFAA (1986) criminaliza acessos não autorizados.
- Privacy Act (1974) regula o uso de informações pessoais por agências federais.
- FOIA garante acesso público a registros governamentais.
- FERPA protege registros educacionais.
- COPPA e CIPA resguardam crianças online.
- VPPA regula o uso de históricos de mídia.
- HIPAA protege dados de saúde.
- SB 1386 (Califórnia) tornou obrigatória a notificação de violações de dados pessoais.

📑 Políticas de Privacidade e PIA   
Para cumprir essas regulamentações, empresas criam políticas de privacidade que estabelecem como lidam com dados de clientes. Além disso, a Privacy Impact Assessment (PIA) ajuda a mapear riscos, analisar práticas, revisar conformidade legal e propor melhorias no tratamento de informações sensíveis.

🌍 Esforços Internacionais contra o Crime Digital   
O combate ao cibercrime exige cooperação global, já que leis variam muito entre países. A Convenção de Budapeste, ratificada por dezenas de nações, foi o primeiro tratado internacional voltado para crimes digitais, abordando fraude, violação de direitos autorais, pornografia infantil e invasões de rede. Organizações como o EPIC também atuam em escala global para proteger a privacidade e promover políticas abertas e transparentes.

<a name="item01.03.01"><h4>1.3.1 Laboratório - Crie seu código pessoal de conduta ética</h4></a>[Back to summary](#item01)

Este laboratório foi desenvolvido em três partes, cada uma composta por várias etapas. Algumas etapas foram documentadas diretamente neste arquivo README, enquanto outras exigiram a criação de arquivos específicos. O objetivo do laboratório foi explorar a tomada de decisão ética no contexto de segurança digital, compreendendo diferentes abordagens, analisando códigos de ética existentes e desenvolvendo um código pessoal de conduta ética.

##### Parte 1: Abordagens de pesquisa para tomada de decisão ética

Nesta parte, o foco foi pesquisar e compreender diferentes abordagens e perspectivas para a tomada de decisão ética, considerando como aplicar princípios éticos em situações complexas e dilemas que podem surgir no trabalho com segurança digital. Abaixo são apresentados os princípios centrais de algumas abordagens éticas:
- **Ética Utilitarista:** O princípio central é o da utilidade ou do bem maior. Uma ação é considerada moralmente correta se produzir a maior quantidade de bem-estar ou felicidade para o maior número de pessoas.
- **Abordagem de Direitos:** Baseia-se no respeito e proteção dos direitos fundamentais e inalienáveis de cada indivíduo. Uma ação é ética se respeitar direitos básicos como privacidade, liberdade, igualdade, dignidade e segurança, mesmo que isso não beneficie a maioria.
- **Bem Comum:** As ações devem promover e proteger condições que beneficiem toda a comunidade, não apenas interesses individuais ou de pequenos grupos. Uma decisão é ética se fortalece o bem-estar coletivo e apoia recursos e instituições essenciais à sociedade, como segurança pública, meio ambiente e confiança social.
- **Equidade ou Justiça:** Todas as pessoas devem ser tratadas de maneira justa, imparcial e equitativa, recebendo o que lhes é devido em termos de direitos, benefícios e responsabilidades. Uma ação é ética se distribui benefícios e encargos de forma justa, com foco em imparcialidade e consistência.

##### Parte 2: Pesquisa Código de Ética

Na segunda parte, o objetivo foi pesquisar dois códigos de ética relevantes para profissionais de TI e segurança digital: o Código de Ética Computacional e o Código de Ética de Segurança Digital. Foram elaboradas duas listas de pelo menos dez princípios cada, organizadas do mais importante ao menos importante, representando os elementos centrais de cada código pesquisado.

- Código de Ética Computacional (Baseado no ACM Code of Ethics and Professional Conduct:):
  1. **Bem-estar da sociedade:** Contribuir para o bem-estar geral e evitar causar danos.  
  2. **Privacidade e confidencialidade:** Proteger informações pessoais e dados sensíveis.  
  3. **Justiça e não discriminação:** Tratar todas as pessoas de forma justa e equitativa.  
  4. **Honestidade e confiabilidade:** Ser transparente, preciso e confiável em todas as atividades profissionais.  
  5. **Propriedade intelectual:** Respeitar direitos autorais, patentes e propriedade intelectual.  
  6. **Confiabilidade em sistemas:** Desenvolver e manter sistemas seguros e confiáveis.  
  7. **Legalidade:** Cumprir leis e regulamentos aplicáveis.  
  8. **Competência profissional:** Manter e aprimorar o conhecimento técnico e ético.  
  9. **Responsabilidade social:** Denunciar práticas antiéticas ou ilegais.  
  10. **Transparência:** Comunicar claramente limitações, riscos e decisões éticas.

- Código de Ética de Segurança Digital (Baseado em boas práticas de segurança da informação (como ISC² e ENISA)):
  1. **Proteção de dados e sistemas:** Garantir a confidencialidade, integridade e disponibilidade da informação.  
  2. **Respeito à privacidade:** Tratar dados pessoais e corporativos com responsabilidade e ética.  
  3. **Evitar danos:** Não explorar vulnerabilidades para benefício próprio ou prejudicar terceiros.  
  4. **Honestidade e transparência:** Comunicar riscos, incidentes e limitações de forma clara e precisa.  
  5. **Cumprimento de leis e regulamentos:** Seguir legislações, normas e políticas aplicáveis à segurança digital.  
  6. **Responsabilidade profissional:** Assumir responsabilidade pelas ações e decisões que impactam a segurança.  
  7. **Confidencialidade corporativa:** Proteger informações sensíveis da empresa e de clientes.  
  8. **Auditoria e monitoramento:** Apoiar processos de auditoria para garantir conformidade e segurança.  
  9. **Desenvolvimento contínuo:** Atualizar conhecimentos técnicos e éticos para acompanhar a evolução da segurança digital.  
  10. **Educação e conscientização:** Promover cultura de segurança entre usuários e colegas.

##### Parte 3: Desenvolva seu próprio código de ética pessoal

Na terceira parte, o objetivo foi desenvolver um código de ética pessoal com base na pesquisa realizada na parte 2. Foi elaborada uma lista de pelo menos dez princípios, organizada do mais importante ao menos importante, que orientava decisões e comportamentos profissionais no contexto de TI e segurança digital, estabelecendo diretrizes para ações aceitáveis e inaceitáveis.

- Código de Ética Pessoal:
  1. **Proteção e integridade da informação:** Garantir que todos os dados e sistemas sob sua responsabilidade sejam mantidos seguros, íntegros e disponíveis, evitando danos a indivíduos, empresas e sociedade.  
  2. **Respeito à privacidade:** Tratar informações pessoais e corporativas com confidencialidade, protegendo os dados contra acessos não autorizados.  
  3. **Justiça e imparcialidade:** Agir de maneira ética, justa e equitativa, garantindo que todos os indivíduos sejam tratados com respeito e sem discriminação.  
  4. **Honestidade e transparência:** Comunicar de forma clara, precisa e verdadeira sobre riscos, incidentes, limitações e decisões relacionadas à segurança.  
  5. **Responsabilidade legal e ética:** Cumprir todas as leis, normas e políticas aplicáveis à tecnologia e à segurança da informação.  
  6. **Propriedade intelectual e recursos:** Respeitar direitos autorais, patentes e recursos digitais de terceiros.  
  7. **Competência profissional:** Manter e aprimorar constantemente as habilidades técnicas e éticas necessárias à prática da segurança digital.  
  8. **Prevenção de danos:** Evitar ações que possam prejudicar pessoas, empresas ou sistemas, mesmo em situações complexas ou de pressão.  
  9. **Conscientização e educação:** Promover cultura de segurança entre colegas e usuários, orientando sobre boas práticas e riscos digitais.  
  10. **Monitoramento e melhoria contínua:** Participar de auditorias, revisões e avaliações para garantir que políticas e práticas éticas estejam sendo corretamente aplicadas e aprimoradas.

##### Questões para Reflexão

Para finalizar o laboratório as três seguintes questões sobre ética foram respondidas:
- Há um incidente de segurança cibernética que você se lembra onde a empresa agiu de forma ética ou não? Explique: Um exemplo é o incidente da violação de dados da empresa Equifax em 2017. A empresa não agiu de forma totalmente ética ao atrasar a divulgação da violação, expondo informações pessoais de milhões de clientes a risco por várias semanas. Essa ação demonstrou falha em priorizar a transparência e a proteção dos dados dos usuários, valores centrais da ética em segurança digital.
- O que é um ponto fraco ou inconveniente da ética utilitarista?: Um ponto fraco da ética utilitarista é que ela pode justificar ações que violam direitos individuais se essas ações forem percebidas como promovendo o bem maior. Isso pode levar a decisões que beneficiam a maioria, mas prejudicam minorias ou indivíduos, criando dilemas éticos complexos e potencialmente injustos.
- Com base em sua lista de código de ética, qual é o item mais desafiador para implementar?: O item mais desafiador para implementar é **garantir a proteção e a confidencialidade de todos os dados e sistemas**. Isso porque envolve múltiplos fatores, incluindo políticas organizacionais, treinamento de usuários, adoção de tecnologias seguras e monitoramento contínuo. Além disso, exige atenção constante para prevenir acessos não autorizados, violações acidentais e ataques externos, tornando sua aplicação consistente um desafio contínuo.

<a name="item01.03.02"><h4>1.3.2 Laboratório - Recomendar medidas de segurança para atender aos requisitos de conformidade</h4></a>[Back to summary](#item01)

Este laboratório foi desenvolvido em duas partes, cada uma composta por várias etapas. Algumas etapas foram documentadas diretamente neste arquivo README, enquanto outras exigiram a criação de arquivos específicos. O objetivo do laboratório foi compreender os requisitos de conformidade da HIPAA, com foco na regra de segurança, analisando as proteções e normas técnicas aplicáveis às informações de saúde protegidas eletrônicas (EPHI), e, a partir dessa análise, propor recomendações de medidas de segurança para atender aos padrões HIPAA e reforçar a proteção das informações.

##### Parte 1: Investigar os requisitos de conformidade

Na Parte 1 desse laboratório, o objetivo foi compreender os requisitos de conformidade da HIPAA, com foco na regra de segurança para a proteção de informações de saúde protegidas eletrônicas (EPHI). Na Etapa 1, foram pesquisadas as proteções da HIPAA, identificando os principais elementos e diretrizes gerais que todas as empresas de serviços de saúde devem seguir. Na Etapa 2, foram analisadas detalhadamente as normas técnicas 164.312 (a) a (e) (2) (ii), incluindo seus padrões e especificações de implementação, preenchendo uma tabela resumida que destaca os mecanismos exigidos para garantir confidencialidade, integridade e disponibilidade das informações de saúde.

O objetivo da primeira etapa foi pesquisar e compreender as proteções da regra de segurança da HIPAA. Foram consultadas fontes online, incluindo uma visão geral disponível no site [compliancy-group.com](compliancy-group.com), para identificar os principais elementos da regra de segurança e entender como ela orienta a proteção das informações de saúde protegidas eletrônicas (EPHI). As informações obtidas serviram de base para responder às seguintes questões:
- Quais são os três exemplos de informações de saúde protegidas?
  1. **Histórico médico**: registros de consultas, diagnósticos e tratamentos de pacientes.  
  2. **Informações de pagamento de saúde**: dados relacionados a seguros, faturas e pagamentos de serviços médicos.  
  3. **Identificadores pessoais ligados à saúde**: como nome, endereço, número de telefone, número da segurança social ou qualquer informação que possa identificar um paciente em contexto médico.
- Resuma as quatro regras gerais que todas as empresas de serviços de saúde devem seguir em relação à regra de segurança:
  1. **Garantir a confidencialidade, integridade e disponibilidade das informações de saúde protegidas (EPHI)**: proteger os dados contra acessos não autorizados, alterações ou perdas.  
  2. **Identificar e proteger contra ameaças razoáveis à segurança das EPHI**: implementar medidas para prevenir riscos internos e externos.  
  3. **Implementar salvaguardas apropriadas para proteger as EPHI**: adotar controles administrativos, físicos e técnicos adequados ao ambiente da organização.  
  4. **Monitorar e manter políticas e procedimentos de segurança**: revisar regularmente as práticas de segurança para garantir conformidade contínua e atualização frente a novas ameaças.
- Quais são os três tipos de proteções que compõem a regra de segurança HIPAA?
  1. **Proteções administrativas**: políticas e procedimentos que gerenciam a seleção, desenvolvimento, implementação e manutenção das medidas de segurança.  
  2. **Proteções físicas**: controles para proteger instalações, equipamentos e mídias que armazenam informações de saúde protegidas (EPHI) contra acesso não autorizado e danos.  
  3. **Proteções técnicas**: medidas tecnológicas que controlam o acesso e protegem a integridade e a confidencialidade das EPHI, incluindo autenticação, criptografia e monitoramento de sistemas.

O objetivo da etapa 2 foi analisar os documentos que detalham as normas técnicas de segurança da HIPAA, especificamente a seção 164.312 (a) a (e) (2) (ii), relacionadas ao tratamento das informações de saúde protegidas eletrônicas (EPHI). Foram consultadas fontes adicionais na Internet para esclarecer dúvidas e complementar a análise. Com base nessa revisão, foram identificados os padrões de segurança e suas especificações de implementação, preenchendo a tabela correspondente. Observa-se que dois dos padrões não possuem especificações de implementação.

| Norma HIPAA        | Nome do Padrão                               | Especificações de Implementação |
|-------------------|---------------------------------------------|--------------------------------|
| 164.312(a)(1)      | Controle de acesso                          | Identificar e autenticar usuários, limitar acesso às EPHI com base em funções |
| 164.312(b)         | Auditoria de registros                       | Implementar mecanismos para registrar e monitorar atividades de acesso às EPHI |
| 164.312(c)(1)      | Integridade da informação                    | Implementar mecanismos para garantir que as EPHI não sejam alteradas ou destruídas de forma não autorizada |
| 164.312(d)         | Transmissão segura de informações           | Nenhuma especificação de implementação definida |
| 164.312(e)(1)      | Autenticação de usuários                     | Implementar procedimentos para verificar que usuários são quem afirmam ser |

##### Parte 2: Recomendar soluções de conformidade

O objetivo da parte 2 foi propor recomendações de medidas de segurança para atender aos padrões e especificações técnicas da HIPAA. Com base no conhecimento adquirido durante o curso e em pesquisas adicionais na Internet, foram identificadas soluções práticas que permitem às empresas de serviços de saúde cumprir os requisitos de conformidade e reforçar a proteção das informações de saúde protegidas eletrônicas (EPHI). As recomendações foram organizadas em uma tabela para cada norma, destacando como cada medida atende aos padrões da HIPAA.

| Norma HIPAA        | Nome do Padrão                               | Recomendações de Medidas de Segurança |
|-------------------|---------------------------------------------|--------------------------------------|
| 164.312(a)(1)      | Controle de acesso                          | Implementar autenticação forte de usuários, limitar acesso baseado em funções e revisar permissões regularmente |
| 164.312(a)(2)(i)   | Controle de acesso – supervisão de acesso | Estabelecer registros de acesso, monitoramento contínuo e alertas para tentativas não autorizadas |
| 164.312(a)(2)(ii)  | Controle de acesso – autorização           | Garantir que somente usuários autorizados possam acessar ou modificar EPHI, aplicando o princípio do menor privilégio |
| 164.312(a)(2)(iii) | Controle de acesso – modificação           | Implementar auditoria de alterações em EPHI e exigir aprovação de alterações críticas |
| 164.312(a)(2)(iv)  | Controle de acesso – retenção de registros | Armazenar logs de acesso e alterações de forma segura por períodos regulamentares |
| 164.312(b)         | Auditoria de registros                       | Implementar sistemas de logging e análise periódica de logs para identificar acessos não autorizados |
| 164.312(c)(1)      | Integridade da informação                    | Usar mecanismos de verificação e hash para garantir que EPHI não seja alterada indevidamente |
| 164.312(c)(2)      | Integridade – mecanismos de correção        | Estabelecer processos de correção de dados incorretos ou corrompidos e monitoramento de integridade |
| 164.312(d)         | Transmissão segura de informações           | Utilizar criptografia (TLS/SSL) para transmissões de EPHI e redes seguras de VPN |
| 164.312(e)(1)      | Autenticação de usuários                     | Implementar autenticação multifator (MFA) para todos os acessos a sistemas que armazenam EPHI |
| 164.312(e)(1)(i)   | Autenticação – identificação de usuários    | Exigir nomes de usuário únicos e mecanismos de verificação de identidade robustos |
| 164.312(e)(1)(ii)  | Autenticação – prova de identidade          | Aplicar métodos de prova de identidade, como tokens físicos, certificados digitais ou biometria |

##### Questões para Reflexão

Para finalizar o laboratório as três seguintes questões sobre conformidade foram respondidas:
- 1.Há muitas estruturas de conformidade que impõem requisitos à segurança da rede. A relevância dessas estruturas depende do tipo de negócio e das atividades empresariais que são conduzidas. O PCI-DSS é uma estrutura de conformidade para empresas que aceitam cartões de crédito para pagamento. Pesquise na Web os objetivos de controle do PCI-DSS. Cada objetivo tem um ou mais requisitos. Em suas pesquisas, preencha a tabela abaixo:

| Objetivo de Controle PCI-DSS | Requisitos PCI-DSS correspondentes |
|------------------------------|-------------------------------------|
| **1. Estabelecer e manter uma rede segura e sistemas** | 1. Instalar e manter uma configuração de firewall para proteger os dados do titular do cartão.<br> 2. Não usar as senhas padrão de fornecedor ou outras configurações de segurança padrão. |
| **2. Proteger dados do titular do cartão** | 3. Proteger os dados armazenados do titular do cartão.<br> 4. Criptografar a transmissão dos dados do titular do cartão através de redes abertas ou públicas. |
| **3. Manter um programa de gerenciamento de vulnerabilidades** | 5. Proteger todos os sistemas contra malware, com uso regular de software antivírus.<br> 6. Desenvolver e manter sistemas e aplicações seguras, corrigindo vulnerabilidades e aplicando patches. |
| **4. Implementar controles fortes de acesso** | 7. Restringir acesso aos dados só ao pessoal que realmente necessita ("need-to-know").<br> 8. Atribuir uma identificação única a cada pessoa com acesso ao sistema que manipula dados do cartão.<br> 9. Restringir acesso físico aos dados do titular do cartão. |
| **5. Monitorar e testar redes regularmente** | 10. Monitorar e registrar todo acesso a recursos de rede e dados do titular do cartão.<br> 11. Testar regularmente os sistemas e processos de segurança.|
| **6. Manter uma política de segurança da informação geral** | 12. Manter uma política que trate da segurança da informação para todos os funcionários. |

- Como esses requisitos de conformidade se comparam aos requisitos da HIPAA que você forneceu acima? Os requisitos do PCI-DSS e da HIPAA apresentam muitas semelhanças, embora tenham finalidades diferentes. O PCI-DSS é focado na proteção de dados de titulares de cartão de crédito, enquanto a HIPAA protege informações de saúde. Apesar disso, ambos se organizam em torno de princípios comuns de segurança da informação.
- As estruturas de conformidade, como HIPAA e PCI-DSS, pertencem não apenas às grandes empresas, mas também às pequenas. Por exemplo, todos os profissionais médicos devem cumprir a HIPAA. Todas as empresas que utilizam cartões de crédito devem estar em conformidade com o PCI-DSS. Na verdade, as práticas médicas que aceitam cartões de crédito devem cumprir ambas. De acordo com a sua experiência de pesquisa neste laboratório, quais são alguns dos principais desafios para a conformidade de empresas menores? Empresas menores enfrentam desafios significativos para alcançar conformidade com normas como HIPAA e PCI-DSS. Alguns dos principais são:
  - Recursos financeiros limitados: soluções de segurança (firewalls avançados, criptografia, monitoramento contínuo) podem ser caras, tornando a implementação difícil para pequenas empresas.
  - Falta de pessoal especializado: muitas vezes não há equipes dedicadas de segurança ou conformidade, e os mesmos profissionais acumulam várias funções.
  - Complexidade regulatória: entender e interpretar requisitos técnicos e legais exige conhecimento especializado, o que pode ser um obstáculo para negócios menores.
  - Manutenção contínua: conformidade não é um evento único, mas um processo contínuo de monitoramento, auditoria e atualização, o que demanda tempo e esforço.
  - Treinamento de funcionários: pequenas empresas podem não ter programas estruturados de capacitação, mas ainda precisam garantir que todos compreendam práticas seguras e requisitos de conformidade.
  - Escalabilidade das soluções: muitas ferramentas de conformidade são pensadas para grandes empresas e podem não ser facilmente adaptáveis ou economicamente viáveis para pequenos negócios.

<a name="item01.04"><h4>1.4 Estrutura de gerenciamento de segurança de TI</h4></a>[Back to summary](#item01)

📘 ISO/IEC 27000   
A série ISO/IEC 27000 reúne padrões internacionais de segurança da informação publicados pela ISO e pela IEC. O objetivo é orientar empresas a implementar um Sistema de Gerenciamento de Segurança da Informação (ISMS), que abrange controles administrativos, técnicos e operacionais para proteger dados. Diferente do modelo OSI, a ISO 27000 organiza a segurança em domínios interconectados, e não em camadas hierárquicas, tornando o modelo flexível e aplicável a diferentes tipos de organizações.

🧩 Os 12 Domínios da ISO 27000   
Os 12 domínios estabelecem a base para políticas e práticas eficazes de segurança. Cada domínio é essencial e se conecta aos demais, garantindo uma visão integrada da proteção da informação. São eles:
- Avaliação de riscos: Identificação e análise de ameaças potenciais.
- Política de segurança: Regras que definem como os dados podem ser usados e protegidos.
- Organização da segurança da informação: Estrutura de governança para gerenciar a segurança.
- Gerenciamento de ativos: Inventário e classificação dos ativos de informação.
- Segurança de recursos humanos: Medidas de segurança ligadas a admissões, transferências e desligamentos.
- Segurança física e ambiental: Proteção das instalações e do ambiente físico.
- Gerenciamento de operações e comunicações: Controles técnicos de sistemas e redes.
- Aquisição, desenvolvimento e manutenção de sistemas de informação: Segurança integrada ao ciclo de vida dos sistemas.
- Controle de acesso: Restrições de acesso a sistemas, aplicativos e dados.
- Gerenciamento de incidentes de segurança da informação: Detecção e resposta a incidentes.
- Continuidade de negócios: Planos para manter ou recuperar operações críticas.
- Conformidade: Garantia de aderência a normas e regulamentos.

🎯 Objetivos de Controle e Controles   
A ISO 27001 define os objetivos de controle, que são requisitos de alto nível usados inclusive como checklist de auditoria. Já a ISO 27002 detalha os controles práticos que permitem atingir esses objetivos. Exemplos:
- Acesso não autorizado: restringir o acesso com base em políticas.
- Vulnerabilidades de software: definir regras claras para instalação de programas.
- Gestão de incidentes: exigir que funcionários relatem fraquezas de segurança.
- Proteção de dados confidenciais: adotar políticas como a de “mesa limpa”.

Quando a empresa é aprovada em auditorias, ganha credibilidade e confiança no mercado.

📑 Declaração de Aplicabilidade (SOA)   
Para adaptar a ISO 27000 ao seu contexto, as empresas elaboram a SOA (Statement of Applicability). Esse documento seleciona quais domínios, objetivos e controles serão aplicados de acordo com as prioridades da organização. O foco é sempre equilibrar os princípios de confidencialidade, integridade e disponibilidade em três estados dos dados:
- Em processo;
- Em repouso (armazenamento);
- Em trânsito (transmissão).

A responsabilidade por cada tipo de controle pode ser distribuída entre diferentes equipes: rede, desenvolvimento, suporte ou gestão.

👩‍💻 Estrutura de Trabalho do NIST   
O NIST (National Institute of Standards and Technologies) desenvolveu a National Cybersecurity Workforce Framework, que organiza funções de segurança digital em sete categorias:
- Operar e manter: Suporte, administração e manutenção da infraestrutura de TI.
- Proteger e defender: Identificação e mitigação de ameaças em sistemas e redes.
- Investigar: Análise de incidentes e ataques digitais.
- Coletar e operar: Condução de operações especializadas e coleta de inteligência.
- Analisar: Avaliação de informações de segurança para gerar inteligência útil.
- Supervisionar e governar: Liderança, gerenciamento e definição de políticas de segurança.
- Provisão segura: Criação, aquisição e implementação de sistemas de TI seguros.

Essa divisão ajuda empresas a mapear responsabilidades, desenvolver competências e estruturar equipes de segurança digital de forma eficiente.

🛡️ Controles do CIS   
O Center for Internet Security (CIS) propôs controles em três níveis, ajustados aos recursos e maturidade das empresas:
- Básicos: inventário de hardware e software, gestão de vulnerabilidades, privilégios administrativos, auditoria de registros.
- Fundamentais: proteção de e-mail e navegador, defesa contra malware, controle de portas e protocolos, recuperação de desastres, defesa de limites.
- Organizacionais: conscientização em segurança, segurança em software de aplicativos, resposta a incidentes, testes de penetração e exercícios simulados.

☁️ CSA e Segurança em Nuvem   
A Cloud Security Alliance (CSA) fornece a Cloud Controls Matrix (CCM), que mapeia 197 objetivos de controle em 17 domínios, cobrindo governança, risco, segurança móvel, recursos humanos e muito mais. O CCM é amplamente reconhecido como padrão de fato para segurança e conformidade em nuvem, oferecendo às empresas confiança na escolha e avaliação de provedores.

📜 Auditorias e Certificações   
Para comprovar sua segurança, provedores e empresas podem passar por auditorias e certificações:
- SSAE 18 / SOC: auditorias independentes que avaliam controles de segurança, confidencialidade, disponibilidade e privacidade. Relatórios podem ser:
    - Tipo I: validade em um momento específico.
    - Tipo II: controles testados por pelo menos seis meses.
- CMMC (Cybersecurity Maturity Model Certification): usada pelo Departamento de Defesa dos EUA, possui cinco níveis, que vão desde práticas básicas de higiene cibernética até capacidades avançadas contra ameaças persistentes (APTs).

<a name="item01.05"><h4>1.5 Resumo de Governança e conformidade</h4></a>[Back to summary](#item01)

🏛️ Governança e Políticas de Segurança Digital   
A governança de segurança de TI define quem pode tomar decisões sobre os riscos digitais em uma empresa. Ela garante responsabilidade, supervisão e alinhamento das estratégias de segurança com os objetivos comerciais e regulamentações.
- Programas de administração de dados incluem papéis como: diretor de segurança digital, controlador, processador e guardião dos dados.
- Políticas de segurança digital são documentos de alto nível que definem metas, medidas, requisitos e conformidade regulatória.
- Tipos de políticas:
    - Alto nível: política de segurança, política específica do sistema e política específica do procedimento.
    - Específicas: identificação e autenticação, senha, uso aceitável, manutenção de registros, proteção de dados, emergência e incidentes organizacionais.
- Proteção de dados de recursos humanos envolve: verificação de antecedentes, integração/saída de funcionários, limpeza de mesa, necessidade de saber, separação de tarefas, férias obrigatórias e rotações de trabalho.

⚖️ Ética em Segurança Digital   
O especialista em segurança digital precisa equilibrar leis, interesses da empresa e ética.
- Abordagens éticas:
    - Utilitarista: avalia se uma ação é ética considerando se gera o maior benefício ou menor dano para o maior número de pessoas.
    - Direitos: foca na proteção da autonomia e direitos individuais, garantindo que não sejam violados por outros.
    - Bem comum: prioriza ações que promovam o benefício coletivo e a segurança de toda a comunidade.
- Dez mandamentos da ética em informática: não prejudicar outros, não bisbilhotar arquivos, não roubar dados ou software, não interferir no trabalho alheio, respeitar os recursos de TI, considerar as consequências de programas criados, entre outros.

🖥️ Leis e Crimes Digitais   
Os crimes digitais se dividem em três categorias: direcionados por computador, assistidos por computador e incidentes com computadores.
- Nos EUA, leis primárias incluem: estatutária, administrativa e comum.
- FISMA regula sistemas de TI de agências federais.
- Setores com leis específicas: finanças (GLBA), contabilidade corporativa (SOX), cartões de crédito (PCI DSS) e criptografia.
- Outras leis importantes: ECPA, CFAA, Lei de Privacidade de 1974, FOIA, FERPA, COPPA, CIPA, VPPA, HIPAA e PIA.
- Convenção sobre crime digital: tratado internacional ratificado por 65 estados para combater violações de direitos autorais, fraude, pornografia infantil e ataques a redes.

🧩 Domínios e Controles ISO 27000   
Os 12 domínios da ISO 27000 fornecem a base para políticas e práticas de segurança integradas:
- Avaliação de riscos, política de segurança, organização da segurança da informação, gerenciamento de ativos, segurança de recursos humanos, segurança física e ambiental, gerenciamento de operações e comunicações, aquisição/desenvolvimento/manutenção de sistemas, controle de acesso, gerenciamento de incidentes, continuidade de negócios e conformidade.
- Objetivos de controle: definem requisitos de alto nível para o Sistema de Gerenciamento de Segurança da Informação (ISMS).
- Controles: mostram como atingir os objetivos e incluem diretrizes para implementar, manter e melhorar a segurança da informação.
- Aplicação eficiente: empresas adaptam domínios, objetivos e controles de acordo com prioridades de confidencialidade, integridade e disponibilidade.
- Controles ISO consideram dados em processo, armazenados e em trânsito.

👩‍💻 Frameworks e Estruturas de Referência   
- NIST: National Cybersecurity Workforce Framework organiza funções de segurança em categorias para apoiar contratação e desenvolvimento de profissionais.
- CIS: Controles essenciais divididos em básicos, fundamentais e organizacionais para empresas com diferentes recursos e experiência em segurança.
- CSA CCM: Matriz de controles em nuvem que atende padrões, melhores práticas e regulamentações, considerada referência para segurança de provedores de nuvem.
- Relatórios de atestado (SSAE/SOC): verificam se controles estão em vigor e operacionais (Tipo I e Tipo II).
- CMMC: cinco níveis de certificação para empresas que prestam serviços ao Departamento de Defesa dos EUA, garantindo higiene cibernética básica até práticas avançadas de detecção e resposta a ameaças.

✅ Resumo Final   
A conclusão central do módulo é que segurança digital não é apenas tecnologia: envolve governança, políticas, ética, conformidade legal e frameworks de referência. Um profissional de segurança digital precisa integrar esses elementos para proteger informações, alinhar processos aos objetivos da empresa e agir de maneira ética e responsável.