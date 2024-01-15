Crear un venv
instalar las siguientes dependencias en la raiz del proyecto (NO en el venv):
Instalar selenium:  pip install selenium
Instalar Robot Framework :  pip install robotframework
Instalar Robot Framework con selenium library: pip install --upgrade robotframework-seleniumlibrary
Plugins: descargar desde https://github.com/lte2000/intellibot
Instalar desde file > settings > plugins > seleccionar la rueda de configuración > Install plugin from disk e instalar el archivo descargado seleccionando la ruta (que es el intellibot #Patched) **Se puede instalar también directo desde el Marketplace de plugins**
Instalar Plugins: 
PyMySql
robotframework-databaselibrary



Ejecutar tests desde la terminal:
Solo ejecutar: robot  .\Practica_OrangeHRM.robot
Con Reporte en carpeta: robot -d ..\Reportes_Practica_OrangeHRM .\Practica_OrangeHRM.robot
Correr un tag en particular: robot  -i login_seis .\Practica_OrangeHRM.robot
Correr todos los test que comienzan con X palabra: robot -d ..\Reportes .\Vali*.robot
TODOS LOS TEST de la carpeta: robot -d ..\Reportes .\*.robot


Para llamar a otros archivos .robot usamos Resource
Para llamar a archivos .py, etc usamos Library
"Library    ../Keywords_1/Keywords.python.py
Resource     ../Keywords_1/Funciones.robot"