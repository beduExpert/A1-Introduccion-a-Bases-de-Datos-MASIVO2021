[`Introducción a Bases de Datos`](../../Readme.md) > [`Sesión 04`](../Readme.md) > Reto 1

## Reto 1: Realizando operaciones con tablas

### 1. Objetivos :dart:
- Realizar operaciones SQL para administrar tablas
- Crear tablas acorde a los datos

### 2. Requisitos :clipboard:
- Servidor __MySQL__ instalado

### 3. Desarrollo :rocket:

1. Definir los campos y tipos de datos para la tabla `movies` haciendo uso de los archivos `movies.dat` y `README`.

1. Crear la tabla `movies` (recuerda usar el mismo nombre del archivo sin la extensión para vincular nombres de tablas con archivos).

1. Definir los campos y tipos de datos para la tabla `ratings` haciendo uso de los archivos `ratings.dat` y `README`.

1. Crear la tabla ratings (recuerda usar el mismo nombre del archivo sin la extensión para vincular nombres de tablas con archivos)

<details><summary>Solución</summary>
<p>

1. Primero se revisan los registros abriendo el archivo.

   ```
   1::Toy Story (1995)::Animation|Children's|Comedy
   2::Jumanji (1995)::Adventure|Children's|Fantasy
   3::Grumpier Old Men (1995)::Comedy|Romance
   4::Waiting to Exhale (1995)::Comedy|Drama
   5::Father of the Bride Part II (1995)::Comedy
   6::Heat (1995)::Action|Crime|Thriller
   7::Sabrina (1995)::Comedy|Romance
   8::Tom and Huck (1995)::Adventure|Children's
   9::Sudden Death (1995)::Action
   10::GoldenEye (1995)::Action|Adventure|Thriller
   ...
   ```

   Y luego se revisa la documentación (archivo `README`)

   ```
   MOVIES FILE DESCRIPTION
   ================================================================================

   Movie information is in the file "movies.dat" and is in the following
   format:

   MovieID::Title::Genres

   - Titles are identical to titles provided by the IMDB (including
   year of release)
   - Genres are pipe-separated and are selected from the following genres:

           * Action
           * Adventure
           * Animation
           * Children's
           * Comedy
           * Crime
           * Documentary
           * Drama
           * Fantasy
           * Film-Noir
           * Horror
   ...
   ```
   Así que se definen los siguientes campos y tipo para crear la tabla `movies` en __SQL__:
   - __id__ INT PRIMARY KEY
   - __title__ VARCHAR(80)
   - __generos__ VARCHAR(80)

1. Se crea la tabla con:

   ```sql
   CREATE TABLE IF NOT EXISTS movies (
      id INT PRIMARY KEY, 
      title VARCHAR(80), 
      generos VARCHAR(80)
   ); 
   ```

   **Sugerencia.**  Si te has equivocado con el nombre de la tabla, usa el comando `DROP TABLE` para eliminar la tabla y creala nuevamente.

1. Ahora se revisan la estructura registros abriendo el archivo restante.

   ```
   1::1193::5::978300760
   1::661::3::978302109
   1::914::3::978301968
   1::3408::4::978300275
   1::2355::5::978824291
   1::1197::3::978302268
   1::1287::5::978302039
   1::2804::5::978300719
   1::594::4::978302268
   1::919::4::978301368
   ...
   ```

   Y luego se revisa la documentación (archivo `README`)

   ```
   RATINGS FILE DESCRIPTION
   ================================================================================

   All ratings are contained in the file "ratings.dat" and are in the
   following format:

   UserID::MovieID::Rating::Timestamp

   - UserIDs range between 1 and 6040
   - MovieIDs range between 1 and 3952
   - Ratings are made on a 5-star scale (whole-star ratings only)
   - Timestamp is represented in seconds since the epoch as returned by time(2)
   - Each user has at least 20 ratings

   USERS FILE DESCRIPTION
   ================================================================================

   User information is in the file "users.dat" and is in the following
   format:

   UserID::Gender::Age::Occupation::Zip-code

   All demographic information is provided voluntarily by the users and is
   ...
   ```

   Así que se definen los siguientes campos y tipo para crear la tabla `ratings` en __SQL__:
   - __userid__ INT
   - __movieid__ INT
   - __rating__ INT
   - __time_stamp__ BIGINT

1. Se crea la tabla con:

   ```sql
   CREATE TABLE IF NOT EXISTS ratings (
      userid INT, 
      movieid INT, 
      rating INT, 
      time_stamp BIGINT
   );
   ```

</p>
</details>

<br/>

[`Anterior`](../Ejemplo-02/Readme.md) | [`Siguiente`](../Readme.md#importando-datos-a-una-tabla-en-formato-csv)   
