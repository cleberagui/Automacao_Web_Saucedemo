*** Settings ***
Resource    resources/base.robot

*** Test Cases ***

Realizar Login 

    Dado que o usuario esteja na tela de login
    Quando o usuario fizer login
    Entao deve aparecer a area logada
Ordenar produtos
    Dado que o usuario esteja na area logada
    Quando o usuario clicar no botão ordenar
    E clicar na opção 'low to high'
    Entao os produtos devem está ordernados de acordo com a seleção
Adicionar produtos ao carrinho
    Dado que o usuario esteja na area logada
    Quando o usuario adicionar os produtos ao carrinho
    E clicar em carrinho
    Então visualizo os produtos selecionados no carrinho
Finalizar compra
    Dado que o usuario esteja no carrinho
    Quando o usuario clicar em checkout 
    E preencher as informações de forma valida
    E clicar em continue
    E clicar em finalizar
    Entao a compra deve ser concluida com sucesso
