*** Settings ***
Documentation    Setup and Teardown
Library    SeleniumLibrary
Library   String

Resource    ../Keywords_1/Funciones.robot

#Suite Setup    Inicio
#Suite Teardown    Salir


*** Variables ***
${URL}    https://www.google.com/?hl=es
${BROWSER}    chrome
@{ROBOTS}=  Bender  Terminator  Robocop     RobotFramework
@{num}=     1   2   3   4   5   6   7   8   9   10
*** Test Cases ***
Demo uno
    FOR     ${items}    IN  @{ROBOTS}
        exit for loop if    $items=='Robocop'
        log to console    ${items}
        ${numbers}=     Generate random string    5   0123456789
    END

*** Keywords ***
Iniciar navegador
    Open Browser    ${URL}    ${BROWSER}

Inicio
    [Documentation]    Prueba de Ror por Range
    [Tags]    test_uno
    Iniciar Navegador
    maximize browser window
    set selenium implicit wait    10
    set selenium speed    .4s



Salir
    sleep   2
    Close Browser



