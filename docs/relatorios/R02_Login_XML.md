# Relatório — Roteiro 2: Tela de login utilizando XML

**Disciplina:** Desenvolvimento Mobile — UNIP EAD
**Referência informada:** páginas 5–7 (PDF não disponível para conferência).
**Estado:** implementação escrita; testes e captura pendentes.

## Objetivo e implementação

A tela demonstrativa apresenta título, `TextView`, campos `EditText` para e-mail e senha, `Button` e `LinearLayout` em XML. Java valida campos vazios, formato básico do e-mail e senha não vazia; o campo de senha usa `textPassword`. A mensagem de sucesso informa que é uma demonstração local, não autenticação.

- [LoginActivity.java](../../android-native/app/src/main/java/com/unip/desenvolvimentomobile/LoginActivity.java)
- [Layout XML do login](../../android-native/app/src/main/res/layout/activity_login.xml)
- [Validações reutilizadas](../../android-native/app/src/main/java/com/unip/desenvolvimentomobile/InputValidators.java)
- [Strings da interface](../../android-native/app/src/main/res/values/strings.xml)

Os rótulos são `TextView`, as entradas são `EditText`, a ação é um `Button` e a tela usa `LinearLayout` dentro de `ScrollView`, favorecendo telas menores. O teclado é de e-mail e os erros ficam junto ao campo.

## Testes previstos e resultado

| Cenário | Resultado nesta execução |
|---|---|
| Ambos os campos vazios | Não executado |
| E-mail vazio / senha vazia | Não executados |
| E-mail inválido | Coberto em teste-fonte da regra; execução bloqueada |
| Dados válidos | Não executado |
| Teclado, foco, tela pequena e rotação | Não executados |

Não há APK, execução nem captura porque JDK e Gradle estão ausentes e não há AVD/dispositivo. O Android SDK está instalado; a validação parcial de recursos não executa código Java. Atualizar o relatório após testes reais; a validação local não representa login remoto.

## Ferramentas, reprodução e conclusão

A configuração-fonte usa Java, XML, AGP 8.6.1, Gradle 8.7, JDK 17 e compile SDK 35; versões efetivamente instaladas não foram observadas. O código completo está nos arquivos-fonte vinculados acima, como anexos deste relatório. Abrir o projeto nativo no Android Studio, sincronizar, executar a Activity de login e seguir os casos desta seção e `docs/GUIA_DE_EXECUCAO.md`. O bloqueio atual é a ausência do toolchain Android. Sem execução e captura real, o roteiro ainda não pode ser considerado validado.
