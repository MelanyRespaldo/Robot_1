*** Settings ***
Library    SeleniumLibrary
Documentation    Demo de los Select radio buttons


*** Variables ***
${url}=     https://demoqa.com/radio-button
${navegador}=     chrome
${t}=   5



*** Test Cases ***
Demo uno
    [Documentation]     Demo Select Radio buttons
    [Tags]      test_uno
    open browser    ${url}      ${navegador}
    maximize browser window
    sleep    5
    wait until element is enabled    id=yesRadio
    click element    xpath=//label[contains(@for,'yesRadio')]
    close browser

