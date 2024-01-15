*** Settings ***
Library    SeleniumLibrary
Documentation    Demo de los Select radio buttons


*** Variables ***
${url}=     https://www.w3schools.com/html/html_iframe.asp
${navegador}=     chrome
${t}=   5



*** Test Cases ***
Demo uno
    [Documentation]     Demo Frame
    [Tags]      test_uno
    open browser    ${url}      ${navegador}
    maximize browser window
    sleep    5
    #si tiene iframes usar ""select frame "
    click link      //a[@href='/js/default.asp'][contains(.,'JAVASCRIPT')]
    close browser
    #cerrar el frame "Unselect frame"