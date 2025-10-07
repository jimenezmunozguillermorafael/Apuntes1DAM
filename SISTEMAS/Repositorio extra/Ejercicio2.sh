##rellena archivotxt y archivo2.txt con algo de texto, el que tus quieras.
##escribe un script que almacene dentro de archivo2.txt el contenido de archivo2.txt y detras el contenido de archivo1.txt
##sabrías que a la inversa? que se almacene primero archivo1.txt y después archivo2.txt.

## 1.1 
## ">" para meter cosas de derecha a izquierdas. Si no esta el archivo me lo va a crear
## echo "texto" > ./"ruta"/archivo donde quiero escribirlo

 echo  "hello world 1" > ./Escritorio/carpeta/archivo1.txt
 echo "hello world 2" > ./Escritorio/carpeta/archivo1.txt

## 1.2

## ">>" añade, no borra (append)

#!/bin/bash
 cat archivo1.txt << archivo2.txt
