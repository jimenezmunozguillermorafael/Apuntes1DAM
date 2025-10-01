# DTD

Interna. Ejemplo: 

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

Externa: <!DOCTYPE xxxx SYSTEM "xxxx.dtd"

## Sintaxis de DTD

La sintaxis de DTD define qué elementos y atributos están permitidos en un documento XML, la relación entre ellos y el número de veces que pueden aparecer. La DTD utiliza una notación particular para describir la estructura del documento, que debe seguirse estrictamente para que un documento XML sea considerado válido según las reglas de su DTD.
Componentes principales de la sintaxis DTD:

 Esta declaración define el tipo de documento y hace referencia a la DTD, ya sea interna o externa. Se coloca al principio del documento XML, antes del primer elemento.

    Ejemplo de una DTD interna:

    <!DOCTYPE raiz [
    <!ELEMENT raiz (hijo)>
    <!ELEMENT hijo (#PCDATA)>
    ]>

Ejemplo de una DTD externa:

<!DOCTYPE libro SYSTEM "libro.dtd">

<!ELEMENT>: Define los elementos que están permitidos en el documento XML, su contenido, y las relaciones jerárquicas entre ellos. Los elementos pueden ser de varios tipos

Elementos de texto: Utilizan #PCDATA (parsed character data), que indica que el elemento contiene datos textuales.

Elementos hijos: Pueden contener otros elementos como hijos, definidos en secuencia o como opciones.

Cantidad de ocurrencias: El número de veces que un elemento puede aparecer se define mediante los operadores +, *, ?:
        
    + indica que el elemento debe aparecer al menos una vez.
       
    * indica que el elemento puede aparecer cero o más veces.
        
    ? indica que el elemento es opcional y puede aparecer una o ninguna vez.

El DTD nos avisa si nuestro XML esta mal.

# XSD

La sintaxis de XSD utiliza etiquetas XML para definir la estructura y los tipos de datos de un documento. 

La etiqueta principal en un esquema XSD es <xs:schema>

structura básica de un esquema XSD:

    <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
      <xs:element name="persona">
        <xs:complexType>
          <xs:sequence>
            <xs:element name="nombre" type="xs:string"/>
            <xs:element name="edad" type="xs:integer"/>
          </xs:sequence>
        </xs:complexType>
      </xs:element>
    </xs:schema>

## Explicación de la sintaxis:

<xs:schema>: Esta es la raíz del esquema XSD y define el espacio de nombres para el esquema XML (xmlns:xs="http://www.w3.org/2001/XMLSchema"), lo que asegura que el esquema siga el estándar XSD del W3C.

<xs:element>: Se utiliza para declarar un elemento. En este caso, se define un elemento llamado persona, que es un contenedor para otros elementos (nombre y edad). Cada elemento puede tener atributos adicionales como el tipo de datos y restricciones específicas.

 <xs:complexType>: Los tipos complejos permiten definir estructuras que contienen otros elementos. En el caso de persona, el tipo complejo permite contener una secuencia de subelementos como nombre y edad.

<xs:sequence>: Dentro de un tipo complejo, una secuencia indica que los subelementos deben aparecer en el orden especificado. En este caso, nombre debe aparecer antes que edad dentro de cualquier instancia del elemento persona.

    Tipos de datos predefinidos: XSD ofrece un conjunto robusto de tipos de datos predefinidos, que incluyen:
        xs:string: Representa texto.
        xs:integer: Representa un número entero.
        xs:date: Representa una fecha en formato ISO (YYYY-MM-DD).
        xs:boolean: Representa valores booleanos (true o false).
        xs:decimal: Representa números decimales con precisión arbitraria.

## Restricciones y validación en XSD:

XSD permite imponer restricciones adicionales sobre los valores que pueden contener los elementos o atributos. Algunas de las restricciones comunes incluyen:

## Restricciones de longitud:

    <xs:element name="NombreLimitado">
     <xs:simpleType>
       <xs:restriction base="xs:string">
         <xs:maxLength value="50"/>
       </xs:restriction>
     </xs:simpleType>
    </xs:element>

## Valores mínimos y máximos para números:

    <xs:element name="EdadLimitada">
      <xs:simpleType>
        <xs:restriction base="xs:integer">
          <xs:minInclusive value="0"/>
          <xs:maxInclusive value="120"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:element>
Este tipo restringe el valor de edad para que esté entre 0 y 120 años.

## Patrones (expresiones regulares):

    <xs:element name="Telefono">
      <xs:simpleType >
        <xs:restriction base="xs:string">
          <xs:pattern value="\d{3}-\d{3}-\d{4}"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:element>
Aquí se define un patrón de teléfono que requiere que el valor tenga el formato NNN-NNN-NNNN donde N es un dígito.

## Cardinalidad (número de ocurrencias):

<xs:element name="telefono" type="xs:string" minOccurs="0" maxOccurs="3"/>
Esto permite que el elemento telefono aparezca hasta tres veces en el documento XML, pero puede no aparecer (minOccurs="0").

## Restricción por enumeración:

    <xs:element name="estado">
        <xs:simpleType>
            <xs:restriction base="xs:string">
                <xs:enumeration value="Pendiente"/>
                <xs:enumeration value="Enviado"/>
                <xs:enumeration value="Entregado"/>
                <xs:enumeration value="Cancelado"/>
            </xs:restriction>
        </xs:simpleType>
    </xs:element>

En este ejemplo, se define un tipo de dato personalizado NombreLimitado que restringe la longitud máxima de cualquier valor de texto a 50 caracteres.

## Valores mínimos y máximos para números:

    <xs:element name="EdadLimitada">
      <xs:simpleType>
        <xs:restriction base="xs:integer">
          <xs:minInclusive value="0"/>
          <xs:maxInclusive value="120"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:element>

Este tipo restringe el valor de edad para que esté entre 0 y 120 años.

## Patrones (expresiones regulares):

    <xs:element name="Telefono">
      <xs:simpleType >
        <xs:restriction base="xs:string">
          <xs:pattern value="\d{3}-\d{3}-\d{4}"/>
        </xs:restriction>
      </xs:simpleType>
    </xs:element>

Aquí se define un patrón de teléfono que requiere que el valor tenga el formato NNN-NNN-NNNN donde N es un dígito.

## Cardinalidad (número de ocurrencias):

<xs:element name="telefono" type="xs:string" minOccurs="0" maxOccurs="3"/>

    Esto permite que el elemento telefono aparezca hasta tres veces en el documento XML, pero puede no aparecer (minOccurs="0").

## Restricción por enumeración:

    <xs:element name="estado">
        <xs:simpleType>
            <xs:restriction base="xs:string">
                <xs:enumeration value="Pendiente"/>
                <xs:enumeration value="Enviado"/>
                <xs:enumeration value="Entregado"/>
                <xs:enumeration value="Cancelado"/>
            </xs:restriction>
        </xs:simpleType>
    </xs:element>

La restricción enumeration se utiliza para limitar los valores posibles de un elemento. En este caso, el elemento estado solo puede tener uno de los siguientes valores: Pendiente, Enviado, Entregado o Cancelado. Si se proporciona un valor diferente, no será válido.

Esta restricción es útil para campos que solo pueden aceptar un conjunto específico de valores, como estados, categorías, o niveles.


