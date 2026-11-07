# Relatório — Roteiro 6: SharedPreferences

**Disciplina:** Desenvolvimento Mobile — UNIP EAD
**Referência informada:** página 14 (PDF não disponível para conferência).
**Estado:** implementação escrita; persistência em reabertura não comprovada.

## Objetivo e implementação

A tela recebe um nome, remove espaços externos, rejeita campo vazio, grava e apresenta o valor armazenado. A Activity utiliza SharedPreferences nativo no arquivo `perfil_local`, chave constante `nome_usuario`, e chama `apply()` para persistir sem bloquear a interface. `onCreate` carrega o valor e preenche a tela quando já existe.

- [PreferencesActivity.java](../../android-native/app/src/main/java/com/unip/desenvolvimentomobile/PreferencesActivity.java)
- [Layout da tela](../../android-native/app/src/main/res/layout/activity_preferences.xml)
- [Normalização do nome e teste-fonte](../../android-native/app/src/main/java/com/unip/desenvolvimentomobile/InputValidators.java)
- [Teste unitário](../../android-native/app/src/test/java/com/unip/desenvolvimentomobile/InputValidatorsTest.java)

Somente o nome solicitado é guardado; senha não é salva. `apply()` atualiza imediatamente a preferência em memória e delega a gravação no disco.

## Testes e conclusão

Primeiro acesso, nome válido, vazio, espaços extras, atualização e recriação da Activity ainda não foram executados. A prova de fechamento/reabertura é obrigatória e não pode ser inferida do código. Embora ADB/SDK estejam instalados, não há dispositivo/AVD nem JDK/Gradle; não há captura de “nome salvo” ou “nome recuperado”. O requisito de persistência permanece pendente.

## Ferramentas, reprodução e conclusão

A configuração proposta é Java/XML, JDK 17, AGP 8.6.1, Gradle 8.7 e compile SDK 35; Platform 35 foi observada, mas JDK/Gradle não. Código XML/Java completo está vinculado acima. Após configurar o ambiente e dispositivo, salvar nome fictício, encerrar o app, abri-lo novamente e verificar o valor; documentar também entrada vazia, normalização e atualização. A falta de JDK/Gradle e AVD/dispositivo bloqueia a comprovação. A atividade não está concluída até observar e registrar a recuperação em nova abertura.
