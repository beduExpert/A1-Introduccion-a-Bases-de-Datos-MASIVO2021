[`Introducción a Bases de Datos`](../Readme.md) > `Sesión 3`

## Sesión 3: Joins y Vistas

<img src="../imagenes/pizarron.png" align="right" height="100" width="100" hspace="10">
<div style="text-align: justify;">

### 1. Objetivos :dart: 

- Escribir consultas que relacionen dos o más tablas mediante el uso de joins.
- Definir vistas que guarden el resultado de una consulta.

### 2. Contenido :blue_book:

---

#### <ins>Clasificación de *joins*</ins>
<img src="imagenes/imagen1.png" align="right" height="170" width="250"> 

Para relacionar tablas se incluyen los *joins* que son operadores entre tablas, las cuales permiten asociar dos o más tablas mediane sus campos. Por lo general, esta asociacion se realiza usando las llaves primarias y foráneas de cada tabla. Los tipos de *join* que incluye __MySQL__ son:

1. `INNER JOIN`
1. `LEFT OUTER JOIN`
1. `RIGHT OUTER JOIN`

- [**`EJEMPLO 1`**](Ejemplo-01/Readme.md)
- [**`RETO 1`**](Reto-01/Readme.md)	

---

#### <ins>Definición de vistas</ins>
<img src="imagenes/imagen2.png" align="right" height="300" width="300"> 

Una vista es una tabla *virtual* que almacena los resultados de una consulta. Son útiles cuando las consultas son demasiado complejas y su proceso puede tomar varios minutos en ejecutarse. De esta forma, se consultan directamente los resultados de la consulta como si se tratara de cualquier tabla.

Para crear una vista se usa:

`CREATE VIEW`

Las vistas no requieren de almacenamiento adicional y pueden consultar usando la cláusula `SELECT`.

- [**`EJEMPLO 2`**](Ejemplo-02/Readme.md)
- [**`RETO 2`**](Reto-02/Readme.md)	

---

### 3. Ejercicios para practicar :hammer:

Aplica lo todo lo que aprendiste durante la sesión en este proyecto. 

- [**`EJERCICIOS SESIÓN 3`**](Ejercicios/Readme.md)

</br>

[`Anterior`](../Sesion-02/Readme.md) | [`Siguiente`](../Sesion-04/Readme.md)

</div>	
