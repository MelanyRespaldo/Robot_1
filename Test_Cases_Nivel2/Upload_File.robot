
*** Settings ***
Documentation    Setup and Teardown
Library    SeleniumLibrary
Resource    ../Keywords_1/Funciones.robot

Suite Setup    Inicio
Suite Teardown    Salir


*** Variables ***
${URL}    https://demoqa.com/automation-practice-form
${BROWSER}    chrome


*** Test Cases ***
Demo uno
    F_SCROLL    0   200
    choose file    id=uploadPicture      C:/Users/Melany/Documents/Robot-Framework/Test_Cases_Nivel2/Files/IMG_20200116_193831_214 (1).jpg
*** Keywords ***
Iniciar navegador
    Open Browser    ${URL}    ${BROWSER}


Inicio
    [Documentation]    Prueba Upload File
    [Tags]    test_uno
    Iniciar Navegador
    title should be    DEMOQA
    maximize browser window
    set selenium implicit wait    10
    set selenium speed    .20s


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



