
*** Settings ***
Documentation    Setup and Teardown
Library    SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot

Suite Setup    Inicio
Suite Teardown    Salir


*** Variables ***
${URL}    https://www.google.com/?hl=es
${BROWSER}    chrome


*** Test Cases ***
Demo uno
    F_texto    //textarea[contains(@id,'APjFqb')]   Ferrari
    Press Keys    //textarea[contains(@id,'APjFqb')]    ENTER
    scroll element into view    //div[@class='s75CSd u60jwe r2fjmd AB4Wff'][contains(.,'ferrari f40')]
    sleep   4
*** Keywords ***
Iniciar navegador
    Open Browser    ${URL}    ${BROWSER}

Inicio
    [Documentation]    Prueba de Scroll
    [Tags]    test_uno
    Iniciar Navegador
    maximize browser window
    set selenium implicit wait    10
    set selenium speed    .4s



Salir
    sleep   2
    Close Browser



