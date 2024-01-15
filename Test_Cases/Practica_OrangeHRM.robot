*** Settings ***
Library    SeleniumLibrary
Documentation    Demo de Practica ORange HRM


*** Variables ***
${url}=     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${navegador}=     chrome
${t}=   5



*** Test Cases ***
Login Uno
    [Documentation]     Usuario y Password Incorrectas
    [Tags]      test_uno
    open browser    ${url}      ${navegador}
    maximize browser window
    title should be    OrangeHRM
    set selenium implicit wait    10
    set selenium speed   .4s
    ${user}=    set variable    Rodrigo
    ${pass}=    set variable    123456
    input text    username      ${user}
    input text    password      ${pass}
    click button    //button[@type='submit'][contains(.,'Login')]
    wait until element is visible    //p[contains(.,'Invalid credentials')]
    Log To Console    Primer error encontado OK
    close browser


Login dos
    [Documentation]     Usuario OK y Password Incorrecta
    [Tags]      test_dos
    open browser    ${url}      ${navegador}
    maximize browser window
    title should be    OrangeHRM
    set selenium implicit wait    10
    set selenium speed   .4s
    ${user}=    set variable    Admin
    ${pass}=    set variable    123456
    input text    username      ${user}
    input text    password      ${pass}
    click button    //button[@type='submit'][contains(.,'Login')]
    wait until element is visible    //p[contains(.,'Invalid credentials')]
    Log To Console    Segundo error encontado OK
    close browser


Login tres
    [Documentation]     Usuario incorrecto y Password ok
    [Tags]      test_tres
    open browser    ${url}      ${navegador}
    maximize browser window
    title should be    OrangeHRM
    set selenium implicit wait    10
    set selenium speed   .4s
    ${user}=    set variable    Rodrigo
    ${pass}=    set variable    admin123
    input text    username      ${user}
    input text    password      ${pass}
    click button    //button[@type='submit'][contains(.,'Login')]
    wait until element is visible    //p[contains(.,'Invalid credentials')]
    Log To Console    Tercer error encontado OK
    close browser


Login cuatro
    [Documentation]     Usuario ok y Password vacia
    [Tags]      test_cuatro
    open browser    ${url}      ${navegador}
    maximize browser window
    title should be    OrangeHRM
    set selenium implicit wait    10
    set selenium speed   .4s
    ${user}=    set variable    Admin
    input text    username      ${user}
    click button    //button[@type='submit'][contains(.,'Login')]
    wait until element is visible    //span[contains(.,'Required')]
    Log To Console    cuarto error encontado OK
    close browser


Login cinco
    [Documentation]     Usuario vacio y Password ok
    [Tags]      test_cinco
    open browser    ${url}      ${navegador}
    maximize browser window
    title should be    OrangeHRM
    set selenium implicit wait    10
    set selenium speed   .4s
    ${pass}=    set variable    admin123
    input text    password      ${pass}
    click button    //button[@type='submit'][contains(.,'Login')]
    wait until element is visible     //span[contains(.,'Required')]
    Log To Console    quinto error encontado OK
    close browser


Login seis
    [Documentation]     Usuario vacio y Password vacio
    [Tags]      test_seis
    open browser    ${url}      ${navegador}
    maximize browser window
    title should be    OrangeHRM
    set selenium implicit wait    10
    set selenium speed   .4s
    click button    //button[@type='submit'][contains(.,'Login')]
    wait until element is visible     //span[contains(.,'Required')]
    wait until element is visible    //span[contains(.,'Required')]
    Log To Console    sexto error encontado OK
    close browser


Login siete
    [Documentation]     Usuario ok y Password ok
    [Tags]      test_siete
    open browser    ${url}      ${navegador}
    maximize browser window
    title should be    OrangeHRM
    set selenium implicit wait    10
    set selenium speed   .4s
    ${user}=    set variable    Admin
    ${pass}=    set variable    admin123
    input text    username      ${user}
    input text    password      ${pass}
    click button    //button[@type='submit'][contains(.,'Login')]
    Log To Console    Login exitoso
    close browser
