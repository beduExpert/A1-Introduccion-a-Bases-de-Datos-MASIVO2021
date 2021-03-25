[`Introducción a Bases de Datos`](../Readme.md) > `Sesión 6`

## Sesión 6: Consultas en MongoDB

<img src="../imagenes/pizarron.png" align="right" height="100" width="100" hspace="10">
<div style="text-align: justify;">

### 1. Objetivos :dart: 

- Entender qué es y cómo se usa una expresión regular.
- Filtrar resultados mediante expresiones regulares.
- Usar la notación punto para filtrar objetos anidados.
- Entender de manera básica qué es una agregación.

### 2. Contenido :blue_book:

---
#### <ins>Expresiones regulares</ins>
<img src="imagenes/imagen1.jpg" align="right" height="200" width="300">

Las expresiones regulares permiten reconocer patrones en un texto, de forma similar a como lo hacía la cláusula `LIKE` en __SQL__, mediante el reconocimiento de distintos patrones.

Existen distintos estándares que los lenguajes de programación y sistemas gestores de bases de datos deben seguir para definir expresiones regulares. El estándar que usa mongo es: [JavaScript RegExp Reference](https://www.w3schools.com/jsref/jsref_obj_regexp.asp).

- [**`EJEMPLO 1`**](Ejemplo-01/Readme.md)
- [**`RETO 1`**](Reto-01/Readme.md)	

---
#### <ins>Notación punto y arreglos</ins>
<img src="imagenes/imagen2.png" align="right" height="200" width="200">

La notación punto es ampliamente usada en los lenguajes de programación orientados a objetos y permite acceder a los atributos de los mismos. Por ejemplo, si tenemos un objeto persona, usando la notación punto, podemos acceder a su nombre, edad, peso, etc.

Con esta notación podemos obtener los campos de un objeto representado en __JSON__. De la misma forma, podemos acceder a los elementos de un arreglo si se conoce su índice, tal y como se hace en distintos lenguajes de programación.

- [**`EJEMPLO 2`**](Ejemplo-02/Readme.md)
- [**`RETO 2`**](Reto-02/Readme.md)	

---
#### <ins>Introducción a las agregaciones</ins>
<img src="imagenes/imagen3.png" align="right" height="200" width="300">

Una agregación se compone de un conjunto de *capas* que en conjunto realizan consultas sobre una colección de documentos. Cada capa puede aplicar nuevos filtros o modificaciones a la capa anterior. Al flujo de cambios entre las distintas capas se le conoce como *pipeline*.

El principio de cada *pipeline* siempre es la colección completa.

- [**`EJEMPLO 3`**](Ejemplo-03/Readme.md)
- [**`RETO 3`**](Reto-03/Readme.md)	

---	

### 3. Ejercicios para practicar :hammer:

Aplica lo todo lo que aprendiste durante la sesión en esta serie de ejercicios. 

- [**`EJERCICIOS SESIÓN 6`**](Ejercicios/Readme.md)

</br>

[`Anterior`](../Sesion-04/Readme.md) | [`Siguiente`](../Sesion-06/Readme.md)

</div>	
