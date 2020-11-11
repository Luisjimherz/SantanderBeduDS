USE classicmodels;
SHOW TABLES;
### Right JOIN
#1. Obtén el código, nombre, y descripción de todos los productos
DESCRIBE products;
SELECT productCode, productName, productDescription FROM products;

#2. Obtén el número de orden, estado, y costo total de cada orden
DESCRIBE orders;
DESCRIBE orderdetails;
SELECT o.orderNumber, o.status, sum(od.quantityOrdered * priceEach) AS total FROM orders AS o
RIGHT JOIN orderdetails as od
ON o.orderNumber = od.orderNumber
GROUP BY orderNumber
ORDER BY orderNumber;

#3. Obtén el número, fecha, y línea de orden, nombre del producto, cantidad ordenada y precio de cada pieza que muestre los detalles de cada orden
DESCRIBE products;
SELECT o.orderNumber, o.OrderDate, od.orderLineNumber, p.productName, od.quantityOrdered, od.priceEach
FROM orders AS o
RIGHT JOIN orderdetails AS od 
ON o.orderNumber = od.orderNumber
JOIN products AS p
ON od.productCode = p.productCode
ORDER BY orderNumber;

#4. Obtén el número de orden, nombre del producto, el precio sugerido de fábrica (msrp) y precio de cada pieza
SELECT o.orderNumber, p.productName, p.MSRP, od.priceEach
FROM orders AS o
RIGHT JOIN orderdetails AS od
ON o.orderNumber = od.orderNumber
JOIN products AS p
ON od.productCode = p.productCode
ORDER BY orderNumber;

### LEFT JOIN
#5. Obtén el número de cliente, nombre de cliente, número de orden y estado de cada cliente
SELECT c.customerNumber, c.customerName, o.orderNumber, o.status
FROM customers AS c
LEFT JOIN orders AS o 
ON c.customerNumber = o.customerNumber
ORDER BY c.customerName;

#6. Obtén los clientes que no tienen una orden asociada
SELECT c.customerName, o.orderNumber
FROM customers AS c
LEFT JOIN orders AS o 
ON c.customerNumber = o.customerNumber
WHERE isnull(o.orderNumber)
ORDER BY c.customerName;

#7. Obtén el apellido de empleado, nombre de empleado, nombre de cliente, número de cheque, y total, es decir, los clientes asociados a cada empleado
SELECT e.lastName, e.firstName, c.customerName, pay.checkNumber, pay.amount
FROM employees AS e
LEFT JOIN customers as c
ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN payments as pay
ON c.customerNumber = pay.customerNumber
ORDER BY e.lastName, c.customerName; 

### RIGHT JOIN
#8. Repite los ejercicios 5 a 7 usando RIGHT JOIN
#8.1 Obtén el número de cliente, nombre de cliente, número de orden y estado de cada cliente
SELECT c.customerNumber, c.customerName, o.orderNumber, o.status
FROM orders AS o
RIGHT JOIN customers AS c 
ON o.customerNumber = c.customerNumber
ORDER BY c.customerName;

#8.2 Obtén los clientes que no tienen una orden asociada
SELECT c.customerName, o.orderNumber
FROM orders AS o
RIGHT JOIN customers AS c 
ON o.customerNumber = c.customerNumber
WHERE isnull(o.orderNumber)
ORDER BY c.customerName;

#8.3 Obtén el apellido de empleado, nombre de empleado, nombre de cliente, número de cheque, y total, es decir, los clientes asociados a cada empleado
SELECT e.lastName, e.firstName, c.customerName, pay.checkNumber, pay.amount
FROM customers AS c
RIGHT JOIN employees as e
ON c.salesRepEmployeeNumber = e.EmployeeNumber
JOIN payments as pay
ON c.customerNumber = pay.customerNumber
ORDER BY e.lastName, c.customerName; 

#9. Escoge 3 consultas de los ejercicios anteriores, crea una vita y escribe una consulta para cada una
# 9.1 Del ejercicio 4 consultar cuáles productos se vendieron a un precio mayor que el recomendado
CREATE VIEW price135 AS
(SELECT o.orderNumber, p.productName, p.MSRP, od.priceEach
FROM orders AS o
RIGHT JOIN orderdetails AS od
ON o.orderNumber = od.orderNumber
JOIN products AS p
ON od.productCode = p.productCode
ORDER BY orderNumber);

SELECT * FROM price135 WHERE (MSRP < priceEach);

#9.2 Del ejercicio 5 consulta obtener el nombre de clientes que aún no reciben una orden, así como el número de orden no entregada
CREATE VIEW customer_orders135 AS
(SELECT c.customerNumber, c.customerName, o.orderNumber, o.status
FROM customers AS c
LEFT JOIN orders AS o 
ON c.customerNumber = o.customerNumber
ORDER BY c.customerName);

SELECT customerName, orderNumber FROM customer_orders135 WHERE status != 'shipped';

#9.3 Del ejercicio 7  Obtén lel nombre de los empleados asociados a menos de 3 clientes
CREATE VIEW employees_customers135 AS
(SELECT e.lastName, e.firstName, c.customerName, pay.checkNumber, pay.amount
FROM employees AS e
LEFT JOIN customers as c
ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN payments as pay
ON c.customerNumber = pay.customerNumber
ORDER BY e.lastName, c.customerName); 

SELECT concat(lastName, ' ',firstName) AS fullname, count(*) AS relatedCustomers
FROM employees_customers135
WHERE relatedCustomers < 3
GROUP BY fullname;




