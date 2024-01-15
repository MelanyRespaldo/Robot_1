*** Settings ***
Documentation    Builtln
Library    SeleniumLibrary
Library    Dialogs
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${URL}    https://demoqa.com/text-box
${BROWSER}    chrome

*** Test Cases ***
Demo uno
    [Documentation]    Builtln Concatenar
    [Tags]      Test_concatenar
    ${sel_navegador} =      Get Selection From User    Escoje tu navegador      chrome      firefox
    open browser    ${url}      ${sel_navegador}
    maximize browser window
    title should be     DEMOQA


    ${nom} =    Set Variable    Juan
    ${ap} =     set variable    Perez
    ${nombre_completo} =    Catenate    ${nom}      ${ap}
    ${nombre_completo2} =    Catenate    SEPARATOR=--    ${nom}      ${ap}
    ${var} =    Catenate    SEPARATOR=--    ${nombre_completo2}      Chavez
    log to console    ${nombre_completo2}

Repetir keyword
    [Documentation]    Builtln Repetir
    [Tags]      test_repetir
    #Repeat Keyword    10 times      Bienvenido
    Repeat Keyword    1 minutes     Bienvenido

Comparar should equal
    [Documentation]    Builtln Validar igualdad
    [Tags]      test_equal1

    ${a}=   Set Variable    10
    ${b}=   Set Variable    20
    should be equal    ${a}     10
    IF  ${a} == ${b}
        log to console    Son iguales
    ELSE
        log to console    No son iguales
    END

Comparar should equal2
    [Documentation]    Builtln Validar integer
    [Tags]      test_equal2

    ${a}=   Set Variable    10
    ${b}=   Set Variable    10
    should be equal as integers    ${a}     10

Comparar should equal3
    [Documentation]    Builtln Validar strings
    [Tags]      test_equal3

    ${nombre}=  Set Variable    Pedro
    should be equal as strings    ${nombre}     Pedro


Comparar should equal4
    [Documentation]    Builtln Validar strings
    [Tags]      test_equal4

    ${nombre}=  Set Variable    Pedro Perez Chavez
    should contain    ${nombre}     Ped

Comparar should equal5
    [Documentation]    Builtln Validar igualdad true
    [Tags]      test_true

    ${a}=       Set Variable    20
    should be true    ${a} != 21

Comparar should equal6
    [Documentation]    Builtln Validar empty
    [Tags]      test_empty

    ${a}=       Set Variable
    should be empty     ${a}

Comparar should not equal7
    [Documentation]    Builtln Validar con negación
    [Tags]      test_not

    ${a}=       Set Variable        20
    ${nom}=     set variable    Juan
    should not be equal    ${a}     15
    #should not be equal as strings    ${nom}    Juan
    should not be empty    ${nom}


Comparar should con if equal8
    [Documentation]    Builtln Validar con función IF
    [Tags]      test_if

    ${a}=       Set Variable        20
    #should be equal    ${a}     20
    ${bandera}=     Run Keyword And Return Status       should be equal    ${a}     15
    log to console    ${bandera}
    IF    '${bandera}' == 'True'
        log to console    A si es igual a 20
        Dato Uno
    ELSE
        log to console    A no es igual a 20
        Dato Dos
    END

Comparar ELSE IF
    [Documentation]    Builtln Validar con función ELSE IF
    [Tags]      test_else_if

    ${nom}=       Get Value From User   Dame tu nombre

    IF    '${nom}' == 'Rodrigo'
        log to console    Bienvenido ${nom}
        Dato Uno
    ELSE IF    '${nom}' == 'Juan'
        log to console    Bienvenido ${nom}
        Dato Dos
    ELSE IF    '${nom}' == 'Pedro'
        log to console    Bienvenido ${nom}
        Dato Tres
    ELSE
        log to console    No es ninguna de la opciones anteriores
    END

Comparar Keyword If
    [Documentation]    Builtln Validar con keyword IF
    [Tags]      test_keyword_if

    ${nom}=     Set Variable    Juann
    #Run Keyword If    '${nom}' == 'Miguel'      Bienvenido      ELSE    Dato Uno
    Run Keyword If    '${nom}' == 'Miguel'      Bienvenido      ELSE IF    '${nom}' == 'Juan'      Dato Dos    ELSE    No te conozco


*** Keywords ***
Bienvenido
    log to console    Bienvenido a Robot Framework

Dato uno
    log to console    esto es del Dato uno

Dato dos
    log to console    esto es del Dato dos

Dato tres
    log to console    esto es del Dato tres

Dato cuatro
    log to console    esto es del Dato cuatro
