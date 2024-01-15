*** Settings ***
Library    SeleniumLibrary
Documentation    Demo validación de elementos


*** Variables ***
${url}=     https://testpages.herokuapp.com/styled/alerts/alert-test.html
${navegador}=     chrome
${t}=   5



*** Test Cases ***
Demo uno
    [Documentation]     Demo validación de elementos
    [Tags]      test_uno
    open browser    ${url}      ${navegador}
    set selenium speed    .1s
    maximize browser window
    title should be    Test Page For JavaScript Alerts
    click button    id=alertexamples
    handle alert    accept
    click button    id=confirmexample
    handle alert    accept
    click button    id=confirmexample
    handle alert    dismiss
    sleep   ${t}
    close browser
