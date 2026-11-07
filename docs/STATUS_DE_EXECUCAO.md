# Status de execução

Data da inspeção do ambiente: 2026-11-07. Diretório de trabalho: `D:\FACUL_PROJETOS\DESENVOLVIMENTO_MOBILE\Roteiro`.
O repositório Git local foi inicializado nesta tarefa; nenhum commit foi criado.

## Ambiente observado

| Recurso | Resultado observado |
|---|---|
| Sistema operacional | Windows |
| JDK/Java | Ausente no `PATH` e em `C:\Program Files\Java` |
| Gradle | Ausente no `PATH` |
| Android Studio | Não localizado no `PATH` nem em `C:\Program Files\Android\Android Studio` |
| Android SDK | `C:\Users\Guilherme\AppData\Local\Android\Sdk`; plataformas 35, 36 e 37.0; build-tools 36.0.0 |
| ADB | Presente no SDK, versão 37.0.1; `adb devices -l` não listou dispositivos |
| Emulador Android | Binário presente no SDK; `emulator -list-avds` não listou AVDs |
| Flutter / Dart | Ausentes no `PATH` |
| Dispositivo/emulador | Nenhum conectado ou configurado |
| Espaço livre no volume D: | Aproximadamente 301 GB |
| PDF `Roteiro(1).pdf` no workspace | Não encontrado; conteúdo não pôde ser conferido diretamente |

Android Studio não foi encontrado no caminho padrão testado nem como comando; isso não exclui instalação em outro caminho.

## Resultado por atividade

| Roteiro | Fonte criada | Build/teste executável | Captura real | Situação |
|---|---|---|---|---|
| 1 — Android Studio | Activity, XML, manifesto e Gradle | `aapt2 compile` e `aapt2 link` dos recursos/manifesto aprovados; build APK bloqueado sem JDK/Gradle | Pendente | Implementação escrita; execução não comprovada |
| 2 — Login XML | Activity, layout e validação Java | Bloqueado | Pendente | Implementação escrita; cenários não executados |
| 3 — Login Flutter/DartPad | Tela Flutter, teste e exemplo independente | Bloqueado: Flutter/Dart ausentes | Pendente | Implementação escrita; análise e DartPad não verificados |
| 4 — Menu XML | Menu com quatro ações e ícones | Bloqueado | Pendente | Implementação escrita; navegação não executada |
| 5 — CheckBox Java/XML | Quatro CheckBoxes e formatador Java | Bloqueado | Pendente | Implementação escrita; combinações não executadas |
| 6 — SharedPreferences | Salvar, carregar e normalizar nome | Bloqueado | Pendente | Implementação escrita; recuperação em nova abertura não comprovada |
| 7 — Validações | Validador Java e tela XML | Bloqueado | Pendente | Implementação escrita; cenários não executados |
| 8 — Verificador Flutter | Classificador, tela, teste e exemplo DartPad | Bloqueado | Pendente | Implementação escrita; limites e DartPad não executados |

## Verificação parcial

`aapt2 compile` e `aapt2 link` passaram para recursos e manifesto, no Build-tools 36.0.0 contra Android SDK Platform 35. A evidência com os comandos e limitações está em `docs/evidencias/testes/aapt2-recursos-manifesto.md`. Isso não compila Java nem gera APK executável.

## Builds e testes completos não executados

O `aapt2` do build-tools 36.0.0 compilou e vinculou os recursos/manifesto nativos usando a Platform 35. Essa validação parcial não compila Java nem gera APK; o Manifest temporário da checagem recebeu o pacote correspondente ao namespace, normalmente fornecido pelo Gradle. Nenhum build completo ou teste Android/Flutter foi executado; não há APK, relatório de testes nem captura. Os testes incluídos são código-fonte, não resultados aprovados.

## Pendências para concluir a validação

1. Disponibilizar JDK 17 e Gradle/Android Studio compatíveis; a SDK Platform 35 e ADB já estão presentes. Criar/selecionar um AVD ou conectar dispositivo.
2. Abrir/sincronizar `android-native/`; gerar o Wrapper, compilar e executar testes unitários.
3. Instalar Flutter/Dart compatíveis; executar `pub get`, `analyze`, `test` e build debug.
4. Executar as telas e os cenários da matriz em emulador/dispositivo; comprovar a persistência após fechar e reabrir o app.
5. Executar os dois exemplos no DartPad.
6. Capturar telas reais, atualizar relatórios/matriz/status e revisar a compatibilidade das versões.
7. Criar o ZIP e validar sua extração em diretório temporário; fontes/docs obrigatórios presentes e caches, builds, `local.properties` e `.git` excluídos.

Nenhuma atividade deve ser apresentada como integralmente concluída antes dessas verificações.
