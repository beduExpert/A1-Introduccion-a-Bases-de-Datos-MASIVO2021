[`Introducción a Bases de Datos`](../../Readme.md) > [`Sesión 05`](../Readme.md) > `Ejercicios`
	
## Ejercicios Sesión 5

<div style="text-align: justify;">

### 1. Objetivos :dart: 

- Aplicar los conceptos adquiridos durante la sesión.

### 2. Requisitos :clipboard:

1. MongoDB Compass instalado.

### 3. Desarrollo :rocket:

Las consultas se realizarán sobre la base `sample_training`.

Todas las consultas que realices deberás mantenerlas dentro del MongoDB Compass. Para hacer esto, da clic en el botón con los puntos `···` y en `Toogle Query History`. Busca la última consulta y agregala a favoritos presionando el íncono con la estrella :star:.

1. Obtén los datos de contacto de cada compañía.

2. Obtén el identificador de la clase de cada calificación.

3. Obtén el nombre de todas las compañias fundadas en octubre.

4. Obtén el nombre de todas las compañías fundadas en 2008.

5. Obtén todos los *post* del autor `machine`.

6. Obtén todas las calificaciones provenientes de los grupos `357`, `57` y `465`.

7. Obtén todas las compañías fundadas en octubre del 2008.

8. Obtén todas las compañias con más de 50 empleados. 

9. Obtén las rutas con un número de paradas entre 1 y 5.

10. Obtén la empresa con el menor número de empleados.

11. Obtén la empresa con el mayor número de empleados.

12. Obtén el viaje con mayor duración.

13. Obtén el viaje con menor duración.

**¡¡¡MUCHA SUERTE!!!**

<details><summary>Solución</summary>
<br/>

1. Obtén los datos de contacto de cada compañía.

   ```json
   /* Proyección. */
   {email_address:1, phone_number:1}
   ```

2. Obtén el identificador de la clase de cada calificación.

   ```json
   /* Proyección. */
   {class_id: 1}
   ```

3. Obtén el nombre de todas las compañias fundadas en octubre.

   ```json
   /* Filtro. */
   {founded_month: 10}
   ```

4. Obtén el nombre de todas las compañías fundadas en 2008.

   ```json
   /* Filtro. */
   {founded_year: 2008}
   /* Proyección. */
   {name:1}
   ``` 

5. Obtén todos los *post* del autor `machine`.

   ```json
   /* Filtro. */
   {author:"machine"}
   ```

6. Obtén todas las calificaciones provenientes de los grupos `357`, `57` y `465`.

   ```json
   /* Filtro. */
   {class_id: {$in: [350, 57, 465]}}
   ```

7. Obtén todas las compañías fundadas en octubre del 2008.

   ```json
   /* Filtro. */
   {founded_year: 2008, founded_month:10}
   ```

8. Obtén todas las compañias con más de 50 empleados. 

   ```json
   /* Filtro. */
   {number_of_employees: {$gt: 50}}
   ```

9. Obtén las rutas con un número de paradas entre 1 y 5.

   ```json
   /* Filtro. */
   {$and: [{stops: {$gte: 1}}, {stops: {$lte: 5}}]}
   ```

10. Obtén la empresa con el menor número de empleados.

    ```json
   /* Filter. */
   {number_of_employees: {$ne:null}}
   /* Ordenamiento. */
   {number_of_employees:1}
   /* Limit. */
   1
   ```

11. Obtén la empresa con el mayor número de empleados.

   ```json
   /* Ordenamiento. */
   {number_of_employees:-1}
   /* Limit. */
   1
   ```

12. Obtén el viaje con mayor duración.

   ```json
   /* Ordenamiento. */
   {tripduration: -1}
   /* Limit. */
   1
   ```

13. Obtén la historia menos comentada.

   ```json
   /* Ordenamiento. */
   {tripduration: -1}
   /* Limit. */
   1
   ```

<p>

</p>
</details> 

<br/>

[`Anterior`](../Readme.md#3-proyecto-hammer) | [`Siguiente`](../Readme.md#4-postwork-memo)

</div>

