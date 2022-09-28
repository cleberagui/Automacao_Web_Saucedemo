*** Settings ***
Resource    ../base.robot

*** Variables ***
${item_1}    xpath://div[text()='Sauce Labs Onesie']
${item_2}    xpath://div[text()='Test.allTheThings() T-Shirt (Red)']
${button_checkout}    id:checkout

*** Keywords ***
Checando item 1
    Wait Until Element Is Visible    ${item_1}
Checando item 2
    Wait Until Element Is Visible    ${item_2}
Verificando pagina carrinho
    Wait Until Element Is Visible    ${button_checkout}
Clicando em Checkout
    Click Element    ${button_checkout}
    