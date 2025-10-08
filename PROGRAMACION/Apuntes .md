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
Multiplicación (\*)
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

## Bucles

For: El bucle for se utiliza para iterar sobre una secuencia, como un rango de números o una colección de elementos (como un array). Cada vez que el bucle se ejecuta, el programa ejecuta el bloque de código asociado.

Ejemplos

for (let i = 0; i<5; i++){
console.log(i)
}

for (let i = 0; i<5; i= i+2){
console.log(i)
}

<script>
    for (let i = 0; i < 5; i++) {
        console.log(i)
    }
    
</script>

## While

While: El bucle while ejecuta repetidamente un bloque de código mientras una condición sea verdadera. Este bucle es útil cuando no se sabe cuántas iteraciones serán necesarias, y la condición depende de una evaluación dinámica.

Ejemplo:

let contraseña = ""
while (contraseña != "QUESO"){
console.log("Contraseña incorrecta")
// Pedir contraseña
}
console.log("Correcto")

<script>
    let contrasenia = prompt("Introduce la contaseña")
    const NUMEROINTENTOS = 5
    let contraseniaEncontrada = false
    const CONTRASENIAAVERIGUAR = "QUESO"
    let intento = 0

    for (let i = 0; i < NUMEROINTENTOS && !contraseniaEncontrada; i++) {
        intento = i + 1
        if (contrasenia == CONTRASENIAAVERIGUAR) {
            contraseniaEncontrada = true
        }
        else {
            console.log("Contraseña incorrecta: Intento " + intento );
            contrasenia = prompt("Introduce la contaseña")
        }
    }

    if (!contraseniaEncontrada) {
        console.log("No has averiguado la contraseña en " + NUMEROINTENTOS + " intentos");
    } else {
        console.log("Correcto. Has averiguado la contraseña en " + intento + " intentos.");

    }



</script>

Con ${i + 1}) ... cada console.log es distinto, así que la consola no los agrupa.

Template literal (comillas invertidas `…`)

No son comillas simples ' ni dobles ".

Permiten interpolación con ${ ... } y escribir el texto tal cual.

${i + 1}

Dentro de ${} puedes poner expresiones JS.

i empieza en 0 en el for, así que i + 1 muestra 1, 2, 3… (numeración “humana”).

) y espacio

Justo después de ${i + 1} hay un paréntesis de cierre y un espacio.

Resultado parcial: "1) ".

${colorUser}

Inserta el valor de la variable colorUser (por ejemplo, "rojo").

Resultado completo

Si i = 0 y colorUser = "rojo" → la cadena es "1) rojo".

console.log(...) lo imprime en la consola en su propia línea.

`…` (template literal) → permite ${expresiones} y multilínea.


