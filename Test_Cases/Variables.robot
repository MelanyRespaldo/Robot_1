*** Settings ***
Library    SeleniumLibrary
Documentation    Proyecto de pruebas para Mel 2023

*** Variables ***
${nombre}    Melany
${snombre}  Candela
${ap}    Gerry


*** Test Cases ***
Demo
    [Documentation]    Prueba de nuestras priumeras variables
    [Tags]  test-uno
    Log     Mi nombre es ${nombre}


Demo dos
    [Documentation]    Prueba de nuestras priumeras variables
    [Tags]  test-dos
    Log     Mi nombre es ${nombre} ${snombre} ${ap}
    ${a} =   set variable    20
    ${b} =   set variable      30
    ${suma} =   Evaluate    ${a}+${b}
    ${multi} =   Evaluate    ${a}*${b}
    Log to console      ${a}
    Log to console      ${b}
    Log to console      ${suma}
    Log to console      ${multi}


*** Keywords ***
