*** Settings ***
Documentation    Api Rest
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    Dialogs
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${URL}    https://demoqa.com/text-box
${BROWSER}    chrome









*** Test Cases ***
Get Text
    [Documentation]    Valores con GET text
    [Tags]      test_text
    ${sel_navegador} =      Get Selection From User    Escoje tu navegador      chrome      firefox
    open browser    ${url}      ${sel_navegador}
    maximize browser window
    title should be     DEMOQA

    ${valor} =  Get Text    //div[@class='main-header'][contains(.,'Text Box')]
    log to console    ${valor}
    should be equal     ${valor}    Text Box


    sleep    2
    close browser

Get Title
    [Documentation]    Valores con GET title
    [Tags]      test_title
    ${sel_navegador} =      Get Selection From User    Escoje tu navegador      chrome      firefox
    open browser    ${url}      ${sel_navegador}
    maximize browser window
    title should be     DEMOQA

    ${valor} =  Get Title
    log to console    ${valor}
    should be equal     ${valor}    DEMOQA


    sleep    2
    close browser

Get Atribute
    [Documentation]    Valores con GET Atribute
    [Tags]      test_atribute
    ${sel_navegador} =      Get Selection From User    Escoje tu navegador      chrome      firefox
    open browser    ${url}      ${sel_navegador}
    maximize browser window
    title should be     DEMOQA

    ${valor} =  Get Element Attribute    userName       placeholder
    log to console    ${valor}
    should be equal     ${valor}    Full Name
    IF  '${valor}' == 'Full Name'
        F_texto    userName     Juan
    ELSE
        log to console    No es el campo
    END


    sleep    2
    close browser





*** Keywords ***
Iniciar navegador
    Open Browser    ${URL}    ${BROWSER}
Cerrar navegador
    Close Browser