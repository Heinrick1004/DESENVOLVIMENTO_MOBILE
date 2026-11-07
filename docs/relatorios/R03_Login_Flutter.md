# Relatório — Roteiro 3: Login com Flutter e DartPad

**Disciplina:** Desenvolvimento Mobile — UNIP EAD
**Referência informada:** páginas 8–9 (PDF não disponível para conferência).
**Estado:** fontes e testes escritos; análise, execução no DartPad e captura pendentes.

## Objetivo e implementação

A tela Flutter apresenta e-mail, senha obscurecida, botão Login e uma saudação demonstrativa. `MaterialApp`, `Scaffold`, `TextField`, `ElevatedButton` e `setState` atendem ao fluxo; controllers são descartados em `dispose`. E-mail e campos vazios são validados sem backend.

- [Tela de login Flutter](../../flutter-mobile/lib/screens/roteiro03_login_screen.dart)
- [App e navegação Flutter](../../flutter-mobile/lib/main.dart)
- [Teste de widget](../../flutter-mobile/test/widget_test.dart)
- [Exemplo independente DartPad](../../dartpad/roteiro_03_login.dart)

O app Flutter navega pelos roteiros 3 e 8 em uma barra inferior. Android nativo descreve a tela com XML e lógica Java; Flutter monta a interface por widgets Dart.

## Testes e conclusão

Os testes-fonte incluem campos vazios, e-mail inválido, mensagem de boas-vindas, navegação e interação do verificador. Não foram executados porque Flutter/Dart estão ausentes. A compatibilidade do arquivo independente com DartPad também não foi testada e não existe captura de execução.

Para validar, executar `flutter pub get`, `flutter analyze`, `flutter test` e abrir o arquivo DartPad em modo Flutter. O fluxo de boas-vindas não autentica uma conta.

## Ferramentas, reprodução e conclusão

O `pubspec.yaml` requer Dart `>=3.3.0 <4.0.0` e Flutter SDK; versões instaladas não foram observadas. O código integral está nos arquivos Dart vinculados acima, inclusive o exemplo independente. Seguir os comandos deste relatório e de `docs/GUIA_DE_EXECUCAO.md`; testar também no DartPad em modo Flutter. Flutter/Dart e navegador de validação não estavam disponíveis, portanto não há captura ou resultado aprovado. A atividade requer validação posterior.
