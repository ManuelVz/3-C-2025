# 3-Productos vendidos en la factura N° 5

USE OLAVARRIA;

# Tengo que buscar los productos que fueron vendidos en la factura numero 5
# Para esto, necesito unir la tabla de productos con detalle_factura
# Porque en detalle_factura esta la relacion entre cada producto y su factura

# Selecciono todos los campos de la tabla producto
SELECT E01_PRODUCTO.*
FROM E01_PRODUCTO

# Uno los productos con los detalles de factura, para saber en que factura se vendio cada producto
JOIN E01_DETALLE_FACTURA ON E01_PRODUCTO.codigo_producto = E01_DETALLE_FACTURA.codigo_producto

# Filtro solamente los productos que fueron vendidos en la factura numero 5
WHERE E01_DETALLE_FACTURA.nro_factura = 5;
