*** Settings ***
Resource    ../base.robot

*** Variables ***
${URL}    https://www.saucedemo.com/
${input_username}    id:user-name
${username}    standard_user
${input_password}    id:password
${password}    secret_sauce
${button_login}    id:login-button

*** Keywords ***
Abrindo Navegador
    Open Browser    ${URL}    Chrome
Preenchendo acesso de login
    Input Text    ${input_username}    ${username}
    Input Text    ${input_password}    ${password}
Efetuando acesso
    Click Element    ${button_login}


    




