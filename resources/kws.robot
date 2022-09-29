*** Settings ***
Resource    base.robot

*** Keywords ***
Dado que o usuario esteja na tela de login
    Abrindo Navegador
Quando o usuario fizer login
    Preenchendo acesso de login
    Efetuando acesso
Entao deve aparecer a area logada
    Verificar pagina home
Dado que o usuario esteja na area logada
    Verificar pagina home
Quando o usuario clicar no botão ordenar
    Clicando no campo ordenar
E clicar na opção 'low to high'
    Selecionando opcão low to high
Entao os produtos devem está ordernados de acordo com a seleção
    Verificando mudança de ordem dos produtos
Quando o usuario adicionar os produtos ao carrinho
    Adicionando item 1
    Adicionando item 2
E clicar em carrinho
    Abrindo o carrinho   
Então visualizo os produtos selecionados no carrinho
    Checando item 1
    Checando item 2
Dado que o usuario esteja no carrinho
    Verificando pagina carrinho
Quando o usuario clicar em checkout
    Clicando em Checkout
E preencher as informações de forma valida
    Preenchendo informações
E clicar em continue
    Clicando em continue
    Verificando pagina de descrição final do pedido
E clicar em finalizar
    Clicando em finalizar
Entao a compra deve ser concluida com sucesso
    Verificando se a compra foi concluida com sucesso
    Fechando Navegador