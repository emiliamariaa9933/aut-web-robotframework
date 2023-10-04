*** Settings ***
Resource  ${EXECDIR}/resource/main.resource

*** Variables ***
${BROWSER}    chrome

*** Keywords ***
### SESSION CONFIGS ###
acesso o sistema OrangeHRM
  [Documentation]  Keyword responsável por inicializar o navegador e acessar a página inicial do site Verity. 
  ...              É necessário manter a opção --headless descomentada para conseguir rodar os testes na pipeline.
  ${options}  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys
  Call Method  ${options}  add_argument  start-maximized
  Call Method  ${options}  add_argument  disable-web-security
  Call Method  ${options}  add_argument  disable-notifications
  Call Method  ${options}  add_argument  --disable-extensions
  Call Method  ${options}  add_argument  --headless
  Call Method  ${options}  add_argument  --disable-gpu
  Create WebDriver  Chrome  options=${options}
  Set Window Size  ${1920}  ${1080}
  SeleniumLibrary.Go To  url=${AMBIENTES.production}

Realizar Login
  [Documentation]  Keyword responsável por
  Wait Until Element Is Visible    ${login.div_titulo_login}
  Input Text    ${login.input_username}    ${DADOS_LOGIN.username}
  Input Text    ${login.input_password}    ${DADOS_LOGIN.password}
  Click element  ${login.btn_login}