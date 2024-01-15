*** Settings ***
Library    SeleniumLibrary
Documentation    Demo de los radio buttons


*** Variables ***
${url}=     https://www.w3schools.com/html/html_form_input_types.asp
${navegador}=     chrome
${t}=   5



*** Test Cases ***
Demo uno
    [Documentation]     Demo Tiempos
    [Tags]      test_uno
    open browser    ${url}      ${navegador}
    sleep       ${t}
    #Funcion para al espera de lso elementos
    ${tiempo}=   get selenium timeout
    log to console  ${tiempo}

    set selenium timeout    10
    #Tiempo para todas nuestras funciones
    set selenium speed    .1s
    execute javascript      window.scrollTo(0,1200)
    click button       id=html
    sleep       ${t}
    ${tiempo}=   get selenium implicit wait
    log to console  ${tiempo}
    close browser

