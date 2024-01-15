
*** Settings ***
Documentation    Setup and Teardown
Library    SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot

Suite Setup    Inicio
Suite Teardown    Salir


*** Variables ***
${URL}    https://demoqa.com/droppable
${BROWSER}    chrome


*** Test Cases ***
Demo uno
    drag and drop    id=draggable   id=droppable

Demo dos
    drag and drop by offset    id=draggable   -100   50
*** Keywords ***
Iniciar navegador
    Open Browser    ${URL}    ${BROWSER}


Inicio
    [Documentation]    Opciones de click
    [Tags]    test_uno
    Iniciar Navegador
    title should be    DEMOQA
    maximize browser window
    set selenium implicit wait    10
    set selenium speed    .4s


Validar_Login_1
    F_texto    id=Email     melanyg@gmail.com
    F_texto     id=Password     12345
    click button    xpath=//button[@type='submit'][contains(.,'Log in')]
    wait until page contains    Login was unsuccessful. Please correct the errors and try again.


Validar_Login_2
    ${email}=   set variable
    F_texto    id=Email     ${email}
    F_texto     id=Password     12345
    click button    xpath=//button[@type='submit'][contains(.,'Log in')]
    wait until page contains    Please enter your email


Validar_Login_3
    ${email}=   set variable
    F_texto    id=Email     ${email}
    F_texto     id=Password     12345
    click button    xpath=//button[@type='submit'][contains(.,'Log in')]
    wait until page contains    Please enter your email


Salir
    sleep   2
    Close Browser



