*** Settings ***
Documentation    Creando nuestras Keywords desde Python
Library    SeleniumLibrary
Library    ../Keywords_1/Keywords_python.py
Resource     ../Keywords_1/Funciones.robot



*** Variables ***
${url}=     https://demoqa.com/text-box
${navegador}=     chrome
${nom}=     Miguel



*** Test Cases ***
Login Uno
    [Documentation]     Keywords desde Python
    [Tags]      test_uno
    open browser    ${url}      ${navegador}
    maximize browser window
    #Crear un folder desde pyhton
    #Crear SubCarpeta desde Python   Subcarpeta_uno
    #Crear SubCarpeta desde Python   Subcarpeta_dos
    ${resultado}    Concatenar_Nombre    ${nom}   Pepe    Gerry
    log to console    ${resultado}
    Contatenación 2     ${nom}

*** Keywords ***
Crear un folder desde pyhton
    Crear_Folder

Crear SubCarpeta desde Python
    [Arguments]    ${nombre_carpeta}
    Crear_SubCarpeta    ${nombre_carpeta}

Contatenación
    [Documentation]    Bienvenidos a la concatenación
    [Arguments]    ${nom}   ${segnom}   ${ap}
    Concatenar_Nombre    ${nom}   ${segnom}   ${ap}


Contatenación 2
    [Documentation]    Validando el nombre de Juan
    [Arguments]    ${nom}
    ${r}=   Validar_Nombre    ${nom}
    log    ${r}
    log to console    ${r}


