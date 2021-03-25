[`Introducción a Bases de Datos`](../../Readme.md) > [`Sesión 04`](../Readme.md) > Reto 2

## Reto 2: Importando datos a una tabla en formato CSV

### 1. Objetivos :dart:
- Aplicar el procedimiento para importación de datos a una tabla
- Validar que la correcta importación de los datos

### 2. Requisitos :clipboard:
- Servidor __MySQL__ instalado

### 3. Desarrollo :rocket:

1. Usando como base el archivo `movies.dat`, limpiarlo e importar los datos en la tabla `movies` creada en el Reto 1.   

   **Importante:** Este archivo presenta un problema muy común de *encoding*, es decir, la codificación con la que fue definido, no es reconocida por __MySQL__. Para solucionar este problema, elige una codificación diferente al momento de cargar los datos.

1. Usando como base el archivo `ratings.dat`, limpiarlo e importar los datos en la tabla `ratings` creada en el Reto 2.   

   **Importante:** Como podrás notar, este archivo tiene demasiados registros, de manera que es normal que la carga sea muy lenta. Esto es algo muy común cuando nos enfrentamos a la carga de archivos. Si ya lleva mucho tiempo y no finaliza, no te preocupes, puedes cancelar la carga.

1. Finalmente, añade un registro en cada tabla usando `INSERT INTO`.

[`Anterior`](../Ejemplo-03/Readme.md) | [`Siguiente`](../Readme.md#configuración-de-mongodb-en-la-nube)
