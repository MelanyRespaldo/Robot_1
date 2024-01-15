*** Settings ***
Documentation    Api Rest
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Resource    ../Keywords_1/Funciones.robot

#Suite Setup    Inicio
#Suite Teardown    Salir


*** Variables ***
${URL}    https://demoqa.com/text-box
${BROWSER}    chrome
${url_api} =    https://reqres.in

*** Test Cases ***
Consultar GET
    [Documentation]    Apis TEST GET
    [Tags]    test_get
    create session    pagina_api      ${url_api}
    ${response} =   get request   pagina_api    /api/users

    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}

    #Validaciones
    ${status} =     convert to string    ${response.status_code}
    should be equal    ${status}   200
    ${body} =   convert to string    ${response.content}
    should contain      ${body}     janet.weaver@reqres.in


Agregar Registro POST
    [Documentation]    Api Insertar Registro POST
    [Tags]    test_post
    create session    pagina_api      ${url_api}
    ${body} =   create dictionary    name=Carla     job=sistemas
    ${header}=  create dictionary    Content-Type=application/json; charset=utf-8

    ${response}=    post request    pagina_api      /api/users      data=${body}    headers=${header}

    #Validaciones
    ${status} =     convert to string    ${response.status_code}
    should be equal    ${status}   201
    ${res-body} =   convert to string    ${response.content}
    should contain      ${res-body}     sistemas


Consultar GET por ID
    [Documentation]    Apis TEST GET por OD
    [Tags]    test_get_by_Id
    create session    pagina_api      ${url_api}
    ${response} =   get request   pagina_api    /api/users/2

    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}

    #Validaciones
    ${status} =     convert to string    ${response.status_code}
    should be equal    ${status}   200
    ${body} =   convert to string    ${response.content}
    should contain      ${body}     Weaver


Agregar Registro POST
    [Documentation]    Api Update Registro
    [Tags]    test_update
    create session    pagina_api      ${url_api}
    ${body} =   create dictionary    name=Juan     job=Tester
    ${header}=  create dictionary    Content-Type=application/json; charset=utf-8

    ${response}=    put request    pagina_api      api/users/2      data=${body}    headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}

    #Validaciones
    ${status} =     convert to string    ${response.status_code}
    should be equal    ${status}   200
    ${res-body} =   convert to string    ${response.content}
    should contain      ${res-body}     Tester

Agregar Registro (DELETE)
    [Documentation]    Api Delete Registro
    [Tags]    test_delete
    create session    pagina_api      ${url_api}

    ${response}=    delete request    pagina_api      api/users/12

    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}

    #Validaciones
    ${status} =     convert to string    ${response.status_code}
    should be equal    ${status}   204

*** Keywords ***





