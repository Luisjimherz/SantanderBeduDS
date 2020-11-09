#1. Cuál es el nombre de los empledos cuyo sueldo es mayor a 10,000?
USE tienda;
SHOW TABLES;
DESCRIBE puesto;
SELECT nombre, apellido_paterno, apellido_materno
FROM empleado 
WHERE id_puesto IN (SELECT id_puesto FROM puesto WHERE salario > 10000 );

#2. Cuál es la cantidad mínima y máxima de ventas de cada empleado?
DESCRIBE venta; 
SELECT id_empleado, MIN(cantidad), MAX(cantidad) 
FROM (SELECT clave, id_empleado, COUNT(*) AS cantidad
		FROM venta GROUP BY clave, id_empleado) AS subconsulta
GROUP BY id_empleado;

#3. Cuales claves de venta incluyen artículos cuyos precios son mayores a 5000?
SELECT clave 
FROM venta WHERE id_articulo IN (SELECT id_articulo FROM articulo WHERE precio > 5000);
