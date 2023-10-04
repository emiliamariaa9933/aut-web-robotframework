*** Settings ***
Resource  ${EXECDIR}/resource/main.resource

*** Keywords ***
o usuário esteja no site da OrangeHRM
  [Documentation]  Keyword responsável por validar o título "Dashboard" na home do sistema.
  Wait Until Element is Visible  ${menu.img_profile}
  Page Should Contain  Dashboard
  Realiza Screenshot

Realizar o preenchimento do campos com dados aleatórios, anexa um arquivo e salvar cada etapa
  [Documentation]  Keyword responsável por preencher os campos referente a tela "My Info"
  Sleep  1
  ${name_fake}  FakerLibrary.Last Name Female
  ${last_name_fake}  FakerLibrary.Name Female


  # Editar campos do Personal Details
  Wait Until Element is Visible  ${my_info.input_firstname}  timeout=10
  Clicar no Elemento  ${my_info.input_firstname}
  Limpar Campo  ${my_info.input_firstname}
  Clicar no Elemento  ${my_info.input_firstname}
  Inserir o texto  ${my_info.input_firstname}      ${name_fake}
  Limpar Campo  ${my_info.input_middlename}
  Inserir o texto  ${my_info.input_middlename}     Spencer
  Limpar Campo  ${my_info.input_lastname}
  Inserir o texto  ${my_info.input_lastname}       ${last_name_fake}
  Limpar Campo  ${my_info.input_licence_expiry}
  Clicar no Elemento  ${my_info.icon_licence_calendar}
  Inserir o texto  ${my_info.input_licence_expiry}    2030-10-10
  Press Keys    ${my_info.select_div_nationality}    ARROW_DOWN  ENTER
  Clicar no elemento  ${my_info.input_gender}
  Clicar no elemento  ${my_info.btn_save_first}
  Wait Until Page Contains   Successfully Updated

  # Validar mensagem de sucesso da segunda etapa
  Wait Until Element is Visible  ${my_info.select_div_bloody_type}  timeout=10
  Press Keys    ${my_info.select_div_bloody_type}    ARROW_DOWN  ENTER
  Clicar no elemento  ${my_info.btn_save_second}
  Wait Until Page Contains   Successfully Saved

  # Inserir Anexo e validar mensagem de sucesso da etapa
  Clicar no elemento  ${my_info.btn_add}
  Realizar a add de um anexo  ${my_info.btn_upload}  ${EXECDIR}/resource/test_data/image_upload.jpeg
  Inserir o Texto  ${my_info.textarea_comment}    Anexando arquivo
  Clicar no elemento  ${my_info.btn_save_third}
  Wait Until Page Contains   Successfully Saved

o sistema deve apresentar a mensagem “${mensagem_sucesso}”
  [Documentation]  Keyword responsável por validar a mensagem de sucesso ao salvar a última etapa da edição.
  Page Should Contain  Successfully Saved
  Wait Until Element is Visible  ${my_info.div_tabela_anexos}  timeout=10
  Realiza Screenshot