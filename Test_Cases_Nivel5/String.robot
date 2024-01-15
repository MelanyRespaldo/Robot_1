*** Settings ***
Documentation    Opearting System
Library    SeleniumLibrary
Library    RequestsLibrary
Library     Dialogs
Library    Collections
Library     String
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${URL}    https://demoqa.com/text-box
${BROWSER}    chrome


*** Test Cases ***
Convertir texto a Mayusculas
    [Documentation]    Texto a mayusculas
    [Tags]      test_may
    ${nom}=     Get Value From User       Dame tu nombre


    ${NOM1}=     convert to upper case    ${nom}
    log to console    ${nom}
    log to console    ${NOM1}

Convertir texto a minusculas
    [Documentation]    Texto a minusculas
    [Tags]      test_min
    ${nom}=     Get Value From User       Dame tu nombre


    ${NOM1}=     convert to lower case    ${nom}
    log to console    ${nom}
    log to console    ${NOM1}


Substarer
    [Documentation]    Substraer texto
    [Tags]      test_sub
    ${nom}=     Get Value From User       Dame tu nombre


    ${val}=     get substring    ${nom}     0   2
    log to console    ${nom}
    log to console    ${val}



*** Keywords ***
Iniciar navegador
    Open Browser    ${URL}    ${BROWSER}
Cerrar navegador
    Close Browser