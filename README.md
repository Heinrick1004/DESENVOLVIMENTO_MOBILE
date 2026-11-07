# Desenvolvimento Mobile — UNIP EAD

Implementação dos oito roteiros em dois projetos independentes: Android nativo (Java e XML) para os roteiros 1, 2, 4, 5, 6 e 7; Flutter/Dart para os roteiros 3 e 8. Os exemplos de Flutter para DartPad são autônomos.

> **Estado desta entrega:** há Android SDK (incluindo Platform 35) e ADB no caminho padrão, mas não foram localizados JDK, Gradle, Android Studio, Flutter ou Dart; nenhum dispositivo/AVD está disponível. O `aapt2` validou recursos/manifesto, mas builds completos, testes, persistência em reabertura e capturas reais seguem pendentes. O PDF `Roteiro(1).pdf` não estava no workspace; os requisitos foram implementados sem conferência direta com o PDF.

O diretório foi inicializado como repositório Git local, sem commit. O ZIP de entrega não inclui a pasta `.git`.

## Estrutura

- `android-native/` — app Android nativo em Java/XML; telas de entrada, login, menu, CheckBox, SharedPreferences e validação.
- `flutter-mobile/` — app Flutter dos roteiros 3 e 8, teste de widgets e configuração Android.
- `dartpad/` — arquivos independentes para colar no DartPad com **Flutter** habilitado.
- `docs/` — matriz, status, guia e oito relatórios acadêmicos.
- `docs/evidencias/` — instruções e espaço para evidências reais; não contém capturas ou resultados inventados.
- `scripts/package-delivery.ps1` — empacotamento dos fontes e documentos, sem caches e builds.

## Android nativo

1. Instale Android Studio com Android SDK Platform 35 e JDK 17 (o JDK incorporado ao Android Studio é uma opção).
2. Abra `android-native/` no Android Studio e permita a sincronização do Gradle. A configuração usa AGP 8.6.1 e Gradle 8.7; valide a compatibilidade no ambiente que será usado.
3. Crie ou selecione um AVD compatível ou conecte um dispositivo com depuração USB habilitada.
4. Execute a configuração `app`.
5. A Activity inicial apresenta a saudação do roteiro 1 e atalhos para as atividades 2, 4, 5, 6 e 7.
6. No menu do roteiro 4, Cadastro e Consultar abrem a demonstração local do nome; Configurações abre uma tela informativa; Sair encerra somente o menu atual.

Para a linha de comando, gere o Gradle Wrapper pelo Android Studio ou com uma instalação Gradle compatível, dentro de `android-native/`, usando `gradle wrapper --gradle-version 8.7`; então use `gradlew.bat assembleDebug` e `gradlew.bat testDebugUnitTest`. Os arquivos `gradle-wrapper.properties` estão versionados, mas o executável/binário do Wrapper não foi gerado neste ambiente.

SharedPreferences usa o arquivo `perfil_local`, a chave `nome_usuario` e `apply()` (gravação assíncrona adequada para esta preferência simples). A recuperação ocorre em `onCreate`; sua persistência em disco precisa ser confirmada executando o app e reabrindo-o.

## Flutter

1. Instale uma versão estável do Flutter SDK compatível com Dart `>=3.3.0 <4.0.0` e configure o Android SDK/JDK.
2. Em `flutter-mobile/`, execute:

   ```powershell
   flutter pub get
   flutter analyze
   flutter test
   flutter build apk --debug
   ```

3. Abra `flutter-mobile/` no VS Code ou Android Studio e execute o app. A barra de navegação alterna entre os roteiros 3 e 8.
4. A classificação do roteiro 8 é didática e baseada somente no comprimento: 1–5 fraca, 6–9 média e 10+ forte. Nenhuma senha é salva ou enviada; comprimento isolado não comprova segurança.

O subprojeto `flutter-mobile/android/` inclui configurações Gradle, mas não inclui os launchers nem o JAR do Gradle Wrapper. Instale Flutter/JDK/Gradle e confirme que `android/local.properties` contém os caminhos locais `flutter.sdk` e `sdk.dir` (esse arquivo é ignorado pelo Git). Então, dentro de `flutter-mobile/android/`, execute `gradle wrapper --gradle-version 8.7`; depois rode os comandos Flutter acima. O Wrapper não foi gerado nesta máquina.

## DartPad

Abra [dartpad.dev](https://dartpad.dev), selecione modo **Flutter**, cole o conteúdo integral de `dartpad/roteiro_03_login.dart` ou `dartpad/roteiro_08_senha.dart` e execute. A execução online não foi verificada nesta entrega porque não havia navegador ou Dart/Flutter instalado.

## Testes, relatórios e evidências

- Testes Android: `android-native/app/src/test/`.
- Testes Flutter: `flutter-mobile/test/`.
- Relatórios: `docs/relatorios/`.
- Matriz requisito a requisito: `docs/MATRIZ_DE_REQUISITOS.md`.
- Ambiente, bloqueios e classificação das verificações: `docs/STATUS_DE_EXECUCAO.md`.
- Procedimento das capturas finais reais: `docs/PLANO_DE_CAPTURAS.md`.

Os relatórios indicam como **não executados/bloqueados** todos os casos que dependem de compilação ou execução. Só atualize essa classificação após observar os resultados reais; não use prints de protótipos ou telas fabricadas.

## Pacote ZIP

Após revisar e completar as validações, execute:

```powershell
.\scripts\package-delivery.ps1
```

O arquivo será criado na raiz como `UNIP_Desenvolvimento_Mobile_8_Roteiros_Entrega_Final.zip`. O empacotamento não substitui builds, testes, capturas nem a conferência de extração; essas etapas permanecem pendentes nesta máquina.
