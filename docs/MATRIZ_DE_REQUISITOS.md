# Matriz de requisitos — Desenvolvimento Mobile

**Base:** requisitos do texto fornecido no prompt. `Roteiro(1).pdf` não estava no workspace; as páginas e critérios abaixo reproduzem a referência fornecida, sem conferência direta do PDF.

**Estados:** “Fonte presente; validação bloqueada” indica implementação escrita, não funcionamento comprovado. A coluna evidência só será atualizada após execução real.

| ID | Roteiro / página | Requisito individual | Arquivo(s) | Procedimento | Resultado | Evidência | Estado |
|---|---|---|---|---|---|---|---|
| MOB-R01-01 | R1, 2–4 | Criar Activity inicial em Java | `android-native/app/src/main/java/.../MainActivity.java` | Abrir no Android Studio e iniciar | Bloqueado: JDK/Gradle/IDE indisponíveis | — | Fonte presente; validação bloqueada |
| MOB-R01-02 | R1, 2–4 | Criar layout XML da Activity | `android-native/app/src/main/res/layout/activity_main.xml` | Inspecionar e renderizar layout | Build não executado | — | Fonte presente; validação bloqueada |
| MOB-R01-03 | R1, 2–4 | Mostrar nome do app | `res/values/strings.xml`, `AndroidManifest.xml` | Conferir rótulo instalado | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R01-04 | R1, 2–4 | Mostrar saudação personalizada | `res/layout/activity_main.xml`, `res/values/strings.xml` | Iniciar app e conferir tela | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R01-05 | R1, 2–4 | Declarar Activities e launcher no Manifest | `android-native/app/src/main/AndroidManifest.xml` | Sincronizar e iniciar | Bloqueado | — | Fonte presente; validação bloqueada |
| MOB-R01-06 | R1, 2–4 | Configurar projeto e módulo Gradle | `android-native/settings.gradle`, `build.gradle`, `app/build.gradle` | Sincronizar Gradle | Bloqueado | — | Fonte presente; validação bloqueada |
| MOB-R01-07 | R1, 2–4 | Explicar Android Studio, Activity, XML, Gradle, emulador e pastas | `docs/relatorios/R01_Android_Studio.md` | Revisar relatório | Texto criado; PDF não conferido | — | Fonte presente; conferência acadêmica pendente |
| MOB-R01-08 | R1, 2–4 | Registrar ferramentas/versões do ambiente usado | `docs/STATUS_DE_EXECUCAO.md`, relatório R1 | Conferir ambiente instalado | Ferramentas ausentes; versões não observadas | — | Bloqueado |
| MOB-R01-09 | R1, 2–4 | Sincronizar e compilar projeto | projeto `android-native/` | Android Studio/Gradle | Não executado | — | Bloqueado |
| MOB-R01-10 | R1, 2–4 | Executar Activity e observar saudação | projeto `android-native/` | AVD/dispositivo | Não executado | — | Bloqueado |
| MOB-R01-11 | R1, 2–4 | Capturar Android Studio e app executado | `docs/evidencias/capturas-finais/` | Capturar telas reais | Pendente | Pendente | Não executado |
| MOB-R02-01 | R2, 5–7 | Apresentar título do sistema | `res/layout/activity_login.xml` | Conferir tela | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R02-02 | R2, 5–7 | Usar `TextView` para títulos/rótulos | `res/layout/activity_login.xml` | Inspecionar XML | Presente no XML; renderização pendente | — | Fonte presente; validação bloqueada |
| MOB-R02-03 | R2, 5–7 | Campo de e-mail com `EditText` | `res/layout/activity_login.xml` | Inspecionar e digitar | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R02-04 | R2, 5–7 | Campo de senha com `EditText` | `res/layout/activity_login.xml` | Inspecionar e digitar | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R02-05 | R2, 5–7 | Botão Entrar | `res/layout/activity_login.xml`, `LoginActivity.java` | Acionar botão | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R02-06 | R2, 5–7 | Usar `LinearLayout` em XML | `res/layout/activity_login.xml` | Inspecionar XML | Presente no XML; build pendente | — | Fonte presente; validação bloqueada |
| MOB-R02-07 | R2, 5–7 | Abrir teclado apropriado para e-mail | `res/layout/activity_login.xml` | Focar campo no aparelho | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R02-08 | R2, 5–7 | Ocultar caracteres da senha | `res/layout/activity_login.xml` | Digitar senha fictícia | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R02-09 | R2, 5–7 | Tratar e-mail vazio | `LoginActivity.java`, `InputValidators.java` | Enviar vazio | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R02-14 | R2, 5–7 | Rejeitar e-mail inválido com feedback no campo | `LoginActivity.java`, `InputValidators.java` | Enviar e-mail malformado | Regra coberta em teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R02-10 | R2, 5–7 | Tratar senha vazia | `LoginActivity.java`, `InputValidators.java` | Enviar senha vazia | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R02-11 | R2, 5–7 | Dar feedback para dados preenchidos sem alegar autenticação remota | `LoginActivity.java` | Enviar dados fictícios | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R02-12 | R2, 5–7 | Testar foco, teclado, tela pequena e rotação | relatório R2 | Executar em aparelho | Não executado | Pendente | Bloqueado |
| MOB-R02-13 | R2, 5–7 | Relatar código, componentes, testes e captura | `docs/relatorios/R02_Login_XML.md` | Revisar após execução | Relatório criado; captura pendente | — | Parcial; evidências bloqueadas |
| MOB-R03-01 | R3, 8–9 | Criar `MaterialApp` | `flutter-mobile/lib/main.dart` | `flutter analyze` | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R03-02 | R3, 8–9 | Usar `Scaffold` | `lib/screens/roteiro03_login_screen.dart` | Executar widget | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R03-03 | R3, 8–9 | Usar `TextField` para e-mail | `lib/screens/roteiro03_login_screen.dart` | Renderizar e digitar | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R03-04 | R3, 8–9 | Usar `TextField` para senha | `lib/screens/roteiro03_login_screen.dart` | Renderizar e digitar | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R03-05 | R3, 8–9 | Ocultar senha digitada | `lib/screens/roteiro03_login_screen.dart` | Digitar senha fictícia | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R03-06 | R3, 8–9 | Usar `ElevatedButton` Login | `lib/screens/roteiro03_login_screen.dart` | Acionar botão | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R03-07 | R3, 8–9 | Atualizar interface com gerenciamento simples de estado | `lib/screens/roteiro03_login_screen.dart` | Submeter e observar feedback | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R03-08 | R3, 8–9 | Validar campos vazios e formato de e-mail | `lib/screens/roteiro03_login_screen.dart` | Testes de widget e aparelho | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R03-09 | R3, 8–9 | Mostrar boas-vindas demonstrativas após dados válidos | `lib/screens/roteiro03_login_screen.dart` | Enviar dados fictícios válidos | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R03-10 | R3, 8–9 | Liberar controllers | `lib/screens/roteiro03_login_screen.dart` | Revisar `dispose`/analisar | Método presente; análise pendente | — | Fonte presente; validação bloqueada |
| MOB-R03-11 | R3, 8–9 | Adaptar layout a tamanhos distintos | `lib/screens/roteiro03_login_screen.dart` | Testar tela pequena/grande | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R03-12 | R3, 8–9 | Disponibilizar exemplo DartPad independente | `dartpad/roteiro_03_login.dart` | Executar DartPad em modo Flutter | Bloqueado: sem validação online | Pendente | Não executado |
| MOB-R03-13 | R3, 8–9 | Testar login inválido, válido e navegação | `flutter-mobile/test/widget_test.dart` | `flutter test` | Testes escritos; execução bloqueada | — | Não executado |
| MOB-R03-14 | R3, 8–9 | Documentar widgets, resultados e comparação tecnológica | `docs/relatorios/R03_Login_Flutter.md` | Revisar após execução | Relatório criado; evidência pendente | — | Parcial; evidências bloqueadas |
| MOB-R04-01 | R4, 10–11 | Opção Cadastro | `res/layout/activity_menu.xml`, `MenuActivity.java` | Acionar e verificar navegação | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R04-02 | R4, 10–11 | Opção Consultar | `res/layout/activity_menu.xml`, `MenuActivity.java` | Acionar e verificar dado local | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R04-03 | R4, 10–11 | Opção Configurações | `res/layout/activity_menu.xml`, `SettingsActivity.java` | Abrir e voltar | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R04-04 | R4, 10–11 | Opção Sair | `res/layout/activity_menu.xml`, `MenuActivity.java` | Acionar e observar retorno | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R04-05 | R4, 10–11 | Cada opção deve ser botão nativo | `res/layout/activity_menu.xml` | Inspecionar e tocar | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R04-06 | R4, 10–11 | Apresentar ícones Android apropriados | `res/drawable/ic_*.xml`, `activity_menu.xml` | Renderizar menu | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R04-07 | R4, 10–11 | Preservar navegação de retorno sem encerrar processo à força | `MenuActivity.java`, `SettingsActivity.java` | Testar voltar/sair | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R04-08 | R4, 10–11 | Documentar opções, navegação, testes e print | `docs/relatorios/R04_Menu_XML.md` | Executar e anexar evidência | Print pendente | Pendente | Parcial; evidências bloqueadas |
| MOB-R05-01 | R5, 12–13 | Exibir pergunta “Quais tecnologias você conhece?” | `res/layout/activity_checkbox.xml` | Conferir tela | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R05-02 | R5, 12–13 | Opção CheckBox Java | `res/layout/activity_checkbox.xml` | Selecionar isoladamente | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R05-03 | R5, 12–13 | Opção CheckBox Kotlin | `res/layout/activity_checkbox.xml` | Selecionar isoladamente | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R05-04 | R5, 12–13 | Opção CheckBox Flutter | `res/layout/activity_checkbox.xml` | Selecionar isoladamente | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R05-05 | R5, 12–13 | Opção CheckBox Python | `res/layout/activity_checkbox.xml` | Selecionar isoladamente | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R05-06 | R5, 12–13 | Botão “Verificar Resposta” lê as quatro seleções | `CheckboxActivity.java`, XML | Acionar após selecionar | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R05-07 | R5, 12–13 | Listar todas as seleções realizadas | `TechnologySelectionFormatter.java` | Testar de 1 a 4 escolhas | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R05-08 | R5, 12–13 | Nenhuma opção pede uma seleção | `TechnologySelectionFormatter.java` | Verificar sem seleção | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R05-09 | R5, 12–13 | Alteração após verificação reflete no próximo resultado | `CheckboxActivity.java` | Verificar, alterar e verificar novamente | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R05-10 | R5, 12–13 | Testar isolados, combinações de 2/3/4 e vazio | teste Java do formatador e app | JUnit e interação em aparelho | Testes parciais escritos; bloqueado | — | Não executado |
| MOB-R05-11 | R5, 12–13 | Documentar XML, Java, lógica, casos e print | `docs/relatorios/R05_CheckBox.md` | Executar e revisar relatório | Print/resultados pendentes | Pendente | Parcial; evidências bloqueadas |
| MOB-R06-01 | R6, 14 | Campo para nome | `res/layout/activity_preferences.xml` | Digitar nome fictício | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R06-02 | R6, 14 | Botão Salvar | `activity_preferences.xml`, `PreferencesActivity.java` | Acionar botão | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R06-03 | R6, 14 | Área de exibição e feedback do nome | `activity_preferences.xml`, `PreferencesActivity.java` | Salvar e ler feedback | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R06-04 | R6, 14 | Validar nome vazio e normalizar espaços externos | `InputValidators.java`, `PreferencesActivity.java` | Testar vazio e espaços extras | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R06-05 | R6, 14 | Usar API nativa SharedPreferences | `PreferencesActivity.java` | Inspecionar e executar | Código presente; build bloqueado | — | Fonte presente; validação bloqueada |
| MOB-R06-06 | R6, 14 | Usar arquivo e chave identificáveis/constantes | `PreferencesActivity.java` | Inspecionar constantes | Código presente | — | Fonte presente; validação bloqueada |
| MOB-R06-07 | R6, 14 | Recuperar valor automaticamente ao abrir tela | `PreferencesActivity.java` | Abrir com preferência previamente gravada | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R06-08 | R6, 14 | Persistir após encerrar e reabrir app | `PreferencesActivity.java` | Salvar, fechar app, reabrir | Bloqueado: sem emulador/dispositivo | Pendente | Não executado |
| MOB-R06-09 | R6, 14 | Atualizar nome previamente salvo | `PreferencesActivity.java` | Salvar valor diferente e reabrir | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R06-10 | R6, 14 | Justificar `apply()` e não guardar senha | Activity e relatório R6 | Revisar código e executar fluxo | Decisão documentada; fluxo pendente | — | Fonte presente; validação bloqueada |
| MOB-R06-11 | R6, 14 | Relatar salvamento e recuperação com evidência real | `docs/relatorios/R06_SharedPreferences.md` | Capturar antes/depois de reabrir | Pendente | Pendente | Não executado |
| MOB-R07-01 | R7, 15 | Identificar e-mail vazio | `ValidationActivity.java`, `InputValidators.java` | Enviar e-mail vazio | Teste-fonte parcial | — | Fonte presente; validação bloqueada |
| MOB-R07-02 | R7, 15 | Identificar senha vazia | mesmas fontes | Enviar senha vazia | Teste-fonte parcial | — | Fonte presente; validação bloqueada |
| MOB-R07-03 | R7, 15 | Rejeitar e-mail em formato inválido | `InputValidators.java` | Casos sem arroba/domínio malformado | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R07-04 | R7, 15 | Rejeitar senha menor que seis caracteres | `InputValidators.java` | Testar 5 caracteres | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R07-05 | R7, 15 | Aceitar comprimento mínimo quando os outros dados são válidos | `InputValidators.java` | Testar 6 caracteres e e-mail válido | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R07-06 | R7, 15 | Dar feedback para dados válidos sem declarar autenticação | `ValidationActivity.java` | Enviar dados fictícios | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R07-07 | R7, 15 | Ocultar senha, não persistir e não registrar conteúdo sensível | tela/Activity Java/XML | Revisar fluxo e testar aparelho | Revisão de fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R07-08 | R7, 15 | Testar correção e reenvio após falha | `ValidationActivity.java` | Falhar, corrigir, submeter | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R07-09 | R7, 15 | Relatar conceitos, cenários e capturas reais | `docs/relatorios/R07_Validacoes.md` | Executar cenários e anexar imagens | Pendente | Pendente | Não executado |
| MOB-R08-01 | R8, 16–17 | Apresentar título do verificador | `flutter-mobile/lib/screens/roteiro08_password_screen.dart` | Executar tela | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R08-02 | R8, 16–17 | Campo de senha obscurecido | tela Flutter | Digitar valor fictício | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R08-03 | R8, 16–17 | Vazio em estado neutro | `lib/logic/password_classifier.dart` | Classificar string vazia | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R08-04 | R8, 16–17 | 1–5 caracteres: Senha Fraca | classificador Flutter | Testar 1 e 5 caracteres | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R08-05 | R8, 16–17 | 6–9 caracteres: Senha Média | classificador Flutter | Testar 6 e 9 caracteres | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R08-06 | R8, 16–17 | 10 ou mais caracteres: Senha Forte | classificador Flutter | Testar 10 e valor longo | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R08-07 | R8, 16–17 | Atualizar resultado ao digitar e apagar | tela Flutter | Alterar e limpar campo | Teste-fonte; não executado | — | Fonte presente; validação bloqueada |
| MOB-R08-08 | R8, 16–17 | Diferenciar visualmente e explicar categoria | tela Flutter | Renderizar e conferir feedback | Não executado | — | Fonte presente; validação bloqueada |
| MOB-R08-09 | R8, 16–17 | Não guardar/enviar senha; explicar limitação do comprimento | tela Flutter | Revisão do código e interface | Fonte presente; revisão runtime pendente | — | Fonte presente; validação bloqueada |
| MOB-R08-10 | R8, 16–17 | Exemplo independente para DartPad | `dartpad/roteiro_08_senha.dart` | Executar DartPad Flutter | Bloqueado: execução online não verificada | Pendente | Não executado |
| MOB-R08-11 | R8, 16–17 | Testar vazio, 1/5/6/9/10/longo, transições e renderização | `flutter-mobile/test/widget_test.dart` | `flutter test` e execução visual | Testes escritos; bloqueados | — | Não executado |
| MOB-R08-12 | R8, 16–17 | Documentar limites como decisão, não regra oficial | `docs/relatorios/R08_Senha_Flutter.md` | Revisar documentação | Texto presente; PDF não conferido | — | Fonte presente; conferência pendente |

