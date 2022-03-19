*** Settings ***
Documentation        Aqui estarão presentes todas as keywords dos testes de cadastro
...                  do site automationpractice.com

Resource            ../../config/package.robot

*** Keywords ***
Acessar a página home do site
    Acessar a página home do site Automation Practice

Clicar em "${BUTTON}"
    Wait Until Element Is Visible    xpath=//*[contains(text(), '${BUTTON}')]
    Click Element                    xpath=//*[contains(text(), '${BUTTON}')]
    
Clicar em Create an account
    Wait Until Element Is Visible    id=SubmitCreate
    Click Element                    id=SubmitCreate
    
Informar um e-mail válido
    ${FAKE_EMAIL}                    FakerLibrary.Free Email
    Wait Until Element Is Visible    email_create
    Input Text                       email_create    ${FAKE_EMAIL}
    
Preencher os dados obrigatórios
    ${FAKE_NAME}                     FakerLibrary.First Name
    ${FAKE_LASTNAME}                 FakerLibrary.Last Name
    Wait Until Element Is Visible    ${REGISTER.form_register}

    Click Element                    ${REGISTER.check_mr}
    Input Text                       ${REGISTER.first_name}        ${FAKE_NAME}
    Input Text                       ${REGISTER.last_name}         ${FAKE_LASTNAME}
    Input Text                       ${REGISTER.password}          123456789
    Debug
    Select From List By Value        ${REGISTER.select_days}       3
    Select From List By Value        ${REGISTER.select_months}     12
    Select From List By Value        ${REGISTER.select_year}       1994

    Input Text                       ${REGISTER.company}           Robot
    Input Text                       ${REGISTER.address1}          Robot Street

    #Input Text                       ${REGISTER.city}              text
    #Input Text                       ${REGISTER.state}             text
    #Input Text                       ${REGISTER.postcode}          text
    #Input Text                       ${REGISTER.other}             text
    #Input Text                       ${REGISTER.mobile}            text
    #Input Text                       ${REGISTER.alias}             text

    Click Element                    ${REGISTER.btn_register}       

Submeter cadastro
    Click Element    locator
    
Conferir se o cadastro foi efetuado com sucesso
    Wait Until Page Contains    text
    
