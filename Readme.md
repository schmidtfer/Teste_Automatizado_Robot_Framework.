 ## Projeto de Automação com Robot Framework 🚀

Automação de testes baseada em palavras-chave (Keyword-Driven) e dados tabulados, desenvolvida utilizando o Robot Framework com a biblioteca SeleniumLibrary.

## Steps de instação
- Instalar o python e selecionar o path na hora de instalar:

- Instalar o robot framework:
    pip install robotframework

- Instalar o selenium com robot:
    pip install robotframework-seleniumlibrary

- Instalar a versão boa para o selenium:
    pip install selenium==4.9.0   //versão mais estável

- Baixar o chromedriver: driver que vai abrir o navegador
    https://chromedriver.chromium.org/downloads

- Pega o caminho do python em variaveis / script:
C:\Users\Usuário\AppData\Local\Programs\Python\Python312\Scripts\

- Colar o chromedriver dentro do caminho acima.

# Para rodar o teste: 
 - robot nome do teste.robot

 # Para rodar teste específico
- robot --test "Cenário 1: e o nome do cenário" nome do teste.robot

# Screenshots:
- O projeto captura prints automaticamente apenas em casos de falha.
- Os prints são salvos na pasta Screenshots.

# Pasta results:
- Contém todos os logs, relatórios e saídas de execução dos testes.
- Comando utilizado para gerar os resultados dentro da pasta:  robot --outputdir results .
