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
    Bloque_uno
    Bloque_dos
    Bloque_tres
    Bloque_cuatro
    Bloque_cinco
*** Keywords ***
Iniciar navegador
    Open Browser    ${URL}    ${BROWSER}


Inicio
    [Documentation]    Prueba Upload File
    [Tags]    test_uno
    Iniciar Navegador
    maximize browser window
    set selenium implicit wait    10
    set selenium speed    .20s


Bloque_uno
    [Documentation]    Bloque_uno
    F_texto     firstName       Pepe
    F_texto     lastName        Garcia
    F_texto     userEmail       pg@gmail.com


Bloque_dos
    [Documentation]    Bloque_dos
    click element   //label[@for='gender-radio-2'][contains(.,'Female')]
    F_texto         userNumber      1140871212
    click element   dateOfBirthInput
    click element   //div[@class='react-datepicker__day react-datepicker__day--022'][contains(.,'22')]


Bloque_tres
    [Documentation]    Bloque_tres
    press keys    //*[@id="subjectsContainer"]/div/div[1]   Engli
    click element at coordinates    //*[@id="subjectsContainer"]/div/div[1]     0   50


Bloque_cuatro
    [Documentation]     Bloque_cuatro
    click element    //label[@for='hobbies-checkbox-1'][contains(.,'Sports')]
    choose file    //input[contains(@id,'uploadPicture')]   C:/Users/Melany/Documents/Robot-Framework/Test_Cases_Nivel2/Files/IMG_20200116_193831_214 (1).jpg
    F_scroll    0   1200
    F_texto     //textarea[contains(@id,'currentAddress')]      direción demo


Bloque_cinco
    [Documentation]     Bloque_cinco
    click element   //div[@class=' css-1wa3eu0-placeholder'][contains(.,'Select State')]
    f_click_xy    //div[@class=' css-1wa3eu0-placeholder'][contains(.,'Select State')]    0   50
    click element    //div[@class=' css-1wa3eu0-placeholder'][contains(.,'Select City')]
    f_click_xy    //div[@class=' css-1wa3eu0-placeholder'][contains(.,'Select City')]   0   50
    click button    submit

Salir
    sleep   2
    Close Browser



