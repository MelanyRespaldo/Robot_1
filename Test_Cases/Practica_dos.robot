*** Settings ***
Library    SeleniumLibrary
Documentation    Proyecto de pruebas para Mel 2023
Library    SeleniumLibrary

*** Variables ***
${url}=     https://demoqa.com/text-box
${navegador}=     chrome



*** Test Cases ***
Practica uno
    [Documentation]    Utilizando las variables en un test
    [Tags]  test-uno
    open Browser       ${url}       ${navegador}
    maximize browser window
    input text    id=userName     Melany
    input text    id=userEmail  candelagerry@gmail.com
    input text  id=currentAddress   pringles 351
    input text  id=permanentAddress     calle 2
    execute javascript      window.scrollTo(0,200)
    click button    id=submit
    sleep    5
    close Browser


Practica dos
    [Documentation]    Utilizando las variables en un test
    [Tags]  test-uno
    open Browser       ${url}       ${navegador}
    maximize browser window
    input text    id=userName     Sofía
    input text    id=userEmail  csofíagerry@gmail.com
    input text  id=currentAddress   pringles 351
    input text  id=permanentAddress     calle 2
    execute javascript      window.scrollTo(0,200)
    click button    id=submit
    sleep    5
    close Browser