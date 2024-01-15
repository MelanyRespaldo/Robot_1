*** Settings ***
Documentation    Proyecto de pruebas para Mel 2023
Library    SeleniumLibrary

*** Variables ***
${url}=     https://demoqa.com/text-box
${navegador}=     chrome
${t} =  .5


*** Test Cases ***
Practica uno validando título
    [Documentation]    Validando el título de la página
    [Tags]  test-uno
    open Browser       ${url}       ${navegador}
    maximize browser window
    #Validando título
    ${name}=    set variable    id=userName
    ${email}=   set variable    id=userEmail
    ${dir1}=    set variable    id=currentAddress
    Element should Be Visible    ${name}
    Element should Be Enabled    ${name}
    input text    id=userName     Melany
    Element should Be Visible    ${email}
    Element should Be Enabled    ${email}
    input text    id=userEmail  candelagerry@gmail.com
    Element Attribute Value Should Be    ${dir1}    Placeholder     Current Address
    input text  id=currentAddress   pringles 351
    input text  id=permanentAddress     calle 2
    execute javascript      window.scrollTo(0,200)
    click button    id=submit
    sleep    ${t}
    close Browser

Validando Negaciones
    [Documentation]    Validando Negación
    [Tags]  test-dos
    open Browser       ${url}       ${navegador}
    maximize browser window
    #Validando título
    ${name}=    set variable    id=userNameee
    ${email}=   set variable    id=userEmail
    ${dir1}=    set variable    id=currentAddress
    Element should not Be Visible    ${name}   ${name}
    input text    id=userName     Melany
    Element should Be Visible    ${email}
    Element should Be Enabled    ${email}
    input text    id=userEmail  candelagerry@gmail.com
    Element Attribute Value Should Be    ${dir1}    Placeholder     Current Address
    input text  id=currentAddress   pringles 351
    input text  id=permanentAddress     calle 2
    execute javascript      window.scrollTo(0,200)
    click button    id=submit
    sleep    ${t}
    close Browser

   #robot -d ../Reportes_Validar_visible -i test-dos ./Validar_visible.robot (i- para validar un solo tag)
