*** Settings ***
Resource    ../base.robot

*** Variables ***
${input_first_name}    id:first-name
${input_last_name}    id:last-name
${input_postal_code}    id:postal-code
${button_continue}    id:continue
${checkout_overview}    xpath://span[text()='Checkout: Overview']
${button_finish}    id:finish
${checkout_complete}    xpath://h2[text()='THANK YOU FOR YOUR ORDER']

*** Keywords ***
Preenchendo informações
    ${imputar_first_name}    FakerLibrary.First Name
    Input Text    ${input_first_name}    ${imputar_first_name}
    ${imputar_last_name}    FakerLibrary.Last Name
    Input Text    ${input_last_name}    ${imputar_last_name}
    ${imputar_postal_code}    FakerLibrary.Postalcode
    Input Text    ${input_postal_code}    ${imputar_postal_code}

Clicando em continue
    Click Element    id:continue
Verificando pagina de descrição final do pedido
    Wait Until Element Is Enabled    ${checkout_overview}
Clicando em finalizar
    Click Element    ${button_finish}
Verificando se a compra foi concluida com sucesso
    Wait Until Element Is Visible    ${checkout_complete}


