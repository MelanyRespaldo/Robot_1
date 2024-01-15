*** Settings ***
Library    SeleniumLibrary
Documentation    Demo de los radio buttons


*** Variables ***
${url}=     https://www.w3schools.com/html/html_form_input_types.asp
${navegador}=     chrome
${t}=   5



*** Test Cases ***
Demo uno
    [Documentation]     Demo radio Button
    [Tags]      test_uno
    open browser    ${url}      ${navegador}
    sleep       ${t}
    execute javascript      window.scrollTo(0,1200)
    click button       id=html
    sleep       ${t}
    close browser

Demo dos
    [Documentation]     Demo Check box
    [Tags]      test_dos
    open browser    ${url}      ${navegador}
    sleep       ${t}
    execute javascript      window.scrollTo(0,1400)
    click button        xpath=//input[contains(@id,'vehicle1')]
    sleep       ${t}
    close browser