*** Settings ***
Resource  ${EXECDIR}/resource/main.resource

*** Test Cases ***
TC0001: Realizar a alteração de informações do cadastro
  [Documentation]  Teste responsável por realizar a alteração de informações do cadastro no sistema OrangeHRM
  [Tags]  TC0001
  Dado que o usuário esteja no site da OrangeHRM
  E clicar em “My Info”
  Quando Realizar o preenchimento do campos com dados aleatórios, anexa um arquivo e salvar cada etapa
  Então o sistema deve apresentar a mensagem “Successfully Saved”