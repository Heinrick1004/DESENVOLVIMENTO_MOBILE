# Guia de execução e validação

## Pré-requisitos

- Android Studio, JDK 17 e Android SDK Platform 35 para o app nativo.
- Gradle 8.7 compatível com Android Gradle Plugin 8.6.1.
- Flutter stable com Dart `>=3.3.0 <4.0.0` e Android toolchain configurada.
- Emulador Android ou dispositivo para validar fluxos e observar persistência.
- Acesso à internet somente para obter dependências oficiais na primeira sincronização; os aplicativos não dependem de serviços externos em execução.

O Android SDK Platform 35 está instalado, assim como ADB e o binário do emulador; não há AVD nem dispositivo conectado. Java/JDK, Gradle, Android Studio, Flutter e Dart não foram localizados. As versões Gradle/AGP adotadas são uma configuração inicial e a compatibilidade efetiva ainda precisa ser confirmada.

## Android nativo

Abra `android-native/` no Android Studio, sincronize o Gradle e execute `app` em um emulador ou dispositivo. Confirme a tela inicial, percorra cada botão e teste a navegação de retorno. O projeto não pede permissões Android.

Com Wrapper já gerado no Android Studio:

```powershell
.\gradlew.bat assembleDebug
.\gradlew.bat testDebugUnitTest
.\gradlew.bat connectedDebugAndroidTest
```

O último comando depende de emulador/dispositivo e não há testes instrumentados nesta versão; os testes presentes são unitários para as regras puras de validação e formatação.

Para o roteiro 6, salve um nome, feche e reabra o app e confirme o valor recuperado. Uma recriação da Activity sozinha não prova sobrevivência ao encerramento do processo.

## Flutter

Antes de compilar, instale Flutter/JDK 17/Gradle, configure `flutter-mobile/android/local.properties` com `flutter.sdk` e `sdk.dir` locais e gere o Gradle Wrapper dentro de `flutter-mobile/android/` com `gradle wrapper --gradle-version 8.7`. Os arquivos launchers/JAR não estão incluídos nesta entrega porque não havia Gradle disponível no ambiente de criação. Não versionar `local.properties`.

```powershell
Set-Location .\flutter-mobile
flutter pub get
flutter analyze
flutter test
flutter build apk --debug
```

Os testes cobrem limites das três categorias, estado vazio, navegação, campos vazios, e-mail inválido e mensagem demonstrativa.

## DartPad

Em [DartPad](https://dartpad.dev), escolha Flutter, substitua o conteúdo inicial pelo conteúdo integral do arquivo independente e execute. Teste o envio do login e as categorias de senha. Registre a data e o resultado observado antes de atualizar a matriz.

## Classificação dos resultados

Use **Aprovada** somente para um comando/cenário realmente executado e observado. Use **Reprovada** para falha observada, **Bloqueada** para dependência indisponível e **Não executada** quando não houve tentativa. Registre comando/ação, ambiente, saída e caminho da evidência em `STATUS_DE_EXECUCAO.md`.
