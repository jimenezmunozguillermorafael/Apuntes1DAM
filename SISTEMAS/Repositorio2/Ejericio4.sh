## 1. Abre elarchivo manual.txt dentro de docs y agrega las siguientes lineas de texto

echo ("capitulo1: Introduccion
Capitulo2 : Instalacion
Capitulo3: Uso básico") > docs/manual.txt

##2. Visualiza el contenido del archivo editado

cat docs/manual.txt

## 4.Muestra las primeras 10 lineas del archivo

head -n 10 docs/manual.txt

## 5. Muestra las primeras lineas del archivo

head -n 2 docs/manual.txt

cat docs/manual.txt | head -n 2