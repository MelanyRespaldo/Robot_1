import openpyxl

archivo = openpyxl.load_workbook("C:\\Users\\Melany\\Documents\\Robot-Framework\\Test_Cases_Nivel3\\Files\\Libro1.xlsx")


ac = archivo["Hoja1"]

esc=ac['D2'].value='Paso'
esc=ac['D3'].value='Paso'
esc=ac['D4'].value='Error'

archivo.save("C:\\Users\\Melany\\Documents\\Robot-Framework\\Test_Cases_Nivel3\\Files\\Libro1.xlsx")

