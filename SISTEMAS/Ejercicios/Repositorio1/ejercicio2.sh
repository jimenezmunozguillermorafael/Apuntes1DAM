##Pasos por separado: mkdir PT0, touch file1, mkdir1 dir2, touch file2 , cd dir 2, mkdir dir 2 dir3
##----(DESPUES DE LA RUTA INICIAL HASTA DONDE VAS A CREAR "PT0")--- Solo un comando: mkdir PT0; cd PT0; touch file1; mkdir dir1; cd dir1; mkdir dir2; touch file2; cd dir2; mkdir dir3 dir4

#!/bin/bash
mkdir PT0; cd PT0; touch file1; mkdir dir1; cd dir1 ; mkidir dir2; touch file2; cd dir2; mkdir dir3 dir4
