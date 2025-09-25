 ## UNIDAD 1 FUNDAMENTOS DE LA PROGRAMACIÓN, TIPOS DE DATOS Y ESTRUCTURAS DE CONTROL

Hardware =físico; software =no físico
Progrmadores=unión entre soft y hard (ware)

Tipos de datos y variables en java script:
Datos básicos:
Variables numericas = enteros y decimales (flotantes)
Variable = nombre, valor y tipo
Cadena de texto (string) (let saludo = Hola, Mundo)
                         (let nombre = Juan)

Boolean= puede ser true o false 
Ejemplos boolean: let esMayorDeEdad = true
                      esEstudiante = false

 ## LAS VARIABLES SE DECLARAN CON LET

Variables=contenedor que almacena un valor

var: ámbito global o de función (var pais = España)
let: permite declarar variables con un ambuto bloque (let edad = 25)
const: declarar constantes, el valor no puede ser cambiado
(const nombre = Ana) 
console.log = muestra mensaje en la consola --- console.log(valor1, valor2,...)
"let nombre = "Ana"

Variables null = null
Variables definidas = solo nombre de la variable.

Como solicito a un ususario que introductas datos? = Funcion prompt.
La sintaxis básica de prompt es ()
"let variable = prompt ("Texto")
"let nombre = prompt ("Nombre de usuario")

Operaciones:
Suma (+), Podemos sumar strings. Depende del contexto
Resta (-)
Multiplicación (*)
División (/)
Modulo (%) = resto de division "let módulo = 10 % 3 = 1 

## Operadores lógicos en JavaScript
Te permite evaluar condiciones y devolver un valor booleano (true or false):

AND lógico (&&): evalua si ambas condiciones son verdaderas.
let es Adulto = (edad >= 18 && edad <= 65)

OR lógico (||): evalua si al menos una de las condiciones es verdadera.
let esMenorOMayor = (edad <18 || edad > 65)

NOT lógico (!): invierte el valor de una condicion.
let noAdulto = !(edad >= 18)

## Funciones de conversiones comunes

Number(): convierte una cadena de texto es un numero. Si no puede convertir el valor, devuelve NaN (Not a Number)
let numero = Number ("123") // RESULTADO: 123

parseInt(): convierte una cadena a un número entero.
let entero = parseInt ("123.45")

## Estructuras condicionales
Permiten que el programa ejecute diferentes bloques de codigo segun si una condicion evaluada es verdadera o falsa. Se utilizaran if, if else, else.

# Ejemplo de uso if y else:

let edad = 18
if (edad >= 18) {
    console .log("Eres mayor de edad")
} else { 
    console.log("Eres menor de edad")
}

# Ejemplo con else if 

let edad = 16
if (edad < 13) {
    console.log("Eres un niño)
} else if (edad < 18) {
    console.log("Eres un adolescente")
} else {
    console.log("Eres un adulto")
}

Los operadores de comparación permiten comparar dos valores o variables. El resultado de una comparación es siempre un valor booleano: true o false. Los operadores de comparación más comunes en JavaScript son:

    == : Evalúa si dos valores son iguales (sin verificar el tipo).
    === : Evalúa si dos valores son estrictamente iguales (incluyendo el tipo).
    != : Evalúa si dos valores son diferentes.
    !== : Evalúa si dos valores son estrictamente diferentes (incluyendo el tipo).
    < : Menor que.
    > : Mayor que.
    <= : Menor o igual que.
    >= : Mayor o igual que.

Ejemplo de calculadora:

## Calculadora hecha con if, else y if else 

let input1 = prompt("Introduce tu primer número");

prompt abre una ventana para que el usuario escriba algo y devuelve un string (o null si el usuario pulsa "Cancelar").

Guardamos ese string en input1.

let numberUser1 = Number(input1);

Number(...) intenta convertir la cadena a número (puede devolver un número válido o NaN si no es un número).

Repetimos lo mismo para input2 → numberUser2.

if (isNaN(numberUser1) || isNaN(numberUser2)) { ... }

isNaN(...) comprueba si el valor no es un número. Si alguno no es válido, mostramos un mensaje de error y no intentamos operar.

let operationUser = prompt("Elige entre +, -, *, /");

Pedimos al usuario la operación. operationUser será una cadena con el símbolo que teclee.

operationUser = operationUser.trim(); elimina espacios al principio/fin por si el usuario escribe " +" o "* ".

let resultado;

Declaramos la variable que almacenará el resultado. Al principio está undefined.

Bloque if / else if / else que compara operationUser con cada símbolo:

if (operationUser === "+") { resultado = numberUser1 + numberUser2; }
Usa === (igualdad estricta) — compara tanto tipo como valor; en este caso comparamos la cadena exacta "+".

Los demás else if hacen lo mismo para - y *.

En "/" se añade una comprobación extra: if (numberUser2 === 0) para evitar dividir por 0, que daría Infinity en JS o un resultado no deseado.

else { resultado = "Operación no válida"; }

Si el usuario escribe cualquier cosa distinta de + - * /, le informamos que la operación no es válida.

console.log(...) y alert(...)

console.log muestra el mensaje en la consola (útil mientras programas).

alert muestra una ventana emergente con el resultado para que el usuario lo vea inmediatamente.

Posibles problemas y mejoras que puedes aplicar

Si el usuario pulsa Cancelar en el prompt, prompt devuelve null. Number(null) da 0, lo cual puede confundir. Para manejarlo mejor, comprueba if (input1 === null) y salir con un mensaje si fue cancelado.

Usa parseFloat() si quieres aceptar números con coma/decimal de forma explícita.

Aceptar nombres de operación además de símbolos (por ejemplo "sumar") si lo deseas: compara operationUser.toLowerCase() con varias opciones.

Formatear decimales: resultado.toFixed(2) para mostrar solo 2 decimales (si resultado es número).

Si prefieres evitar alert, muestra el resultado en la página usando document.body.innerHTML = ... o creando un elemento <p>.
