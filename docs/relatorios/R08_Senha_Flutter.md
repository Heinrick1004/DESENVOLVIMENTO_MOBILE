# Relatório — Roteiro 8: Verificador de senha com Flutter

**Disciplina:** Desenvolvimento Mobile — UNIP EAD
**Referência informada:** páginas 16–17 (PDF não disponível para conferência).
**Estado:** lógica, telas e testes escritos; execução pendente.

## Objetivo e implementação

A interface Flutter observa a digitação em um campo obscurecido e classifica pelo tamanho: vazio é neutro; 1–5 caracteres é fraca; 6–9 média; 10 ou mais forte. O classificador está separado da tela, o texto muda em tempo real e nenhuma senha é guardada ou enviada. A tela informa que tamanho isolado não determina segurança.

- [Classificador](../../flutter-mobile/lib/logic/password_classifier.dart)
- [Tela Flutter](../../flutter-mobile/lib/screens/roteiro08_password_screen.dart)
- [Teste de limites e widgets](../../flutter-mobile/test/widget_test.dart)
- [Exemplo independente para DartPad](../../dartpad/roteiro_08_senha.dart)

## Testes e conclusão

Os testes-fonte cobrem vazio, 1, 5, 6, 9, 10 e valor longo, além de mudança entre categorias e limpeza do campo. Não foram executados: Flutter/Dart ausentes. O exemplo DartPad, renderização e atualização visual não foram verificados; capturas reais estão pendentes.

Os limites são uma decisão didática desta implementação, não limites definidos pela UNIP nem uma medição de segurança real.

## Ferramentas, reprodução e conclusão

O projeto requer Flutter com Dart `>=3.3.0 <4.0.0`; as versões efetivamente instaladas não foram observadas. Classificador, tela, testes e arquivo DartPad vinculados acima são os anexos de código completos. Executar `flutter pub get`, `flutter analyze`, `flutter test`, validar em aparelho e rodar também no DartPad Flutter. A ausência do toolchain bloqueia todos esses passos e as capturas; o roteiro segue pendente de validação.
