# Conociendo el servidor
SHOW DATABASES; #Mostrar bases de datos en el servidor 

#Seleccionando una BD para trabajar
USE tienda; #Elegir una base de datos
SHOW TABLES; #Mostrar las tablass en la base de datos elegida

#Conociendo la estructura de las tablas
DESCRIBE empleado; #Mostrar la estructura de una tabl
DESCRIBE articulo;
DESCRIBE puesto;
DESCRIBE venta;

# CONSULTAS
SELECT * FROM empleado; #selecciona todas las columnas
SELECT nombre FROM empleado; #seleccionando una columna específica
SELECT nombre, rfc FROM empleado; #seleccionando más de una columna específica

# Filtros
SELECT * FROM empleado WHERE apellido_paterno = 'Risom'; #Filtrps
SELECT * FROM empleado WHERE id_empleado IN (1, 10);
SELECT * FROM empleado WHERE id_puesto > 100;
SELECT * FROM empleado WHERE id_puesto >= 100 AND id_puesto <=200;

# Ordenar consultas
USE classicmodels;
SHOW TABLES;
SELECT * FROM customers;
SELECT * FROM customers ORDER BY contactLastName; #ascendente por default
SELECT * FROM customers ORDER BY contactLastNAme DESC;
SELECT * FROM customers ORDER BY creditlimit DESC;

# Limitar resultados de la consulta
SELECT * FROM customers ORDER BY creditLimit DESC LIMIT 10;
