# Relatório — Roteiro 7: Validações e conceitos de segurança

**Disciplina:** Desenvolvimento Mobile — UNIP EAD
**Referência informada:** página 15 (PDF não disponível para conferência).
**Estado:** implementação e teste-fonte escritos; execução pendente.

## Objetivo e implementação

A tela Java/XML valida e-mail e senha localmente: campo vazio, formato básico de e-mail e mínimo de seis caracteres. As mensagens indicam o campo; a senha fica obscurecida e não é salva nem escrita em logs. Uma entrada válida é descrita como aprovada nas validações locais, sem alegar autenticação ou segurança real.

- [ValidationActivity.java](../../android-native/app/src/main/java/com/unip/desenvolvimentomobile/ValidationActivity.java)
- [Layout XML](../../android-native/app/src/main/res/layout/activity_validation.xml)
- [Regras Java](../../android-native/app/src/main/java/com/unip/desenvolvimentomobile/InputValidators.java)
- [Testes unitários fonte](../../android-native/app/src/test/java/com/unip/desenvolvimentomobile/InputValidatorsTest.java)

## Matriz de cenários

E-mail vazio, senha vazia, ambos vazios, ausência de arroba, formato inválido, senha com 5, 6 e mais caracteres, entrada válida e reenvio corrigido: previstos, nenhum executado nesta máquina. Os testes unitários cobrem algumas regras puras, mas não substituem a validação visual em Android.

## Conclusão

Sem JDK/SDK/Gradle não houve compilação ou interação. Atualizar o resultado e anexar capturas reais somente após executar cada cenário em dispositivo/emulador.

## Ferramentas, reprodução e conclusão

A configuração proposta é Java/XML, JDK 17, AGP 8.6.1, Gradle 8.7 e compile SDK 35; versões efetivas não observadas. O código solicitado está nos arquivos-fonte vinculados acima. Abrir a tela no app nativo, percorrer cada condição da matriz deste relatório e reenviar depois de corrigir os campos. Não registrar senha em evidências. A ausência do toolchain Android impediu a reprodução; o roteiro permanece pendente de execução e capturas reais.
