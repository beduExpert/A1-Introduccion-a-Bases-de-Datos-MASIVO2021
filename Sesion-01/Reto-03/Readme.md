[`Introducción a Bases de Datos`](../../Readme.md) > [`Sesión 01`](../Readme.md) > `Reto 3`
	
## Reto 3: Ordenamientos y Límites

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Escribir consultas que permitan responder a algunas preguntas mediante ordenamientos y límites.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado.

### 3. Desarrollo :rocket:

Usando la base de datos `tienda`, escribe una consulta que permita obtener el top 5 de puestos por salarios.

<details><summary>Solución</summary>
<p>

Para contestar a esta pregunta, basta con ordenar las calificaciones del alumno en orden descendente y limitar el número de registros a 5.

   ```sql
   SELECT *
   FROM tienda
   ORDER BY salario DESC
   LIMIT 5;
   ```
</p>
</details> 

<br/>

[`Anterior`](../Ejemplo-04/Readme.md) | [`Siguiente`](../Readme.md#3-proyecto-hammer)

</div>
