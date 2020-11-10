# Filtrado con expresiones regulares
USE tienda;
SHOW tables;
SELECT * FROM empleado;
SELECT *  FROM empleado WHERE nombre LIKE 'M%';
SELECT * FROM empleado WHERE nombre LIKE '%a';
SELECT * FROM empleado WHERE nombre LIKE 'M%l_a';
