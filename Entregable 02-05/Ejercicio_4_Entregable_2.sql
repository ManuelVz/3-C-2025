# 4-Productos que se vendieron valen menos 100 y que tengan stock mayor a 200

USE OLAVARRIA;

# Tengo que buscar productos que hayan sido vendidos, cuesten menos de 100, y tengan stock mayor a 200
# Para saber si un producto fue vendido, tengo que unir la tabla de productos con detalle_factura
# Porque en detalle_factura aparecen los productos que fueron parte de una venta

# Selecciono todos los campos de la tabla producto, pero uso DISTINCT por si un producto fue vendido varias veces
SELECT DISTINCT E01_PRODUCTO.*
FROM E01_PRODUCTO

# Uno los productos con detalle_factura, para asegurarme de que sean productos que fueron vendidos
JOIN E01_DETALLE_FACTURA ON E01_PRODUCTO.codigo_producto = E01_DETALLE_FACTURA.codigo_producto

# Filtro los productos que cuestan menos de 100 y tienen más de 200 unidades en stock
WHERE E01_PRODUCTO.precio < 100 AND E01_PRODUCTO.stock > 200;
