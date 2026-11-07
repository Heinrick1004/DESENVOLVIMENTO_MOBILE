# Relatório — Roteiro 1: Conhecendo o Android Studio

**Disciplina:** Desenvolvimento Mobile — UNIP EAD
**Referência informada:** páginas 2–4 (PDF não disponível para conferência).
**Estado:** implementação escrita; build, execução e evidências pendentes.

## Objetivo e ferramentas

Apresentar a estrutura inicial de um app Android nativo, uma Activity, um layout XML e a execução no Android Studio. A configuração proposta usa Java, XML, Android Gradle Plugin 8.6.1, Gradle 8.7, JDK 17 e compile SDK 35; essa combinação precisa ser confirmada pela sincronização no ambiente final.

## Implementação e estrutura

`MainActivity` carrega `activity_main.xml` e encaminha os cinco atalhos para as demais atividades nativas. O manifesto declara as Activities e a Activity inicial exportada. `strings.xml`, `colors.xml` e `styles.xml` mantêm recursos de interface fora da lógica.

- [Activity e navegação](../../android-native/app/src/main/java/com/unip/desenvolvimentomobile/MainActivity.java)
- [Layout inicial XML](../../android-native/app/src/main/res/layout/activity_main.xml)
- [Manifest Android](../../android-native/app/src/main/AndroidManifest.xml)
- [Configuração do app Gradle](../../android-native/app/build.gradle)

Uma Activity representa uma tela/entrada de interação do app; XML descreve hierarquia visual; Gradle resolve plugins, dependências e tarefas; o emulador executa uma imagem virtual Android. O fluxo esperado é sincronizar dependências, compilar recursos e código, instalar o APK e iniciar a Activity.

## Procedimento e resultados

Abrir `android-native/` no Android Studio, sincronizar Gradle, executar `app` no AVD/dispositivo e verificar a saudação. O SDK Platform 35, ADB e `aapt2` estão disponíveis; `aapt2` compilou/vinculou recursos e manifesto. Sem JDK, Gradle e AVD/dispositivo, a compilação Java, inicialização e saudação não foram observadas. Não há captura.

## Testes e conclusão

| Verificação | Estado |
|---|---|
| Projeto reconhecido e Gradle sincronizado | Bloqueada |
| Compilação e inicialização da Activity | Bloqueadas |
| Mensagem personalizada visível | Não executada |
| Prints do IDE e da aplicação | Pendentes |

As fontes atendem à estrutura prevista, mas o roteiro não está validado até a execução em Android Studio e o registro de evidência real.

## Código anexado, problema e conclusão

Os links para Java, XML, Manifest e Gradle nesta documentação apontam para os arquivos-fonte completos do projeto. A configuração proposta é JDK 17, AGP 8.6.1, Gradle 8.7 e compile SDK 35; nenhuma versão foi executada/confirmada neste computador. O bloqueio é ambiental, não foi contornado por resultado simulado. Após instalar as ferramentas, seguir `docs/GUIA_DE_EXECUCAO.md`, registrar as versões reais e anexar as duas capturas previstas. A atividade permanece pendente de build, execução e evidência.
