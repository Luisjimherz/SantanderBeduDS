SHOW TABLES;
USE tienda;
DESCRIBE empleado;
# ¿Cual es el nombre de los empleados con el puesto 4?
SELECT nombre FROM empleado WHERE id_puesto = 4;
# ¿Qué puestos tienen un salario mayor a $10,000?
DESCRIBE puesto;
SELECT nombre FROM puesto WHERE salario > 10000;
# ¿Qué artículos tienen un precio mayor a $1000 y un iva mayor  100?
DESCRIBE articulo;
SELECT nombre FROM articulo WHERE precio > 1000 AND iva > 100;
#¿Qué ventas incluyen los artículos 135 o 963 y fueron hechas por los empleados 835 o 369?
DESCRIBE venta;
SELECT * FROM venta WHERE id_articulo IN (135, 963) AND id_empleado IN (835, 369);



