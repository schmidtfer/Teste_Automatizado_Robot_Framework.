** Settings **
Resource  ../common/variables.robot

Library  SeleniumLibrary

** Keywords **


Acessar Site da qazando
    Open Browser  ${SITE_URL}  chrome
    Esperar Elemento  3
 
Clicar sobre o botão login
    Click Element  xpath://a[@href='/login']
    
Esperar Elemento
    [Arguments]  ${tempo}
    Set Selenium Implicit Wait  ${tempo}s

Clicar sobre o link ainda não tem conta
    Scroll Element Into View  id:materialUnchecked
    Click Element  id:createAccount


** Test Cases **

Cenário 1: Acessando o site da qazando - Ainda não tem conta
    Acessar Site da qazando
    Clicar sobre o botão login
    Clicar sobre o link ainda não tem conta
