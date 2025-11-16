*** Settings ***
Resource  ../common/variables.robot

Library  SeleniumLibrary

** Keywords **

Acessar Site da qazando
    Open Browser  ${SITE_URL}  chrome
    Esperar Elemento  4
 

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

Verificar o texto login realizado 
    ${texto_realizado}  Get Text  id:swal2-title
    Should Be Equal As Strings  ${texto_realizado}  Login realizado

Esperar Elemento
    [Arguments]  ${tempo}
    Set Selenium Implicit Wait  ${tempo}s

** Test Cases **
Cenário 1: Acessando o site da qazando
    Acessar Site da qazando
    Clicar sobre o botão login
    Digitar email
    Digitar senha
    Clicar no checkbox lembrar de mim   
    Clicar em logar
 
  

Cenário 2: Tentando logar com senha vazia
    Acessar Site da qazando
    Clicar sobre o botão login
    Digitar email
    Digitar senha  ${EMPTY}
    Clicar em logar

Cenário 3: Tentando logar com login vazio
    Acessar Site da qazando
    Clicar sobre o botão login
    Digitar email  ${EMPTY}
    Digitar senha
    Clicar em logar
