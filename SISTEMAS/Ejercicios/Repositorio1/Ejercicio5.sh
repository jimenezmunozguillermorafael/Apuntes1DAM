##Escribe un programa en bash que se ejecute con 2 parámetros. El primero sera una carpeta y el segundo una cadena de letras, la que sea, una palabra por ejemplo.
##El programa debe buscar todos los archivos que contengan esa cadena de caracteres y devolver el número de archivos que tengan la cadena en su nombre de archivo, no en su interior.
##Por ejemplo, si ejecutamos dentro de carpeta esta orden:

└── carpeta/
    └── carpeta1/
        └── prueba1.sh
        └── prueba.txt
        └── log.txt
        └── prueba2.sh
        └── prueba3.md

./ejercicio4.sh carpeta1 prueba

#!/bin/bash

ls $1 | grep $2 | wc -l

