*** Settings ***
Documentation        Aqui neste arquivo estarão presentes todos os testes
...                  Web automatizados com suas Keywords referentes ao cadastro

Resource           ../../src/config/package.robot

Test Setup         Abrir navegador
Test Teardown      Fechar navegador

*** Test Cases *
Caso de Teste 04: Adicionar Cliente
    Acessar a página home do site
    Clicar em "Sign in"
    Informar um e-mail válido
    Clicar em Create an account
    Preencher os dados obrigatórios
    Submeter cadastro
    Conferir se o cadastro foi efetuado com sucesso