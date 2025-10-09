Ejercicios comandos Linux/UNIX

Linux relacionadas con archivos y directorios

Ruta:/home/alumnoT/Escritorio

1. ## Crea un archivo de tamaño 0

```bash
touch ./Escritorio/archivo

```

2. ## Listar todos los archivos del directorio bin

```bash
ls -l /bin

```

3. ## Listar todos los archivos del directorio etc que empiecen por t en orden inverso

```bash
ls  /etc/t* -r

ls -l --sort=width (por anchura)

```

4. ## Listar todos los archivos del directorio dev que empiecen por tty y que tengan 5 caracteres

```bash

ls /dev/tty??

```

5. ## Listar todos los archivos del directorio dev que empiecen por tty y acaben en 1,2,3 ó 4

```bash

ls /dev/tty[1-4]

```

6. ## Listar todos los archivos, incluidos los ocultos, del directorio raíz

```bash

ls -la /

```

### 8. Listar todos los archivos del directorio `usr` y sus subdirectorios

```bash
ls -laR /usr

```

9. ## Cambiarse al directorio tmp y verificarlo

```bash
cd /tmp; pwd

```

10. ## Mostrar el día y la hora real

```bash
date
```

11.  ## Con un solo comando posicionarse en el directorio $HOME y verificarlo.

```bash
cd /home/AlumnoT; pwd
```

12.  ## Crea los directorios dir1, dir2 Y dir3 en el directorio PRUEBA. Dentro de dir1 El directorio dir11. Dentro del directorio dir3 El directorio dir31 Dentro del directorio dir31, crear los directorios dir311 Y dir312.

```bash
mkdir -p ./PRUEBA/dir{1/dir11,2,3/dir31/dir31{1,2}}

```

13.  ## Copiar un archivo /etc/magic a un archivo llamado mensaje de directorio PRUEBA.

```bash
find /etc -name magic ##(para encontarlo)

touch ./Escritorio/PRUEBA/mensaje | cp /etc/magic ./Escritorio/PRUEBA/mensaje

```

14. ## Copiar en dir1 Y dir2, y verificarlo.
    
```bash
cp /etc/magic ./Escritorio/PRUEBA/dir1; cp /etc/magic ./Escritorio/PRUEBA/dir2

```

15. ## Copiar en el directorio dir311 los archivos de /binque tienen una a como segunda letra y su nombre tiene cuatro letras.

16. ## Mover el directorio dir31y sus subdirectorios de debajo dir2.

17. ## Mostrar por la pantalla los archivos ordinarios del directorio HOMEy sus subdirectorios.

18. ## Ocultar el archivo del directorio dir2.

## PT8.1.- Sitúate en tu HOME.

## PT8.2.- Crea un directorio examen.

## PT8.3.- Dentro de examen, la crema de los directorios ejercicios1Y ejercicios2.

## PT8.4.- Crea un fichero de texto llamado file1.daten ejercicios1.

## PT8.5.- Haz una copia del fichero file1.datdentro de ejercicios2.

## PT8.6.- Sitúate en ejercicios2.

## PT8.7.- Mueve el archivo file1.dathasta la ejercicios2/mover, poniendo como nombre de destino file1_movido.dat. Diez en cuenta que, posiblemente, tendrás que crear antes el directorio.

## PT8.8.- Copia el archivo /etc/crontabun archivo undo copia_crontabde tu directorio examen.

## PT8.9.- Copiar en el directorio ejercicios1los archivos de /binque que se quede una "a" como segunda letra y su nombre termina en "o" ó en "e""e".

## PT8.10.- Sitúate en tu HOME y elimina el directorio examen.

## 19.Borrar los archivos y directorios de dir1, incluido el propio directorio.

## 20. Copiar al directorio dir312los ficheros del directorio /devque hace por t, acaben en un número del 5 al 8 y tiene cinco letras en su nombre.

## 21. Mover el directorio dir312des dir3.

## 22. Borrar todos los archivos y directorios creados en el directorio PRUEBA.

## 23. Crear el directorio dir2Y dir3en el directorio PRUEBA.

## 25. Cambiar el directorio real al directorio dir3y crear cuatro nuevos directorios llamados dira, dirb, dirc, y dirdbajo el directorio real.

## 26. Comprobar los permisos de acceso de los directorios recién creados.
```
