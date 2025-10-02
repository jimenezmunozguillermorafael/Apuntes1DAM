#!/bin/bash
##Copia los archivos manual.txt y guia.txt desde el subdirectorio docs a un nuevo subdirectorio llamado backup_docs dentro de proyecto.
##Copia de forma recursiva el directorio config completo junto con su contenido a un subdirectorio llamado config_backup dentro de proyecto.
##Responde con los comandos utilizados y verifica la estructura resultante con ls o tree
##Vamos a asumir que mi terminal esta en proyecto
 
 ##1
 
 mkdir backup_docs

 cp docs/{manual.txt, guia.txt} backup_docs

 ##2 
 mkdir config_backup
 cp -r  config/* config_backup

 ##3
