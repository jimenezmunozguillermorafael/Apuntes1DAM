## Dentro de una carpeta, crea dos carpetas documentacion y documentacion2 dos archivos, archivo1.txt y archivo2.txt dos programas, programa1.sh y programa2.sh
##Crear 3 archivos que se llamen carpetas, programas y archivos

# 1.1

## mkdir -p: para crear un grupo de directorios
## ./ "para meter ruta y que busque en la ruta" 


mkdir -p ./carpeta/documentacion{,2}

## 1.2
touch ./carpeta/{archivo{1,2}.txt,programa{1,2}.sh}


## crea un script dentro de docs que hace lo siguiente: Quiero que almaceneis en "carpetas" los nombres de las carpetas que están en la carpeta, 
##en programas los nombres de los programas (sh) y en archivos de los nombres de los archivos(.txt).

## 1.3 
#!/bin/bash

## find: busca recursivamente en los archivos 

## ".": El directorio actual desde el que partes la búsqueda.

## -type d: "-type" filtra el tipo de entrada. "d" significa "directory". 

## "f" significa "file"

## "-type f": busca archivos.

## "-name" hace referencia a un nombre general

## "*": todos los que haya 

##.txt" es la extension que tiene que buscar

## "*.txt": Busca todos los que tengan esta extensión

find . -type d > carpetas  
find . -type f -name "*.txt" > archivos
find . -type f -name "*.sh" > programas

