# Evidência parcial — compilação de recursos Android (`aapt2`)

- Data: 2026-11-07.
- Ambiente: Windows; Android SDK Platform 35; Build-tools 36.0.0; `aapt2` 36.0.0.
- Resultado: **Aprovada somente para compilação/vinculação de recursos e manifesto**.
- Saída temporária: pacote de recursos e APK somente de recursos foram removidos após a checagem; não são APK executável e não foram incluídos na entrega.

Comandos equivalentes executados (os caminhos temporários reais foram criados com um nome aleatório e removidos ao final):

```powershell
aapt2 compile --dir android-native\app\src\main\res -o <TEMP>\compiled.zip
aapt2 link -o <TEMP>\resources.apk --manifest <TEMP>\AndroidManifest.xml `
  -I "$env:LOCALAPPDATA\Android\Sdk\platforms\android-35\android.jar" `
  --java <TEMP>\generated --min-sdk-version 23 --target-sdk-version 35 `
  --version-code 1 --version-name 1.0 <TEMP>\compiled.zip
```

Para a etapa isolada de `aapt2 link`, o manifesto foi copiado para `<TEMP>` com `package="com.unip.desenvolvimentomobile"` acrescentado, pois o namespace que o Android Gradle Plugin normalmente injeta não está presente no arquivo-fonte. Nenhum arquivo do projeto foi alterado para essa verificação.

Esta evidência não valida código Java, sincronização Gradle, DEX, instalação, inicialização, navegação ou persistência. A compilação APK completa permanece bloqueada por falta de JDK/Gradle; execução funcional permanece bloqueada por falta de emulador/dispositivo.
