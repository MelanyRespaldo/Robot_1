*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${ruta_fotos_pagina}=       C:/Users/Melany/Documents/Robot-Framework/Reportes2/IMG/



*** Keywords ***
F_texto
    [Arguments]    ${sel}       ${dato}
    wait until element is visible    ${sel}
    wait until element is enabled    ${sel}
    element should be enabled    ${sel}
    execute javascript    window.scrollTo(0,20)
    #clear element text    ${sel}
    input text    ${sel}    ${dato}
    capture element screenshot    ${sel}    ${ruta_fotos_pagina}.png


F_enter
    [Arguments]    ${sel}
    wait until element is visible    ${sel}
    wait until element is enabled    ${sel}
    element should be visible    ${sel}
    Press Keys    ${sel}    ENTER


F_foto_pagina
    [Arguments]    ${nombre_imagen}
    capture page screenshot    ${ruta_fotos_pagina}${nombre_imagen}


F_foto_selector
    [Arguments]    ${sel}   ${nombre_imagen}
    wait until element is visible    ${sel}
    wait until element is enabled    ${sel}
    element should be visible    ${sel}
    capture element screenshot    ${sel}    ${ruta_fotos_pagina}${nombre_imagen}
F_scroll
    [Documentation]    Sirve para el scroll en la página
    [Arguments]    ${x}      ${y}
    execute javascript    window.scrollTo(${x},${y})

F_click_xy
    [Documentation]    Click sobre un elemento con coordenadas X,Y
    [Arguments]     ${sel}    ${x}      ${y}
    click element at coordinates    ${sel}    ${x}      ${y}
