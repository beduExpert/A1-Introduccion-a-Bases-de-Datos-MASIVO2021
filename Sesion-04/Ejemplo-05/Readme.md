[`Introducción a Bases de Datos`](../../Readme.md) > [`Sesión 04`](../Readme.md) > Ejemplo 5
## Ejemplo 5: Operaciones con bases de datos

### 1. Objetivos :dart:
- Que el alumno se conecte a un servidor MongoDB
- Que el alumno realice operaciones con bases de datos
- Que el alumno cuente con una base de datos para trabajar

### 2. Requisitos :clipboard:
1. MongoDB Compass instalado
1. Datos de conexión al Servidor MongoDB

### 3. Desarrollo :rocket:
1. Abre MongoDB Compass. En esta primera pantalla se muestran, del lado izquierdo, las conexiones que tienes configuradas o se muestra en blanco en caso de que sea la primera vez que realizas una conexión.

   ![imagen](imagenes/s4e11.png)

1. En el campo que se encuentra activo, introduce el connection string que guardaste del ejemplo pasado.

1. Presiona el botón `Connect` y y si obtienes una pantalla **similar** la que se muestra en la siguiente imagen, la conexión se habrá realizado con éxito.

   ![imagen](imagenes/s4e13.png)

   **¡Felicidades! Haz realizado tu primera conexión a una base de datos con MongoDB**

1. En la ventana de __MongoDB Compass__ presionar el botón __CREATE DATABASE__ y crear la base de datos __MiNombre__ con la colección __users__, se tiene que definir el nombre de la primera colección para que se pueda crear la base de datos.

   En lugar de __MiNombre__ utiliza tu nombre y primer apellido para nombrar a tu base de datos.

   ![Creando base de datos](imagenes/creando-basededatos.png)

   Una vez llenado los datos, presionar el botón __CREATE DATABASE__

   Se deberá ver nuestra nueva base de datos en la lista:

   ![Lista de bases de datos](imagenes/lista-basededatos.png)

1. Para hacer uso de la base de datos __MiNombre__ dar clic en el nombre y se obtendrá la lista de colecciones disponibles:

   ![Lista de colecciones](imagenes/lista-colecciones.png)

   Se trabajará con Colecciones en el siguiente ejemplo.

[`Anterior`](../Readme.md#operaciones-con-bases-de-datos-1) | [`Siguiente`](../Readme.md#realizando-operaciones-con-colecciones-e-importando-datos)      
