## Busca todos los archivos con extensión .txtdentro del directorio proyectoy sus subdirectorios.
##Encuentra todos los directorios que no se pone nombre la palabra backupdentro de proyecto.
##Busca todos los archivos que han sido modificados en las últimas 24 horas.

##Responde con los comandos

# 5.1
find -name "*.txt"
# o
find -type f -name "*.txt"
# 5.2
find -type d -name "*backup*"

# 5.3
find -type f -mtime -1