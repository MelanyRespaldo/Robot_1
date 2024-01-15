*** Settings ***
Documentation    Opearting System
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    Dialogs
Library    OperatingSystem
Resource    ../Keywords_1/Funciones.robot


*** Variables ***
${URL}    https://demoqa.com/text-box
${BROWSER}    chrome


*** Test Cases ***
Crear un Directorio
    [Documentation]    Crear una carpeta
    [Tags]      test_crear_directorio
    operatingsystem.create directory    Carpeta1
    operatingsystem.create directory    Carpeta2


Crear un Archivo
    [Documentation]    Crear un Archivo
    [Tags]      test_crear_archivo
    operatingsystem.create file    Carpeta1/Archivo1.txt
    operatingsystem.create file    Carpeta2/Archivo2.txt


Copiar un Directorio
    [Documentation]    Copiar un Directorio
    [Tags]      test_copiar_directorio
    operatingsystem.copy directory    Carpeta1      Carpeta2


Copiar un Archivo
    [Documentation]    Copiar un archivo
    [Tags]      test_copiar_archivo
    operatingsystem.copy file       Base5.robot     Carpeta2


Copiar un Archivos
    [Documentation]    Copiar un archivos
    [Tags]      test_copiar_archivos
    operatingsystem.copy files       *.robot        Respaldo_test_case5


Mover un directorio
    [Documentation]    Mover un directorio
    [Tags]      test_mover_directorio
    operatingsystem.move directory      Respaldo_test_case5     Carpeta2


Renombrar Directorio
    [Documentation]    Renombrar Directorio
    [Tags]      test_renombrar
    OperatingSystem.Move Directory    Carpeta2      Carpeta2bis

Mover un Archivo
    [Documentation]    Mover un archivo
    [Tags]      test_ma
    operatingsystem.move file     Carpeta2bis/Base5.robot     Carpeta1


Archivo Existe
    [Documentation]    Archivo Existe
    [Tags]      test_ae
    operatingsystem.should exist    Base5.robot
    ${bandera}=     BuiltIn.Run Keyword And Return Status    operatingsystem.file should exist    Base5.robot
    log to console    ${bandera}
    IF  '${bandera}' =='True'
        log to console    El archivo ya existe
        operatingsystem.copy file    Base5.robot     Carpeta1/Respaldos_Modulo5
    ELSE
        log to console    No existe la carpeta
    END




*** Keywords ***
Iniciar navegador
    Open Browser    ${URL}    ${BROWSER}
Cerrar navegador
    Close Browser