## Critérios de avaliação

| Roteiro | Critérios e pesos fornecidos no texto | Relatório |
|---|---|---|
| R1 | Instalação/configuração 3,0; criação 3,0; execução 2,0; relatório 2,0 | `docs/relatorios/R01_Android_Studio.md` |
| R2 | XML 3,0; organização visual 3,0; funcionamento 2,0; relatório 2,0 | `docs/relatorios/R02_Login_XML.md` |
| R3 | Estrutura Flutter 3,0; widgets 3,0; funcionamento 2,0; relatório 2,0 | `docs/relatorios/R03_Login_Flutter.md` |
| R4 | Organização 3,0; componentes 3,0; funcionamento 2,0; relatório 2,0 | `docs/relatorios/R04_Menu_XML.md` |
| R5 | CheckBox 4,0; lógica 3,0; interface 2,0; relatório 1,0 | `docs/relatorios/R05_CheckBox.md` |
| R6 | Salvamento 4,0; recuperação 3,0; interface 2,0; relatório 1,0 | `docs/relatorios/R06_SharedPreferences.md` |
| R7 | Validações 4,0; funcionamento 3,0; interface 2,0; relatório 1,0 | `docs/relatorios/R07_Validacoes.md` |
| R8 | Lógica 4,0; interface Flutter 3,0; funcionamento 2,0; relatório 1,0 | `docs/relatorios/R08_Senha_Flutter.md` |

## Conteúdo obrigatório de cada relatório

| Item do relatório | Situação dos oito relatórios |
|---|---|
| Identificação, título e objetivo | Incluídos |
| Ferramentas e versões efetivamente utilizadas | Ambiente e escolhas de configuração informados; ferramentas não estavam instaladas e versões executadas não puderam ser registradas |
| Descrição, arquivos e código | Descrição incluída; fontes solicitadas estão na estrutura dos projetos e vinculadas como anexos nos relatórios |
| Explicação dos componentes e da lógica | Incluída de forma resumida |
| Procedimento de execução | Descrito no README e guia de execução; execução real pendente |
| Casos de teste e resultados observados | Casos descritos; os bloqueados estão marcados como não executados |
| Evidências visuais | Pendentes; não há prints fabricados |
| Problemas, soluções e conclusão | Bloqueios ambientais e situação apresentados; conclusão condicionada à validação |

Atualizar resultado, evidência e estado somente depois de executar cada procedimento; a existência dos arquivos não prova funcionamento.
