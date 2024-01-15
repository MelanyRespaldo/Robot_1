*** Settings ***
Library    SeleniumLibrary
Documentation    Keywords


*** Variables ***
${url}=     https://demoqa.com/text-box
${navegador}=     chrome



*** Test Cases ***
Practica uno validando título
    Cargando el navegador

    input text    id=userName     Melany
    input text    id=userEmail  candelagerry@gmail.com
    input text  id=currentAddress   pringles 351
    input text  id=permanentAddress     calle 2
    execute javascript      window.scrollTo(0,200)
    click button    id=submit
    sleep    5
    close Browser


*** Keywords ***
Cargando el navegador
    [Documentation]    Keywords
    [Tags]  test-uno
    open Browser       ${url}       ${navegador}
    maximize browser window
    #Validando título
    title should be     DEMOQA