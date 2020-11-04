#1. Conéctate al esquema classicmodels
USE classicmodels;
SHOW TABLES;
#2. Dentro de la tabla employees, obtén el apellido de todos los empleados
DESCRIBE employees;
SELECT lastName FROM employees;
#3. Obtén el apellido, nommbre y puesto de todos los empleados
SELECT lastName, firstName, jobTitle FROM employees;
#4. Obtén todos los datos de cada empleado 
SELECT * FROM employees;
#5. Obtén el apellido, nombre y puesto de todos los empleados que tengan el puesto "Sales Rep"
SELECT lastName, firstName, jobTitle FROM employees WHERE jobTitle = 'Sales Rep';
#6. Obtén el apellido, nombre, puesto, y códio de oficina de todos los empleados que tengan el puesto "Sales Rep" y códigod e oficina 1
SELECT lastName, firstName, jobTitle, officeCode FROM employees WHERE jobTitle = 'Sales Rep' AND officeCode = 1;
#7. Obtén el apellido, nombre, y código de oficina de los empleados que tengan el puesto "Sales Rep" o código de oficina 1
SELECT lastName, firstName, jobTitle, officeCode FROM employees WHERE jobTitle = 'Sales Rep' OR officeCode = 1;
#8. Obtén el apellido, nombre y código de oficina de todos los empleados que tengan código de oficina 1, 2, o 3
SELECT lastName, firstName, officeCode FROM employees WHERE officeCode IN (1, 2, 3);
#9. Obtén el apellido, nombre y código de todos los empleados que tengan un puesto distinto a Sales Rep
SELECT lastName, firstName, officeCode FROM employees WHERE jobTitle !='Sales Rep';
#10. Obtén el apellido, nombre y código de oficina de todos los empleados cuyo código de oficina sea mayor a 5
SELECT lastName, firstName, officeCode FROM employees WHERE officeCode > 5;
#11. Obtén el apellido nombre, y código de oficina de todos los empleados cuyo código de ocicina sea menor o igual a 4
SELECT lastName, firstName, officeCode FROM employees WHERE officeCode <=4;
#12. Dentro de la tabla customers, obtén el nombre, país y estado de todos los clientes cuyo país sea USA y cuyo estado se CA
DESCRIBE customers;
SELECT customerName, country, state FROM customers WHERE country = 'USA' AND state='CA';
#13. Obtén el nombre, país, estado y límite de crédito de todos los clientes cuyo país sea USA, cuyo estado sea CS y cuyo límite de crédito sea mayor a 100000
SELECT customerName, country, state, creditLimit FROM customers WHERE country='USA' AND state='CA' AND creditLimit>100000;
#14. Obtén el nombre, el país y todos los clientes cuyo país dea USA o France
SELECT customerName, country FROM customers where country IN ('USA', 'France');
#15. Obtén el nombre, país, y límite de crédito de los clientes en USA o France con límite mayor a 100000;
SELECT customerName, country, creditLimit FROM customers WHERE country IN ('USA', 'FRANCE') AND creditLimit>100000;
#16. DEntro de la tabla offices, obtén el código de oficina, ciudad, teléfono y país de aquellas oficinas que se enecuentran en USA o France
DESCRIBE offices;
SELECT officeCode, city, phone, country FROM offices WHERE country IN ('USA', 'France');
#17. Obtén el código de oficina, ciudad, teléfono y país de aquellas oficinas que no se enecuentran en USA o France
SELECT officeCode, city, phone, country FROM offices WHERE country NOT IN ('USA', 'France');
#18. Dentro de la tabla orders, obtén el número de orden de cliente, estado de fecha de encío de todas las órdenas con el número 10165, 10287, 10310
DESCRIBE orders;
SELECT orderNumber, customerNumber, status, shippedDate FROM orders WHERE orderNumber IN (10165, 10287, 10310);
#19. Dentro de la tabla customers, obtén el apellido, Nombre de cada cliente y ordena los resultados por apellido ascendentemente
DESCRIBE customers;
SELECT contactLastName, contactFirstName FROM customers ORDER BY contactLastName ASC;
#20. Obtén el apellido y nombre de cada cliente y ordena los resultados de forma descendente por aplleido
SELECT contactLastName, contactFirstName FROM customers ORDER BY contactLastName DESC;
#21. Obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma descendente y luego por nombre de forma ascendente.
SELECT contactLastName, contactFirstName FROM customers ORDER BY contactLastName DESC, contactFirstName ASC;
#22. Obtén el número de cliente, nombre y límite de crédito de los cinco clientes con el crédito más amplio;
SELECT customerNumber, customerName, creditLimit FROM customers ORDER BY creditLimit DESC LIMIT 5;
#23. Obtén el número de cliente, nombre de cliente y límite de créito de los cinco clientes con el crédito más bajo.
SELECT customerNumber, customerName, creditLimit FROM customers ORDER BY creditLimit Limit 5;