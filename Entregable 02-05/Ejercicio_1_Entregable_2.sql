# Manuel E. Vázquez.

# 1-Todos los productos que no figuran en ninguna factura

USE OLAVARRIA;
# De la lista de productos, tengo que encontrar los que no aparecen en "detalle factura", es decir, que si un codigo producto, esta en
# producto, pero no en detalle factura, significa que es un producto que no fue vendido (que no aparece en ninguna factura)

# Tomo todos los productos de la tabla de productos
SELECT *
FROM E01_PRODUCTO 

# Uno la tabla de productos con la detalle factura. Los productos que no fueron vendidos (los que no se encuentran en detalle factura), son completados
# con null
LEFT JOIN E01_DETALLE_FACTURA ON E01_PRODUCTO.codigo_producto = E01_DETALLE_FACTURA.codigo_producto

# Entonces, ahora puedo buscar los productos que fueron completados con null, que seran los que nunca fueron vendidos
WHERE E01_DETALLE_FACTURA.codigo_producto IS NULL


# Me generaba duda que la consulta me devolviera una tabla vacia (esto indicaria que todos los productos fueron vendidos al menos una vez)
# Entonces, agregue un producto a la tabla de productos (Script_Auxiliar_Entregable_2), pero no a la tabla de detalle factura, esto significa el producto esta en la tabla
# De productos, pero no en la de detallera factura, es decir, que nunca fue vendido. La consulta parece funcionar correctamente.