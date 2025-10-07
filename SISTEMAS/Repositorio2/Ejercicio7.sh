##Elimina los archivos app.cfg Y db.cfgdel subdirectorio config.
##Borra de forma recursiva el subdirectorio backup_docsy con su contenido.
##Elimina el subdirectorio modulos(que contiene el archivo modulo1.py) dentro de src.

##Responde con los comandos utilizados y verificando la estructura final con lso tree.

#7.1
rm config/{app.cfg,db.cfg}
#7.2
rm -r backup_docs
#7.3
rm -r src/modulos
