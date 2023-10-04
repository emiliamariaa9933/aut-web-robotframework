*** Settings ***
Resource  ${EXECDIR}/resource/main.resource

Suite Setup  Run Keywords
...          acesso o sistema OrangeHRM
...          Realizar Login

Test Teardown  SeleniumLibrary.Close Browser