*** Settings ***
Documentation    Practica FOR
Library    SeleniumLibrary
Library   String
Resource    ../Keywords_1/Funciones.robot

#Suite Setup    Inicio
#Suite Teardown    Salir


*** Variables ***
${URL}    https://testpages.herokuapp.com/styled/basic-html-form-test.html
${BROWSER}    chrome
@{ROBOTS}=  Bender  Terminator  Robocop     RobotFramework
@{num}=     1   2   3   4   5   6   7   8   9   10
*** Test Cases ***
Demop uno

    FOR     ${i}    IN RANGE    0   4
        Inicio
        Bloque uno
        Bloque dos
        Bloque tres
        Salir
    END

*** Keywords ***
Iniciar navegador
    Open Browser    ${URL}    ${BROWSER}

Inicio
    [Documentation]    Practica de FOR
    [Tags]    test_uno
    Iniciar Navegador
    maximize browser window
    title should be     HTML Form Elements
    set selenium implicit wait    10
    #set selenium speed    .4s

Bloque uno
    [Documentation]    Bloque_uno
    ${numbers}=     Generate random string    5   0123456789
    F_texto     //input[contains(@name,'username')]     Nombre # ${numbers}
    F_texto     //input[contains(@type,'password')]     ${numbers}
    F_texto     //textarea[@cols='40'][contains(.,'Comments...')]     Nuevo comentario # ${numbers}

Bloque tres
    [Documentation]    Bloque_tres
    #select from list by index    //option[@value='ms1'][contains(.,'Selection Item 1')]     2
    sleep   1
    select from list by index    //select[contains(@name,'dropdown')]   1
    sleep   1
    click button    //input[contains(@type,'submit')]



Bloque dos
    [Documentation]    Bloque_dos
    choose file    //input[contains(@type,'file')]      C:/Users/Melany/Documents/Robot-Framework/Test_Cases_Nivel2/Files/IMG_20200116_193831_214 (1).jpg
    click element   //input[contains(@value,'cb2')]
    click element   //input[contains(@value,'cb2')]



Salir
    sleep   2
    Close Browser



