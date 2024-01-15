*** Settings ***
Library    SeleniumLibrary
Documentation    Demo validación de elementos


*** Variables ***
${url}=     https://demoqa.com/automation-practice-form
${navegador}=     chrome
${t}=   5



*** Test Cases ***
Demo uno
    [Documentation]     Demo validación de elementos
    [Tags]      test_uno
    open browser    ${url}      ${navegador}
    set selenium speed    .1s
    maximize browser window
    element should be enabled    id=gender-radio-1
    #wait until page contains    Student Registration Form
    #wait until page does not contain    Student Registration 1
    #wait until page contains element    //h5[contains(.,'Student Registration Form')]
    #wait until page does not contain element    //h5[contains(.,'Student Registration Forrm')]
    wait until element is visible   //input[@id='firstName']
    wait until element is enabled    //input[@id='firstName']
Demo dos
    [Documentation]     Demo validación de elementos con error
    [Tags]      test_uno
    open browser    ${url}      ${navegador}
    set selenium speed    .1s
    maximize browser window
    element should be enabled    id=gender-radio-1
    #wait until page contains    Student Registration 1
    wait until page contains element    //h5[contains(.,'Student Registration')]