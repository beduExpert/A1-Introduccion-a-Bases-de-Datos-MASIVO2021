[`Introducción a Bases de Datos`](../../Readme.md) > [`Sesión 06`](../Readme.md) > `Ejemplo 2`

## Ejemplo 2: Asociación de colecciones

<div style="text-align: justify;">

### 1. Objetivos :dart: 

- Asociar colecciones mediante sus campos en común, usando la agregación `$lookup`.

### 2. Requisitos :clipboard:

1. MongoDB Compass instalado.

### 3. Desarrollo :rocket:

En la base de datos, existen varias colecciones que pueden asociarse. Por ejemplo la colección `comments` tiene la siguiente estructura:

![imagen](imagenes/s6e21.png)

Sin embargo, para conocer la película sobre la cual se hizo el comentario, es necesario consultar la colección `movies`. Y buscar el id que leímos de la colección `comments`.

![imagen](imagenes/s6e22.png)

Para facilitar esta búsqueda podemos usar una agregación `$lookup` que permite asociar dos colecciones. Algo similar a la operación `JOIN` de `SQL`.

Agregamos la agregación `$lookup` con el siguiente json:

```json
{
  from: 'movies',
  localField: 'movie_id',
  foreignField: '_id',
  as: 'pelicula'
}
```

Esto nos indica que la colección actual (`comments`) se asociará con la conexión `movies` que el campo que tomaremos para asociarlas será `comments.movie_id` y `movies._id` respectivamente y que los resultados serán almacenados en un arreglo llamado `pelicula`.

![imagen](imagenes/s6e23.png)

Elegimos únicamente los campos de interés, primero extrayendo el nombre del objeto que envuelve el arreglo y posteriormente proyectando únicamente los campos deseados

- `$addFields`

```json
{
  pelicula_objeto: {$arrayElemAt: ["$pelicula",0]}
}
```

- `$addFields`

```json
{
  pelicula_nombre: "$pelicula_objeto.title"
}
```

- `$project`

```
{
  _id:0,
  pelicula_nombre:1,
  name:1,
  text:1
}
```

**No cierres, este *pipeline*, pues lo usaremos más adelante.**

![imagen](imagenes/s6e24.png)

[`Anterior`](../Readme.md#asociación-de-colecciones) | [`Siguiente`](../Reto-02/Readme.md)   

