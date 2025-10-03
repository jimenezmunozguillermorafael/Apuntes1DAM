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
## Ir a la ruta y despues crear 
# mkdir -p proyecto/{docs,src/modulos,config,logs/backup,test/resultados}; 

 
 #!/bin/bash

mkdir -p ~/Escritorio/proyecto/{docs,src/modulos,config,logs/backup,test/resultados} && \
touch ~/Escritorio/proyecto/docs/{manual,guia,referencias}.txt \
~/Escritorio/proyecto/src/{script1,script2}.sh \
~/Escritorio/proyecto/src/modulos/modulo1.py \
~/Escritorio/proyecto/config/{app,db}.cfg \
~/Escritorio/proyecto/logs/{access,error}.log \
~/Escritorio/proyecto/logs/backup/backup1.log \
~/Escritorio/proyecto/test/{test1,test2}.txt \
~/Escritorio/proyecto/test/resultados/resultados1.txt

