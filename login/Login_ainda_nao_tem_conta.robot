** Settings **
Resource  ../common/variables.robot

Library  SeleniumLibrary

** Keywords **


Acessar Site da qazando
    Open Browser  ${SITE_URL}  chrome

Aguardar site carregar
    Sleep  3s

Clicar sobre o botão login
    Click Element  xpath://a[@href='/login']

Clicar sobre o link ainda não tem conta
    Scroll Element Into View    id:materialUnchecked
    Click Element  id:createAccount

** Test Cases **

Cenário 2: Acessando o site da qazando - Ainda não tem conta
    Acessar Site da qazando
    Aguardar site carregar
    Clicar sobre o botão login
    Aguardar site carregar
    Clicar sobre o link ainda não tem conta