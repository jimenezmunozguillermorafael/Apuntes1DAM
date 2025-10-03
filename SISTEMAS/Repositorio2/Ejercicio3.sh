##Mueve el archivo script1.sh desde el subdirectorio src a test/resultados.
##Renombra script2.sh a script_final.sh dentro del subdirectorio src.
##Mueve el directorio backup completo desde logs a test.
##Responde con los comandos y verifica la estructura final con ls o tree.

#### TODAS LAS RUTAS QUE VAMOS A USAR LAS HACEMOS ENTENDIENDO QUE ESTAMOS LOCALIZADOS EN PROYECTO
#### /home/alumnoT/Documentos/GithubTarde/Apuntes1DAM/SISTEMAS/Repositorio2/proyecto
##1
mv src/script1.sh test/resultados/
## mv rutaArchivoAmover rutaDondeSeMueve

##2
##Vamos al punto donde esta el archivo a renombrar
## mv archivo a renombrar nombre nuevo

mv script1.sh script_final.txt

##3 
## Hemos movido backup_docs de proyecto a logs
mv ../backup_docs .
##Ahora estamos en docs y backup_docs esta dentro de docs
mv ./backup_docs test/resultados
##Ahora para mover backup_docs que esta en docs a test/resultados

