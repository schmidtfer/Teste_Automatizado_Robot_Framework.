*** Settings ***
Resource  ../common/variables.robot

Library  SeleniumLibrary

** Keywords **

Acessar Site da qazando
    Open Browser  ${SITE_URL}  chrome
 
Aguardar site carregar
    Sleep  7s

Clicar sobre o botão login
    Click Element  xpath://a[@href='/login']


Digitar email
    [Arguments]  ${email}=${USUARIO_EMAIL}
    Input Text  id:user  ${email}

Digitar senha
    [Arguments]  ${senha}=${USUARIO_SENHA}
    Input Text  id:password  ${senha}  

Clicar no checkbox lembrar de mim
    Scroll Element Into View    id:materialUnchecked
    Click Element  id:materialUnchecked

Clicar em logar
    Click Element  id:btnLogin

** Test Cases **
Cenário 1: Acessando o site da qazando
    Acessar Site da qazando
    Aguardar site carregar
    Clicar sobre o botão login
    Aguardar site carregar
    Digitar email
    Digitar senha
    Clicar no checkbox lembrar de mim
    Aguardar site carregar
    Clicar em logar
    

Cenário 2: Tentando logar com senha vazia
    Acessar Site da qazando
    Aguardar site carregar
    Clicar sobre o botão login
    Aguardar site carregar
    Digitar email
    Digitar senha  ${EMPTY}
    Aguardar site carregar
    Clicar em logar

Cenário 3: Tentando logar com login vazio
    Acessar Site da qazando
    Aguardar site carregar
    Clicar sobre o botão login
    Aguardar site carregar
    Digitar email  ${EMPTY}
    Digitar senha
    Aguardar site carregar
    Clicar em logar
