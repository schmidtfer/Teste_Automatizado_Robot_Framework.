*** Settings ***
Resource  ../common/variables.robot

Library  SeleniumLibrary

** Keywords **

Acessar Site da qazando
    Open Browser  ${SITE_URL}  chrome
    Esperar Elemento  3


Clicar sobre o botão cadastro
    Click Element  xpath=//a[@href='/register']
    
    
Digitar nome
    [Arguments]  ${nome}=${USUARIO_NOME}
    Input Text  id:user  ${nome}

Digitar email
    [Arguments]  ${email}=${USUARIO_EMAIL}
    Input Text  id:email  ${email}

Digitar senha
    [Arguments]  ${senha}=${USUARIO_SENHA}
    Input Text  id:password  ${senha}  

Clicar em cadastrar
    Click Element  id:btnRegister

Verificar o texto cadastro realizado 
    ${texto_atual}  Get Text  id:swal2-title
    Should Be Equal As Strings  ${texto_atual}  Cadastro realizado!

Esperar Elemento
    [Arguments]  ${tempo}
    Set Selenium Implicit Wait  ${tempo}s


** Test Cases **
Cenário 1: Acessando o site da qazando e cadastrando com sucesso
    Acessar Site da qazando
    Clicar sobre o botão cadastro
    Digitar nome
    Digitar email
    Digitar senha
    Clicar em cadastrar
    Verificar o texto cadastro realizado 
    

Cenário 2: Tentando cadastrar com nome vazio
    Acessar Site da qazando
    Clicar sobre o botão cadastro
    Digitar nome   ${EMPTY}
    Digitar email 
    Digitar senha
    Clicar em cadastrar

Cenário 3: Tentando cadastrar com email vazio
    Acessar Site da qazando
    Clicar sobre o botão cadastro
    Digitar nome
    Digitar email  ${EMPTY}
    Digitar senha
    Clicar em cadastrar

Cenário 4: Tentando cadastrar com senha vazia
    Acessar Site da qazando
    Clicar sobre o botão cadastro
    Digitar nome
    Digitar email
    Digitar senha  ${EMPTY}
    Clicar em cadastrar
