### Session 1x03: Subqueries, Joins & Views

#### Work
[Subqueries](1x03_Subqueries.sql)\
[Joins and Views](1x02_Joins&Views.sql)

#### Post-Work

[Challenge03x01](Challenge01.sql):
> Usando la base de datos `tienda`, escribe consultas que permitan responder las siguientes preguntas: 
>- ¿Cuál es el nombre de los empleados cuyo sueldo es mayor a $100,000?
   ```sql
   SELECT nombre, apellido_paterno, apellido_materno
  FROM empleado 
  WHERE id_puesto IN (SELECT id_puesto FROM puesto WHERE salario > 100000 );
   ```
>- ¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?
   ```sql
   SELECT id_empleado, MIN(cantidad), MAX(cantidad) 
   FROM (SELECT clave, id_empleado, COUNT(*) AS cantidad
	        FROM venta GROUP BY clave, id_empleado) AS subconsulta
   GROUP BY id_empleado;
   ```
>-¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?
   ```sql
   SELECT clave 
   FROM venta WHERE id_articulo IN (SELECT id_articulo FROM articulo WHERE precio > 5000);
   ```
   
[Challenge03x02](Challenge02.sql):
> Usando la base de datos `tienda`, escribe una consulta que permita responder las siguientespreguntas:
> - ¿Cuál es el nombre de los empleados que realizaron cada venta?
  ```sql
  SELECT nombre, apellido_paterno, apellido_materno
  FROM empleado
  JOIN venta
	    ON empleado.id_empleado = venta.id_empleado
  ORDER BY clave;
  ```
>- ¿Cuál es el nombre de los artículos que se han vendido? 
  ```sql
   # Para que tenga sentido hacer el join mostraré los artículos vendidos en cada venta
  SELECT clave, nombre 
  FROM empleado as a
  JOIN venta as v
	    ON a.id_empleado = v.id_empleado
  ORDER BY clave;
  ```
>- ¿Cuál es el total de cada venta?
  ```sql
  SELECT clave, sum(precio) AS total
  FROM venta AS v 
  JOIN articulo as a
	    ON v.id_articulo = a.id_articulo
  GROUP BY clave
  ORDER BY clave;
  ```
   
[Challenge03x03](Challenge03.sql):
> Usando la base de datos `tienda`, define las vistas que permitan obtener la siguiente información:
>- Obtener el puesto de un empleado
   ```sql
   CREATE VIEW puestos135 AS
   SELECT CONCAT(e.nombre, ' ', e.apellido_paterno) AS nombreEmpleado, p.nombre AS puestoOcupado
   FROM empleado AS e
   JOIN puesto AS p ON e.id_puesto = p.id_puesto;
   ```
   
>- Saber que artículos ha vendido cada empleado
   ```sql
   CREATE VIEW vendedor_articulo135 AS
   SELECT v.clave AS numeroVenta, CONCAT(e.nombre, ' ', e.apellido_paterno) as vendedor, a.nombre as articulo
   FROM venta AS v
   JOIN empleado AS e ON v.id_empleado = e.id_empleado
   JOIN articulo as a ON v.id_articulo = a.id_articulo
   ORDER BY clave;
   ```
   
>- Saber que puesto ha hecho más ventas
   ```sql
   CREATE VIEW ventas_puestos135 AS
   SELECT p.nombre AS puestoOcupado, count(v.clave) AS total
   FROM venta AS v
   JOIN empleado as e ON v.id_empleado = e.id_empleado
   JOIN puesto as p ON e.id_puesto = p.id_puesto
   GROUP BY p.nombre
   ORDER BY total DESC;

   SELECT puestoOcupado FROM ventas_puestos135 LIMIT 1;
   ```
   
#### Excercises(Optional) 
[Excercises 3](Excercises.sql)


[Back](../README.md)

