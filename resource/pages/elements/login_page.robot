*** Settings ***
Documentation  Dicionário de elementos referentes a tela login.
Resource  ${EXECDIR}/resource/main.resource

*** Variables ***
&{login}
...  input_username=css=input[name="username"]
...  input_password=css=input[name="password"]
...  btn_login=css=button[type="submit"]
...  div_titulo_login=css=h5[class="oxd-text oxd-text--h5 orangehrm-login-title"]