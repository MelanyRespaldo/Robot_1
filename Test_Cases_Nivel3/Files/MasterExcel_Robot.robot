*** Settings ***
Documentation    Creando nuestras Keywords desde Python
Library    SeleniumLibrary
Library     Practica_Excel.py



*** Keywords ***
Numero de Filas
    [Documentation]     Leyendo el numero de Filas
    [Arguments]    ${hoja}
    ${res} =    Numero_filas    ${hoja}
    #log to console    ${res}
    [Return]    ${res}


Numero de Columnas
    [Documentation]     Leyendo el numero de Columnas
    [Arguments]    ${hoja}      ${fila}     ${col}
    ${res} =    Dato_columna    ${hoja}     ${fila}     ${col}
    #log to console    ${res}
    [Return]    ${res}

