*** Settings ***
Library    SeleniumLibrary
Documentation    Demo de los select


*** Variables ***
${url}=     https://www.html.am/html-codes/forms/html-select-lists.cfm
${navegador}=     chrome
${t}=   5



*** Test Cases ***
#label
Demo uno
    [Documentation]     Demo select
    [Tags]      test_uno
    open browser    ${url}      ${navegador}
    sleep       ${t}
    execute javascript      window.scrollTo(0,600)
    sleep       ${t}
    select from list by index   fruit   2   #por name o id
    sleep       ${t}
    close browser

