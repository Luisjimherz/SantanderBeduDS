### Subconsultas ###
# Subconsulta en WHERE
# Nombre de los empleados cuyo puesto es developer
SELECT nombre, apellido_paterno 
FROM empleado 
WHERE id_puesto IN (SELECT id_puesto FROM puesto WHERE nombre LIKE '%developer%');

# Subconsulta en FROM
# menor y mayor cantidad de ventas de un artículo
SELECT id_articulo, MIN(cuentaArticulo), MAX(cuentaArticulo) 
FROM (SELECT COUNT(*) AS cuentaArticulo FROM venta) AS subconsulta  
GROUP BY clave, id_articulo;