##Dentro de tu home, crea un directorio principal llamado proyecto.
##Dentro de proyecto, crea la siguiente estructura de directorios y archivos:

# proyecto/
# ├── docs/
# │   ├── manual.txt
# │   ├── guia.txt
# │   └── referencias.txt
# ├── src/
# │   ├── script1.sh
# │   ├── script2.sh
# │   └── modulos/
# │       └── modulo1.py
# ├── config/
# │   ├── app.cfg
# │   └── db.cfg
# ├── logs/
# │   ├── access.log
# │   ├── error.log
# │   └── backup/
# │       └── backup1.log
# └── test/
#     ├── test1.txt
#     ├── test2.txt
#     └── resultados/
#         └── resultados1.txt


#!/bin/bash
## Definir la ruta del archivo en una variable para no repetirla y facilitar cambios.
## Archivo="/home/AlumnoT/Documentos/GithubTarde/proyecto/docs/prueba.txt"

## Creamos un archivo limpio para la demostración

## el > borra el contenido si el archivo ya existe
## echo "--- Archivo Inicial---"
## touch "$Archivo"
## echo "-------------------- echo"

## Metodo1 : "echo" (El mas comun para lineas simples)