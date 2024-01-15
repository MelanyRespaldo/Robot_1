*** Settings ***
Library    SeleniumLibrary
Documentation    Switch en Navegadores


*** Variables ***
${url}=    https://demoqa.com/
${navegador}=     chrome




*** Test Cases ***
Test Uno
    [Documentation]     Switch Navegadores
    [Tags]      test_uno
    open browser    ${url}      ${navegador}
    maximize browser window
    title should be    DEMOQA
    set selenium implicit wait    10
    set selenium speed    .4s

    sleep    2
    go to    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
    sleep   2
    go back


    sleep   2
    close all browsers

