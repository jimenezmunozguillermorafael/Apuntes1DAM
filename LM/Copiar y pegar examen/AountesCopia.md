## minOccurs="" maxOccurs=""

Para deternminar el numero de ocurrencias de un elemento
que aparecen dentro de mi xml, tengo que definir estos dos minOccurs="" maxOccurs=""

minOccurs="0" = puede parecer o mo (elementos opcionales)

minOccurs="1" (minOccurs por defecto simepre es 1) Aparece siempre

## Expresion regular que cumpla ese valor: jcorreoelectronico@gmail.com

```html
<xs:element name="email">
  <xs:simpleType>
    <xs:restriction base="xs:string">
      <xs:pattern value="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}" />
    </xs:restriction>
  </xs:simpleType>
</xs:element>
```

## DNI, como ponerlo XXXXXXXX + "LETRA"

```html
<xs:element name="dni">
  <xs:simpleType>
    <xs:restriction base="xs:string">
      <xs:pattern value="\d{8}[A-Z]" />
    </xs:restriction>
  </xs:simpleType>
</xs:element>
```

## Numero de telefono XXX-XXX-XXX

```html
<xs:element name="telefono">
  <xs:simpleType>
    <xs:restriction base="xs:string">
      <xs:pattern value="\d{3}-\d{3}-\d{3}" />
    </xs:restriction>
  </xs:simpleType>
</xs:element>
```

## Nombre , cadena que empieza por mayuscula SOLO 1

```html
<xs:element name="nombre">
  <xs:simpleType>
    <xs:restriction base="xs:string">
      <xs:pattern value="[A-Z].*" />
    </xs:restriction>
  </xs:simpleType>
</xs:element>
```

## Nombre y Apellido para español con Ñ incluida y tildes

```html
<xs:pattern value="[A-ZÁÉÍÓÚÜÑ][a-záéíóúüñ]+ [A-ZÁÉÍÓÚÜÑ][a-záéíóúüñ]+" />
```

## Restricciones de longitud:

```html
<xs:element name="NombreLimitado">
  <xs:simpleType>
    <xs:restriction base="xs:string">
      <xs:maxLength value="50" />
    </xs:restriction>
  </xs:simpleType>
</xs:element>
```

## Valores mínimos y máximos para números:

```html
<xs:element name="EdadLimitada">
  <xs:simpleType>
    <xs:restriction base="xs:integer">
      <xs:minInclusive value="0" />
      <xs:maxInclusive value="120" />
    </xs:restriction>
  </xs:simpleType>
</xs:element>
```

## Fechas YYYY-MM-DD:

```html
<xs:element name="fechaInicio" type="xs:date" />
```

## Correo electronico

```html
<xs:element name="email">
  <xs:simpleType>
    <xs:restriction base="xs:string">
      <xs:pattern value="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}" />
    </xs:restriction>
  </xs:simpleType>
</xs:element>
```

## Precio, con decimales

```html
<xs:element name="precio">
  <xs:simpleType>
    <xs:restriction base="xs:decimal">
      <xs:minExclusive value="0" />
    </xs:restriction>
  </xs:simpleType>
</xs:element>
```

## Edad

```html
<xs:element name="edad">
  <xs:simpleType>
    <xs:restriction base="xs:integer">
      <xs:minInclusive value="18" />
      <xs:maxInclusive value="99" />
    </xs:restriction>
  </xs:simpleType>
</xs:element>
```

## Código

```html
<xs:attribute name="codigo" use="required">
  <xs:simpleType>
    <xs:restriction base="xs:string">
      <xs:pattern value="PKT-\d{4}" />
    </xs:restriction>
  </xs:simpleType>
</xs:attribute>
```

## Tipos

```html
<xs:element name="tipo">
  <xs:simpleType>
    <xs:restriction base="xs:string">
      <xs:enumeration value="Aventura" />
      <xs:enumeration value="Relax" />
      <xs:enumeration value="Cultural" />
      <xs:enumeration value="Familiar" />
    </xs:restriction>
  </xs:simpleType>
</xs:element>
```

## Codigo postal

```html
<xs:element name="codigoP">
  <xs:simpleType>
    <xs:restriction base="xs:string">
      <xs:pattern value="[0-9]{5}" />
    </xs:restriction>
  </xs:simpleType>
</xs:element>
```

## Elemento con atributo sin contenido

```html
<duracion horas="40" />

<xs:element name="duracion">
  <xs:complexType>
    <xs:attribute name="horas" type="xs:nonNegativeInteger" />
  </xs:complexType>
</xs:element>
```

## Elemento con atributo con contenido

```html
<gol minuto="23">Uzuni</gol>

<xs:element name="gol">
  <xs:complexType>
    <xs:simpleContent>
      <xs:extension base="xs:string">
        <xs:attribute name="minuto" use="required">
          <xs:simpleType>
            <xs:restriction base="xs:positiveInteger">
              <xs:maxInclusive value="120" />
            </xs:restriction>
          </xs:simpleType>
        </xs:attribute>
      </xs:extension>
    </xs:simpleContent>
  </xs:complexType>
</xs:element>
```
