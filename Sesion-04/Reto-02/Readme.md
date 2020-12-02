[`Introducción a Bases de Datos`](../../Readme.md) > [`Sesión 04`](../Readme.md) > Reto 2

## Reto 2: Importando datos a una tabla en formato CSV

### 1. Objetivos :dart:
- Aplicar el procedimiento para importación de datos a una tabla
- Validar que la correcta importación de los datos

### 2. Requisitos :clipboard:
- Servidor __MySQL__ instalado

### 3. Desarrollo :rocket:

1. Usando como base el archivo `movies.dat`, limpiarlo e importar los datos en la tabla `movies` creada en el Reto 1.

1. Usando como base el archivo `ratings.dat`, limpiarlo e importar los datos en la tabla `ratings` creada en el Reto 2.

<details><summary>Solución</summary>
<p>

1. Agregamos el encabezado correspondiente a `movies.dat` y reemplazamos el símbolo `::` por `,`. Guardamos el archivo como `movies.csv`.

   ```
   id,title,generos
   1,Toy Story (1995),Animation|Children's|Comedy
   2,Jumanji (1995),Adventure|Children's|Fantasy
   3,Grumpier Old Men (1995),Comedy|Romance
   4,Waiting to Exhale (1995),Comedy|Drama
   5,Father of the Bride Part II (1995),Comedy
   6,Heat (1995),Action|Crime|Thriller
   7,Sabrina (1995),Comedy|Romance
   8,Tom and Huck (1995),Adventure|Children's
   9,Sudden Death (1995),Action
   10,GoldenEye (1995),Action|Adventure|Thriller
   ...
   ```

1. Agregamos el encabezado correspondiente a `ratings.dat` y reemplazamos el símbolo `::` por `,`. Guardamos el archivo como `ratings.csv`.

   ```
   userid,movieid,rating,time_stamp
   1,1193,5,978300760
   1,661,3,978302109
   1,914,3,978301968
   1,3408,4,978300275
   1,2355,5,978824291
   1,1197,3,978302268
   1,1287,5,978302039
   1,2804,5,978300719
   1,594,4,978302268
   ...
   ```

1. Cargamos `movies.csv` y `ratings.csv` usando __MySQL Workbench__. Comprobamos los resultados con las siguientes consultas.

   ```sql
   SELECT *
   FROM movies
   LIMIT 10;

   SELECT *
   FROM ratings
   LIMIT 10;
   ```

</p>
</details>
<br/>

[`Anterior`](../Ejemplo-03/Readme.md) | [`Siguiente`](../Readme.md#configuración-de-mongodb-en-la-nube)
