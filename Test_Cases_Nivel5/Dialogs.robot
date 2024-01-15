*** Settings ***
Documentation    Api Rest
Library    SeleniumLibrary
Library    Dialogs
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${URL}    https://demoqa.com/text-box
${BROWSER}    chrome

*** Test Cases ***
Demo uno
    [Documentation]    Dialogs
    [Tags]      Test_dialogs_uno
    ${sel_navegador} =      Get Selection From User    Escoje tu navegador      chrome      firefox
    open browser    ${url}      ${sel_navegador}

    F_texto    //input[contains(@id,'userName')]    Juan
    F_texto    //input[contains(@id,'userEmail')]   Juan@gmail.com
    Execute Manual Step    ¿Estas de acuerdo?
    F_texto    //textarea[contains(@id,'currentAddress')]       Dirección1
    Pause Execution
    F_texto    //textarea[contains(@id,'permanentAddress')]     Dirección2
    F_scroll    0       850
    click button    //button[contains(@id,'submit')]

    sleep    2
    close browser

Demo dos
    [Documentation]    Dialogs pedir datos
    [Tags]      Test_dialogs_dos
    ${sel_navegador} =      Get Selection From User    Escoje tu navegador      chrome      firefox
    open browser    ${url}      ${sel_navegador}
    ${nom} =    Get Value From User    Dame tu nombre
    ${mail} =    Get Value From User    Dame tu mail
    F_texto    //input[contains(@id,'userName')]    ${nom}
    F_texto    //input[contains(@id,'userEmail')]   ${mail}
    sleep    2
    close browser

*** Keywords ***
Iniciar navegador
    Open Browser    ${URL}    ${BROWSER}
Cerrar navegador
    Close Browser