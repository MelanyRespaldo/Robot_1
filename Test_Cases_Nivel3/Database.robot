*** Settings ***
Documentation    Practica Base de Datos MySQL
Library    SeleniumLibrary
Library    DatabaseLibrary
Library    OperatingSystem
Resource    ../Keywords_1/Funciones.robot

Suite Setup    Connect To Database     pymysql     ${dbname}         ${dbuser}        ${dbpass}       ${dbhost}       ${dbport}
Suite Teardown    Disconnect From Database

*** Variables ***
${URL}    https://demoqa.com/text-box
${BROWSER}    chrome

${dbname} =     sistema_dos
${dbuser} =     Melany
${dbpass} =     12345
${dbhost} =     127.0.0.1       #localhost
${dbport} =     3306


*** Test Cases ***
Base crear tabla
    [Documentation]    Crear una nueva tabla en nuestro sistema
    [Tags]      Test_crear_tabla
    ${result} =      Execute Sql String    CREATE TABLE `personas2`(`id` int(11) NOT NULL,`name` varchar(40) NOT NULL,`ap` varchar(40) NOT NULL);
    Log To Console    ${result}
    should be equal as strings    ${result}      None

Base insertar registros
    [Documentation]    Insertar Registros
    [Tags]      Test_Insertar
    #${insertar} =   Execute Sql String    insert into personas2 values(01,"Toño","García")

    ${insertar_global} =    Execute Sql Script  C:/Users/Melany/Documents/Robot-Framework/Test_Cases_Nivel3/Files/Insertar.sql
    log to console    ${insertar_global}
    should be equal as strings    ${insertar_global}   None

Base Consulta Por Nombre
    [Documentation]    Consultar Nombre
    [Tags]      Test_Consulta_Nombre
    check if exists in database    select name from personas2 where name = "Juan"

Base Consulta No Existe el Nombre
    [Documentation]    Consultar Nombre que no Existe
    [Tags]      Test_Consula_No_Existe
    check if not exists in database    select name from personas2 where name = "Michelle"

Base Validar Tabla
    [Documentation]    Consultar si uan Tabla Existe
    [Tags]      Test_Tabla_Existe
    table must exist    personas2

Base Contar numero de elementos que Existen
    [Documentation]    Elementos que Existen
    [Tags]      Test_Elementos_Existe
    row count is equal to x    select * from personas2 where ap="Perez"     2

Base Actualizar Campo
    [Documentation]    Actualizar un Campo
    [Tags]      Test_Actualizar
    ${actualizar} =     Execute Sql String    Update personas2 set name = "Candela" where name = "Melany"
    log to console    ${actualizar}
    should be equal as strings    ${actualizar}   None

Base Borrar Campos Truncate
    [Documentation]    Borrar Elementos
    [Tags]      Test_Borrar
    ${delete} =     Execute Sql String  TRUNCATE TABLE personas2;
    log to console    ${delete}
    should be equal as strings    ${delete}   None

Base Traer Todos los Campos
    [Documentation]    Consultar todo9s los registros
    [Tags]      Test_Todos
    @{todos} =     query  select * from personas2;
    log to console    many@{todos}

*** Keywords ***
