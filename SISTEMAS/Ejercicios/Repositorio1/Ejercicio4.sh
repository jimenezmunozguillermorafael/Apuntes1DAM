
##Escribe un script en bash (en la carpeta que quieras) que se ejecute con 1 parámetro. El primer parámetro será la ruta de una carpeta.
##El programa debe devolver por la terminal el número de archivos que contiene la carpeta pasada como primer parámetro.
##Respuesta: Para que nos devuelvan el número de archivos tenemos varias opciones. Si usamos ls -l nos aseguramos que haya una línea por archivo pero se añade una primera línea que hay que restar.
##Otra opción es asumir que cada palabra es un archivo ya que en Linux no es recomendable usar espacios para crear archivos, luego nos ahorraríamos la resta. Os recomiendo que al usar redireccion de salida, el símbolo |, vayáis ejecutando comando a comando para ver que devuelve cada uno.
##Por ejemplo antes de ejecutar ls -l | wc -l, ejecutar ls -l solamente y asegurarnos de qué devuelve como entrada para wc

# Opción 1
resultado=(ls -l $1 | wc -l)
echo $(($resultado - 1))

# como se ve en esta opción hay que tirar de crear variables, en este caso resultado, cosa que nos ahorramos con la opción 2.

# Opción 2
ls $1 | wc -w