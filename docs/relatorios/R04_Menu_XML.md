# Relatório — Roteiro 4: Menu simples em XML

**Disciplina:** Desenvolvimento Mobile — UNIP EAD
**Referência informada:** páginas 10–11 (PDF não disponível para conferência).
**Estado:** implementação escrita; execução e captura pendentes.

## Objetivo e implementação

O menu XML contém exatamente Cadastro, Consultar, Configurações e Sair, cada opção com botão e ícone vetorial. Cadastro e Consultar levam à tela de SharedPreferences; Configurações apresenta as informações locais do exercício; Sair finaliza a Activity do menu sem encerrar à força o processo. O botão voltar segue o ciclo de vida Android.

- [MenuActivity.java](../../android-native/app/src/main/java/com/unip/desenvolvimentomobile/MenuActivity.java)
- [Layout do menu](../../android-native/app/src/main/res/layout/activity_menu.xml)
- [Ícones vetoriais](../../android-native/app/src/main/res/drawable/)
- [Tela de configurações](../../android-native/app/src/main/java/com/unip/desenvolvimentomobile/SettingsActivity.java)

## Testes e conclusão

Exibição dos quatro rótulos, ícones, navegação das quatro ações, botão voltar e ausência de travamento: não executados. SDK e ADB estão presentes, mas faltam JDK/Gradle e não há dispositivo/AVD; não há captura. Confirmar o comportamento em aparelho antes de atualizar como aprovado.

## Ferramentas, reprodução e conclusão

A configuração Android proposta usa Java/XML, JDK 17, AGP 8.6.1, Gradle 8.7 e compile SDK 35; Platform 35 foi observada, mas JDK/Gradle/IDE não. Os links acima são os anexos com XML, Java, recursos vetoriais e tela de configurações completos. Abrir o app nativo, navegar pelas quatro opções e testar retorno conforme `docs/GUIA_DE_EXECUCAO.md`. A falta de JDK/Gradle e dispositivo/AVD bloqueou a reprodução. O roteiro segue pendente de execução e print real.
