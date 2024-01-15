*** Settings ***
Documentation    Api Rest
Library    SeleniumLibrary
Library    Collections
Resource    ../Keywords_1/Funciones.robot

#Suite Setup    Inicio
#Suite Teardown    Salir


*** Variables ***
${URL}    https://demoqa.com/text-box
${BROWSER}    chrome


*** Test Cases ***
Demo uno
    Inicio


*** Keywords ***
Inicio
    [Documentation]    Prueba de nuestras Primeras Variables
    [Tags]    test_uno
    FOR     ${i}   IN RANGE     1   4
        Open Browser    ${URL}    ${BROWSER}
        maximize browser window
        set selenium implicit wait    10
        set selenium speed    .4s
    END
    F_texto    //input[contains(@id,'userName')]    Rodrigo

Salir
    sleep   2
    Close All Browsers



