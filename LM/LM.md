DTD es un mecanismo utilizado en XML para definir las reglas estructurales que un documento XML debe seguir. Estas reglas incluyen qué elementos y atributos están permitidos, cómo deben organizarse y las relaciones jerárquicas entre ellos. DTD sirve como una "guía" o "molde" que describe la gramática del documento XML, permitiendo que otros sistemas puedan interpretar correctamente los datos y garantizar la conformidad estructural.

Tipos de DTD : 

Interna. Ejemplo: DTD (7-12) XML (13-17)

<!DOCTYPE libro [ 
<!ELEMENT libro (titulo, autor, editorial)>
<!ELEMENT titulo (#PCDATA)>
<!ELEMENT autor (#PCDATA)>
<!ELEMENT editorial (#PCDATA)>
]>
<libro>
    <titulo>Aprendiendo XML</titulo>
    <autor>Juan Pérez</autor>
    <editorial>Editorial Ejemplo</editorial>
</libro>


Externa. Ejemplo: 

<!DOCTYPE libro SYSTEM "libro.dtd">
<libro>
    <titulo>Aprendiendo XML</titulo>
    <autor>Juan Pérez</autor>
    <editorial>Editorial Ejemplo</editorial>
</libro>

La diferencia entre ambas esta en el inicio en el inicio: 

Interna: <!DOCTYPE xxxx [

Externa: <!DOCTYPE xxxx libro SYSTEM "xxxx.dtd"

## Sintaxis de DTD

La sintaxis de DTD define qué elementos y atributos están permitidos en un documento XML, la relación entre ellos y el número de veces que pueden aparecer. La DTD utiliza una notación particular para describir la estructura del documento, que debe seguirse estrictamente para que un documento XML sea considerado válido según las reglas de su DTD.
Componentes principales de la sintaxis DTD:

<!DOCTYPE>: Esta declaración define el tipo de documento y hace referencia a la DTD, ya sea interna o externa. Se coloca al principio del documento XML, antes del primer elemento.

    Ejemplo de una DTD interna:

    <!DOCTYPE raiz [
    <!ELEMENT raiz (hijo)>
    <!ELEMENT hijo (#PCDATA)>
    ]>

Ejemplo de una DTD externa:

<!DOCTYPE libro SYSTEM "libro.dtd">

<!ELEMENT>: Define los elementos que están permitidos en el documento XML, su contenido, y las relaciones jerárquicas entre ellos. Los elementos pueden ser de varios tipos:

Elementos de texto: Utilizan #PCDATA (parsed character data), que indica que el elemento contiene datos textuales.

Elementos hijos: Pueden contener otros elementos como hijos, definidos en secuencia o como opciones.

Cantidad de ocurrencias: El número de veces que un elemento puede aparecer se define mediante los operadores +, *, ?:
        
    + indica que el elemento debe aparecer al menos una vez.
       
    * indica que el elemento puede aparecer cero o más veces.
        
    ? indica que el elemento es opcional y puede aparecer una o ninguna vez.

El DTD nos avisa si nuestro XML esta mal.




