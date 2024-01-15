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


    open browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      ${navegador}
    maximize browser window

    switch browser    1
    ${titulo1}=     get title
    log to console    ${titulo1}

    switch browser    1
    ${titulo2}=     get title
    log to console    ${titulo2}

    sleep   2
    close all browsers

