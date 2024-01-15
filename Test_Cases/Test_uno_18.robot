*** Settings ***
Documentation    Proyecto de pruebas para Mel 2023
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Mi primer test
    [Documentation]    Primer prueba del sistema
    [Tags]  test uno
    open Browser    https://demoqa.com/text-box    chrome
    maximize browser window
    input text    id=userName     Melany
    input text    id=userEmail  candelagerry@gmail.com
    input text  id=currentAddress   pringles 351
    input text  id=permanentAddress     calle 2
    execute javascript      window.scrollTo(0,200)
    click button    id=submit
    sleep    5
    close Browser


Mi segundo test
    [Documentation]    Segunda prueba del sistema
    [Tags]  test dos
    open Browser    https://demoqa.com/text-box    chrome
    maximize browser window
    input text    id=userName     Melany
    input text    id=userEmail  candelagerry@gmail.com
    input text  id=currentAddress   pringles 351
    input text  id=permanentAddress     calle 2
    execute javascript      window.scrollTo(0,200)
    click button    id=submit1
    sleep    5
    close Browser
