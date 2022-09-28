*** Settings ***
Resource    ../base.robot


*** Variables ***
${title}    css:span[class='title']
${button_ordenar}    css:span[class='select_container']
${button_low_to_high}    css:option[value='lohi']
${price}    xpath://div[text()='7.99']
${button_add_to_cart}    id:add-to-cart-sauce-labs-onesie
${button_add_to_cart_item2}    id:add-to-cart-test.allthethings()-t-shirt-(red)
${button_cart}    id:shopping_cart_container

*** Keywords ***
Verificar pagina home
    Wait Until Element Is Visible    ${title}
Clicando no campo ordenar
    Click Element    ${button_ordenar}
Selecionando opcão low to high
    Click Element    ${button_low_to_high}
Verificando mudança de ordem dos produtos    
    Wait Until Element Is Visible    ${price}
Adicionando item 1
    Click Element    ${button_add_to_cart}
Adicionando item 2
    Click Element    ${button_add_to_cart_item2}
Abrindo o carrinho
    Click Element    ${button_cart}