*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://demoqa.com/text-box
${BROWSER}    chrome




*** Keywords ***
Iniciar navegador
    Open Browser    ${URL}    ${BROWSER}
Cerrar navegador
    Close Browser