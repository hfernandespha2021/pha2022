*** Settings ***
Documentation        Aqui estarão presentes todas as configurações de Setup e Teardown
...                  Essas configurações, podem ser utilizadas tanto para Suites Setup/Teardown
...                  quanto para test setup/teardown.

Resource             package.robot

*** Keywords ***
Abrir navegador
    Set Selenium Implicit Wait    20
    Open Browser                  about:blank        chrome
    Go To                         http://automationpractice.com/index.php
    Maximize Browser Window

Fechar navegador    
    Capture Page Screenshot
    Close Browser