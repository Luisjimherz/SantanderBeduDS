#1. Dentro de la tabla employees, obtén el número de empleado, apellido, y nombre de todos los empleados cuyo nombre empiece con a
USE classicmodels;
SHOW TABLES;
DESCRIBE employees;
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE 'A%';
#2. Dentro de la tabla employees, obtén el número de empleado, apellido, y nombre de todos los empleados cuyo nombre termina con on
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE '%on';
#3. Obtén el número de empleado, apellido, y nombre de todos los empleados cuyos nombre incluye la cadena on
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE '%on%';
#4. Obtén el número de empleado, apellido, y nombre de todos los empleados cuyos nombres tienen tres letras e inician con T y finalizan con m
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE 'T_m';
#5. Obtén el número de empleado, apellido y nombre de todos los empleados cuyo nombre no inicia con b
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName NOT LIKE 'B%';
#6. De la tabla products, Obtén el código de producto y nombre de los productos con códigoo con la cadena _20
DESCRIBE products;
SELECT productCode, productName FROM products WHERE productCode LIKE '\_20';
#7. De la tabla orderdetails obtén el total de cada orden
SHOW TABLES;
DESCRIBE orderdetails;
SELECT COUNT(*) AS 'Total' FROM orderdetails;
#8. Dentro de la tabla orders obtén el número de órdenes por año
DESCRIBE orders;
SELECT YEAR(orderDate) AS año, COUNT(*) AS 'total' FROM orders GROUP BY año;
#9.  Obten el apellido y nombre de los empleados cuya oficina está ubicaada en USA
SELECT lastName, firstName from employees WHERE officeCode IN (SELECT officeCode FROM offices WHERE country = 'USA');
#10. Obtén el número de cliente, número de cheque del cliente que haya realizado el pago más alto
DESCRIBE payments;
SELECT customerNumber, checkNumber, amount FROM payments WHERE amount = (SELECT MAX(amount) FROM payments);
#11. Obtén el número de cliente, número de cheque y cantidad de aquellos clientes cuyo pago es más alto que el promedio;
SELECT customerNumber, checkNumber, amount FROM payments WHERE amount > (SELECT AVG(amount) FROM payments);
#12. Obtén el nombre de aquellos clientes que no han hecho ninguna orden
SELECT  customerName FROM customers WHERE customerNumber NOT IN (SELECT customerNumber FROM orders); 
#13. Obtén el máximo, mínimo, y promedio del número de productos en las órdenes de venta.
SELECT productCode, AVG(quantityOrdered) AS promedio, MAX(quantityOrdered) AS maximo, MIN(quantityOrdered) AS minimo FROM orderdetails GROUP BY productCode;
#14. Obtén el número de órdenes que hay por estado
SELECT status, COUNT(*) AS cuenta FROM orders GROUP BY status; 

