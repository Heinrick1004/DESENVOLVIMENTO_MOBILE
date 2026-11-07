# Relatório — Roteiro 5: Aplicativo utilizando CheckBox

**Disciplina:** Desenvolvimento Mobile — UNIP EAD
**Referência informada:** páginas 12–13 (PDF não disponível para conferência).
**Estado:** implementação e testes unitários escritos; build e interação real pendentes.

## Objetivo e implementação

A interface em XML pergunta “Quais tecnologias você conhece?” e oferece quatro `CheckBox`: Java, Kotlin, Flutter e Python. A Activity Java lê todos os estados no clique de “Verificar Resposta” e apresenta a lista selecionada; sem opções, solicita ao menos uma escolha.

- [XML da atividade](../../android-native/app/src/main/res/layout/activity_checkbox.xml)
- [Lógica Java da Activity](../../android-native/app/src/main/java/com/unip/desenvolvimentomobile/CheckboxActivity.java)
- [Formatador e resultado vazio](../../android-native/app/src/main/java/com/unip/desenvolvimentomobile/TechnologySelectionFormatter.java)
- [Teste unitário do formatador](../../android-native/app/src/test/java/com/unip/desenvolvimentomobile/TechnologySelectionFormatterTest.java)

## Casos de teste e resultado

Nenhuma seleção, cada opção isolada, 2, 3 e 4 opções e alteração após verificação: previstos; execução bloqueada por falta do toolchain Android. Os testes-fonte cobrem resultado sem seleção, uma opção e as quatro, mas não foram executados e não substituem os cenários instrumentados.

Sem build ou dispositivo, não há resultados observados nem captura. Executar todos os casos no emulador, inclusive Kotlin, Flutter e Python isolados, antes de concluir.

## Ferramentas, reprodução e conclusão

A configuração proposta é Java/XML, JDK 17, AGP 8.6.1, Gradle 8.7 e compile SDK 35; nenhum build foi executado para confirmar versões. XML, Activity, formatador e teste-fonte vinculados acima compõem os anexos de código. Abrir a tela, selecionar nenhum, cada item e combinações de 2/3/4 opções; alterar seleção depois de uma verificação e repetir. A ausência do toolchain Android bloqueia execução. Relatório e atividade aguardam teste real, resultados e captura.
