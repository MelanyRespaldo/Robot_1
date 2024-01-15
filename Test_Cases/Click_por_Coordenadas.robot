*** Settings ***
Library    SeleniumLibrary
Documentation    Demo de Click por Coordenadas


*** Variables ***
${url}=     https://www.w3schools.com/html/html_iframe.asp
${navegador}=     chrome
${t}=   5



*** Test Cases ***
Demo uno
    [Documentation]     Demo coordenadas
    [Tags]      test_uno
    open browser    ${url}      ${navegador}
    maximize browser window
    sleep    5
    click element at coordinates    xpath=//a[@class='ga-nav subtopnav_firstitem active']   200     0
    sleep   5