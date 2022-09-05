# BSALE Backend

Listar los productos y las categorias.

## Requerimiento para probar la aplicación:

- Ruby v 2.7.6
- Rails v 6.1.6.1
- MySQL o MariaDB 

## Editar archivo `.env-template`:
- llenar la variable `SECRET_TOKEN` con cualquier cadena que de texto y números.
- No es necesario llenar el campo `DATABASE_URL`.

## Otros requerimientos.
para poblar la base de datos:
```bash
mysql -u root -p bsale_test_development < remote_test.sql
```
Configurar `config/database.yml` con los datos particulares para acceder al servicio MySQL.

===

## Estructura JSON:

Al realizar una petición HTTP, el servicio retornará JSON con las siguientes estructuras,

para `/categories`:
```json
{ 
  "id":1,
  "name":"bebida energetica" 
}
```

- **id**, identificación para categoría
- **name**, nombre de la categoría

para `/products`:
```json
{
  "id":5,
  "name":"ENERGETICA MR BIG",
  "url_image":"https://dojiw2m9tvv09.cloudfront.net/11132/product/misterbig3308256.jpg",
  "price":1490.0,
  "discount":20,
  "category":{
    "id":1,
    "name":"bebida energetica"
    }
}
```

- **id**, identificación para cada producto
- **name**, nombre de producto
- **url_image**, imagen de producto
- **price**, precio del producto
- **discount**, descuento disponible para el producto
- **category**, nodo que indica la relación con categoría.

## GET lista de productos
- `GET /products` retorna todos los productos.

### Parámetros
- *terms*, cadena de texto para búsqueda de en campo `name`.
- *ordering*, permite ordenar los resultados de manera ascendente o descendete según el `id` del producto.
- *category*, permite listar los productos que pertenecen a una categoría específica.

### Ejemplos
- `GET /products?product_filter[terms]=pisco&product_filter[ordering]=products.id_asc`
- `GET /products?product_filter[category]=2&product_filter[ordering]=products.id_desc`

## GET lista de categorías
- `GET /categories` retorna todas las categorías


## To r
