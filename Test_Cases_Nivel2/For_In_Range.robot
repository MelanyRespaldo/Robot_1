
*** Settings ***
Documentation    Setup and Teardown
Library    SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot

#Suite Setup    Inicio
#Suite Teardown    Salir


*** Variables ***
${URL}    https://www.google.com/?hl=es
${BROWSER}    chrome
@{ROBOTS}=  Bender  Terminator  Robocop     RobotFramework
@{num}=     1   2   3   4   5   6   7   8   9   10
*** Test Cases ***
#Demo uno
    #FOR     ${i}    IN RANGE    1   4
        #log to console      ${i}
        #Open Browser    ${URL}    ${BROWSER}
        #maximize browser window
    #END

#Demo dos
    #FOR     ${rob}    IN    @{ROBOTS}
        #log to console    ${rob}
    #END

#Demo tres
    #FOR     ${items}    IN  @{num}
        #log to console    ${items}
        #Open Browser    ${URL}    ${BROWSER}
        #maximize browser window
    #END

Demo cuatro
    FOR     ${items}    IN  @{ROBOTS}
        continue for loop if    $items=='Terminator'
        log to console    ${items}
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



