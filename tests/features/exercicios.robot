*** Settings ***
Documentation        Aqui estarão presentes todos os exercícios da aula de automação.
...                  Então não se sinta perdido pois aqui a gente descreve o que ta fazendo.

*** Variables ***
&{PESSOA}          nome=Helder    
...                sobrenome=Fernandes    
...                idade=28    
...                endereco=Rua dos flox    
...                carro=BMW X6    
...                data_nascimento=12/04/1994

@{FRUTAS}        
...                banana
...                morango    
...                abacaxi
...                melancia
...                manga

*** Keywords ***
Somar dois numeros
    [Arguments]            ${NUM_A}    ${NUM_B}
    ${SOMA}    Evaluate    ${NUM_A}+${NUM_B}
    Log To Console         ${SOMA} 

Somar os numeros "${NUM_A}" e "${NUM_B}"
    ${SOMA}    Evaluate    ${NUM_A}+${NUM_B}
    Log To Console         ${SOMA} 

Criar E-mail
    [Arguments]       ${NOME}    ${SOBRENOME}    ${IDADE}
    Log To Console    ${NOME}_${SOBRENOME}_${IDADE}@robot.com

    ${EMAIL}        Convert To String    item"${NOME}_${SOBRENOME}_${IDADE}@robot.com"
    Log To Console    ${EMAIL}

    ${CONCATENAR}    Catenate    SEPARATOR=_    ${NOME}    ${SOBRENOME}    ${IDADE}@robot.com
    Log To Console    ${CONCATENAR}

Contar de 0 a 9
    FOR    ${counter}    IN RANGE    0    9
        Log To Console   ${counter}
    END

Imprimir lista de FRUTAS
    @{FRUTAS}    Create List    Banana    Maçã    Manga    Morango    Abacaxi
    FOR    ${fruta}    IN    @{FRUTAS}
        Log To Console       ${fruta}
    END

Imprimindo a profecia
    @{PAISES}    Create List    USA      Holanda    Japão    Dubai    Grécia
    FOR    ${país}    IN    @{PAISE}
        Log To Console    Eu profetizo que irei para: ${país}
    END


Imprimindo em qual numero estou
    FOR    ${counter}    IN RANGE    0    11
        Log To Console    Estou no número: ${counter} 
    END

*** Test Cases ***
Cenario imprimindo de 0 a 10
    [Tags]        ESTOU
    Imprimindo em qual numero estou

Cenario: Profetizando
    [Tags]        PROFECIA
    Imprimindo a profecia


*** Test Cases ***
Cenario: Imprimindo lista de FRUTAS
    [Tags]        FRUTAS
    Imprimir lista de FRUTAS

Cenario: Validar contagem de 0 a 9
    [Tags]        contador
    Contar de 0 a 9

Cenario: Validar criacao de email
    [Tags]            EMAIL
    Criar E-mail    helder    fernandes    28

Cenario: Validar soma de dois numeros
    [Tags]            SOMA
    Somar dois numeros    546    789

Cenario: Somar numeros com argumento embutido
    [Tags]            EMBUTIDO
    Somar os numeros "951" e "951"

Imprimindo no console as informações da PESSOA
    Log To Console        \n${PESSOA.nome}
    Log To Console        ${PESSOA.sobrenome}
    Log To Console        ${PESSOA.idade}
    Log To Console        ${PESSOA.endereco}
    Log To Console        ${PESSOA.carro}
    Log To Console        ${PESSOA.data_nascimento}

Cenario: Validar impressão da lista
    [Tags]        LISTA        
    Log To Console        \n${FRUTAS[0]}
    Log To Console        ${FRUTAS[1]}
    Log To Console        ${FRUTAS[2]}
    Log To Console        ${FRUTAS[3]}
    Log To Console        ${FRUTAS[4]}




