*** Settings ***
Documentation        Aqui neste arquivo estarão presentes todos os testes
...                  Web automatizados com suas Keywords.

Resource           ../../src/config/package.robot

Test Setup         Abrir navegador
Test Teardown      Fechar navegador

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente
    [Tags]        PESQUISA
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto Blouse foi listado no site

Caso de Teste 02: Pesquisar produto não existente
    [Tags]        PESQUISA2
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem "No results were found for your search"





    
