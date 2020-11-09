#1. Cuál es el nombre de los empleados que realizaron cada venta?
USE tienda;
DESCRIBE empleado;
SELECT nombre, apellido_paterno, apellido_materno
FROM empleado
JOIN venta
	ON empleado.id_empleado = venta.id_empleado
ORDER BY clave;

#2. Cual es el nombre de los artículos que se han vendido?
# Para que tenga sentido hacer el join mostraré los artículos vendidos en cada venta
SELECT clave, nombre 
FROM empleado as a
JOIN venta as v
	ON a.id_empleado = v.id_empleado
ORDER BY clave;

#3. Cuál es el total de cada venta?
SELECT clave, sum(precio) AS total
FROM venta AS v 
JOIN articulo as a
	ON v.id_articulo = a.id_articulo
GROUP BY clave
ORDER BY clave;

