*** Settings ***
Documentation    Practica Excel Python
Library    SeleniumLibrary
Library    Files/Practica_Excel.py
Resource    ../Keywords_1/Funciones.robot
Resource     Files/MasterExcel_Robot.robot



*** Variables ***
${url}=     https://the-internet.herokuapp.com/login
${navegador}=     chrome
${nom}=     Miguel



*** Test Cases ***
Test uno
    Inicio
    ${filas}=   Numero De Filas    Hoja2
    FOR     ${i}    IN RANGE    2   ${filas}+1
        ${usuarios}=    Numero De Columnas    Hoja2     ${i}    1
        ${clave}=    Numero De Columnas    Hoja2     ${i}    2
           Login    ${usuarios}     ${clave}
    END
    Final





*** Keywords ***
Inicio
    [Documentation]     Inicio del sistema
    [Tags]      test_uno
    open browser    ${url}      ${navegador}
    maximize browser window
    title should be     The Internet

Login
    [Documentation]     Inicio de Login
    [Tags]      test_uno
    [Arguments]     ${u}    ${p}
    F_Texto   //input[@name="username"]    ${u}
    F_Texto   //input[@name="password"]    ${p}
    Click Element    //i[@class="fa fa-2x fa-sign-in"]


Final
    [Documentation]     Fin del sistema
    [Tags]      test_uno
    sleep   4
    close browser

