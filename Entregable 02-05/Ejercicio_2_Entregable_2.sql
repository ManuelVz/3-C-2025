# 2-Todos los productos que se vendieron en el 2017

USE OLAVARRIA;

# Tengo que buscar productos que hayan sido vendidos en el año 2017
# Para esto, tengo que unir la tabla de productos con detalle_factura y factura
# Porque la fecha de venta no esta en producto ni en detalle_factura, sino en la tabla factura

# Selecciono todos los campos de la tabla producto, pero uso distinct para evitar que un producto aparezca varias veces 
# si fue vendido mas de una vez en el año
SELECT DISTINCT E01_PRODUCTO.*
FROM E01_PRODUCTO

# Uno los productos con los detalles de factura, para saber en que factura se vendio cada producto
JOIN E01_DETALLE_FACTURA ON E01_PRODUCTO.codigo_producto = E01_DETALLE_FACTURA.codigo_producto

# Ahora, uno detalle factura, con factura, para poder acceder a la fecha de venta
JOIN E01_FACTURA ON E01_DETALLE_FACTURA.nro_factura = E01_FACTURA.nro_factura

# YEAR(fecha) me permite extraer el año de la fecha de la factura
WHERE YEAR(E01_FACTURA.fecha) = 2017;

