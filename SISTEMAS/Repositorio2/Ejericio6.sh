## Busca en todos los archivos .logdentro de proyectoLas líneas que consorfan la palabra "ERROR" (pecados o minúsculas).
##Encuentra las líneas que se encación que se encuentran números (dígitos) dentro de los archivos .logdentro de la estructura proyecto.
##Responde con los comandos


##6.1 
grep -r -i "error" | grep .log

##6.2 
grep -r "[0-9]" --include="*.log" 