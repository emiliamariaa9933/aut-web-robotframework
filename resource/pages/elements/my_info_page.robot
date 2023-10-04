*** Settings ***
Documentation  Dicionário de elementos referentes a tela login.
Resource  ${EXECDIR}/resource/main.resource

*** Variables ***
&{my_info}
...  input_firstname=css=input[name="firstName"]
...  input_middlename=css=input[name="middleName"]
...  input_lastname=css=input[name="lastName"]
...  input_nickname=xpath=(//div[@class='oxd-input-group__label-wrapper']/following-sibling::div[1]/input[@class='oxd-input oxd-input--active'])[1]
...  input_employee_id=xpath=(//div[@class='oxd-input-group__label-wrapper']/following-sibling::div[1]/input[@class='oxd-input oxd-input--active'])[1]
...  input_other_id=xpath=(//div[@class='oxd-input-group__label-wrapper']/following-sibling::div[1]/input[@class='oxd-input oxd-input--active'])[2]
...  input_driver_licence_number=xpath=(//div[@class='oxd-input-group__label-wrapper']/following-sibling::div[1]/input[@class='oxd-input oxd-input--active'])[4]
...  icon_licence_calendar=xpath=(//div[@class='oxd-date-input']/i[@class='oxd-icon bi-calendar oxd-date-input-icon'])[1]
...  input_licence_expiry=xpath=(//div[@class='oxd-date-wrapper']/descendant::div[1]/input)[1]
...  input_ssn_number=xpath=(//div[@class='oxd-input-group__label-wrapper']/following-sibling::div[1]/input[@class='oxd-input oxd-input--active'])[4]
...  select_div_nationality=xpath=(//div[@class='oxd-select-wrapper']/div[@class='oxd-select-text oxd-select-text--active'])[1]
...  input_gender=xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div[2]/div[2]/div/div[2]/div[2]/div[2]/div/label/span
...  select_div_bloody_type=xpath=(//div[@class='oxd-select-wrapper']/div[@class='oxd-select-text oxd-select-text--active'])[3]
...  btn_save_first=css=button[data-v-b6d78ace]
...  btn_save_second=xpath=(//div[@class='oxd-form-actions']/button[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"])[2]
...  btn_save_third=xpath=(//div[@class='oxd-form-actions']/button[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"])[3]
...  btn_add=css=button[class="oxd-button oxd-button--medium oxd-button--text"]
...  btn_upload=css=input[type="file"]
...  textarea_comment=css=textarea[class="oxd-textarea oxd-textarea--active oxd-textarea--resize-vertical"]
...  div_tabela_anexos=css=div[class="orangehrm-container"]