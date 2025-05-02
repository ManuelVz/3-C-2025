# 5-Mostrar los nombres y apellidos de los clientes que hayan comprado al menos un producto que contenga las letras ui o re en el campo descripcion mostrar ademas de que producto se trata nombrando la columna como "producto comprado"
USE OLAVARRIA;

# Tengo que buscar clientes que hayan comprado productos que en su descripcion contengan "ui" o "re"
# Ademas, tengo que mostrar el producto comprado, con una columna que se llame "producto comprado"

# Para esto tengo que unir 3 tablas: cliente, factura y detalle_factura, y luego la tabla de productos
# Porque los clientes estan en la tabla cliente, pero los productos que compraron se relacionan a traves de facturas y detalle_factura

# Selecciono el nombre y apellido del cliente, y el nombre del producto que compraron
# Le cambio el nombre a la columna del producto usando AS
SELECT E01_CLIENTE.nombre, E01_CLIENTE.apellido, E01_PRODUCTO.nombre AS "producto comprado"
FROM E01_CLIENTE

# Uno cliente con factura, porque cada factura tiene el numero del cliente
JOIN E01_FACTURA ON E01_CLIENTE.nro_cliente = E01_FACTURA.nro_cliente

# Uno factura con detalle_factura, para saber que productos se vendieron en cada factura
JOIN E01_DETALLE_FACTURA ON E01_FACTURA.nro_factura = E01_DETALLE_FACTURA.nro_factura

# Uno detalle_factura con producto, para poder acceder a su descripcion
JOIN E01_PRODUCTO ON E01_DETALLE_FACTURA.codigo_producto = E01_PRODUCTO.codigo_producto

# Filtro los productos cuya descripcion contenga las letras "ui" o "re", para ello, uso LIKE con % para buscar las letras en cualquier parte del texto
WHERE E01_PRODUCTO.descripcion LIKE '%ui%' OR E01_PRODUCTO.descripcion LIKE '%re%';
