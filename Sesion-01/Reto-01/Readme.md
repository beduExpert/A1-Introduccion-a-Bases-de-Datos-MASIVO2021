[`Introducción a Bases de Datos`](../../Readme.md) > [`Sesión 01`](../Readme.md) > `Reto 1`
	
## Reto 1: Estructura de una tabla

<div style="text-align: justify;">

### 1. Objetivos :dart:

- Consultar la estructura de algunas tablas.

### 2. Requisitos :clipboard:

1. MySQL Workbench instalado.

### 3. Desarrollo :rocket:

Usando la base de datos `tienda`, muestra la descripción de las tablas `articulo`, `puesto` y `venta`. Por cada tipo de dato que encuentras llena la siguiente tabla, a mano. Usa la [Documentación de MySQL](https://dev.mysql.com/doc/refman/8.0/en/data-types.html) como referencia.

| Tipo   | Descripción |
|---|---|
|   |   |

<details><summary>Solución</summary>
<p>

Veamos la descripción de las tablas `articulo`, `puesto` y `venta`. Recuerda que para visualizar todas las tablas del esquema puedes usar el comando:

```sql
SHOW TABLES;
```
![imagen](imagenes/s1wr11.png)

```sql
DESCRIBE articulo;
```
![imagen](imagenes/s1wr12.png)

```sql
DESCRIBE puesto;
```
![imagen](imagenes/s1wr13.png)

```sql
DESCRIBE venta;
```
![imagen](imagenes/s1wr14.png)

| Tipo        | Descripción                   |
|-------------|-------------------------------|
| `ìnt`       | Datos numéricos enteros       |
| `varchar`   | Cadenas de caracteres         |
| `timestamp` | Fechas                        |
| `double`    | Datos numéricos con decimales |

</p>
</details>
   
<br/>

[`Anterior`](../Ejemplo-02/Readme.md) | [`Siguiente`](../Readme.md#estructura-de-una-consulta)

</div>
