import os


def Crear_Folder():
    os.mkdir("C:/Users/Melany/Documents/Robot-Framework/Demo_Carpeta")
    os.mkdir("C:/Users/Melany/Documents/Robot-Framework/Demo_Carpeta2")


def Crear_SubCarpeta(NC):
    os.mkdir("C:/Users/Melany/Documents/Robot-Framework/Demo_Carpeta/"+NC)


def Concatenar_Nombre(nom,segnom,ap):
    NombreC= "Bienvenido al Curso de Robot Framework: "+nom+" "+segnom+" "+ap
    return NombreC


def Validar_Nombre(nom):
    if(nom=='Juan'):
        return 'Bienvenido Juan'
    else:
        return 'No te conozco, ¿Quién eres?'

