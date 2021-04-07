[`Introducción a Bases de Datos`](../../README.md) > [`Sesión 04`](../Readme.md) > Proyecto

## Ejercicios Sesión 4

### 1. Objetivos :dart:
- Que el alumno comprenda la estructura de documentos de una base de datos __MongoDB__
- Que el alumno se familiarice con la notación JSON

### 2. Requisitos :clipboard:
1. __MongoDB Compass__ iniciado y conectado al servidor de MongoDB
1. Base de datos __MiNombre__ y Colecciones `users`, `movies` y `ratings` creadas

### 3. Desarrollo :rocket:
A continuación se realizarán algunas operaciones de agregar, modificar y eliminar un documento JSON en una Colección.

1. Agregar los siguientes registros en formato CSV a la Colección `movies`

   ```csv
   4000,Avengers: Endgame (2019),Fantasy|Sci-Fi
   4001,Glass (2019),Drama|Fantasy
   ```
   Incluyendo nombres de columnas quedaría:
   ```csv
   id,titulo,genres
   4000,Avengers: Endgame (2019),Fantasy|Sci-Fi
   4001,Glass (2019),Drama|Fantasy
   ```
   Y entonces el correspondiente formato JSON será:
   ```json
   {
     id:"4000",
     titulo:"Avengers: Endgame (2019)",
     genres:"Fantasy|Sci-Fi"
   }
   {
     id:"4001",
     titulo:"Glass (2019)",
     genres:"Drama|Fantasy"
   }
   ```
   Ahora ir a __MongoDB Compass__ y agregar ambos documentos:

   ![Adicionando campos u objetos](imagenes/adicionando-datos.png)

   Al final presionar el botón __INSERT__

   Para poder observar nuestros documentos en la lista hay que realizar un filtro
   ```json
   {id: {$in: ["4000", "4001"]}}
   ```

   ![Documentos en la colección](imagenes/documentos-en-coleccion.png)

1. Modificar el documento con `id=4001` en la Colección `movies` para que contenga la siguiente información:

   ```json
   {
     id:"4001",
     titulo:"Glass (2019)",
     genres:"Drama|Fantasy",
     valoraciones: [
       {
         userid: "1563",
         movieid: "4001",
         rating: "4"
       },
       {
         userid: "434",
         movieid: "4001",
         rating: "5"
       }
     ]
   }
   ```
   Luego de presionar el botón __INSERT__ la lista de los dos documentos deberá de ser la siguiente:

   ![Lista de documentos en la colección](imagenes/documentos-en-coleccion-2.png)

[`Anterior`](../Readme.md) | [`Siguiente`](../Readme.md)      
