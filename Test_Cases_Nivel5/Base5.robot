*** Settings ***
Documentation    Api Rest
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${URL}    https://demoqa.com/text-box
${BROWSER}    chrome




*** Keywords ***
Iniciar navegador
    Open Browser    ${URL}    ${BROWSER}
Cerrar navegador
    Close Browser