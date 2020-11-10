### Session 1x02: Regular expressions & Grouping functions

#### Work
[Regular expressions](1x02_RegExp.sql)\
[Grouping functions](1x02_GroupFun.sql)

#### Post-Work

[Challenge02x01](Challenge01.sql):
> Usando la base de datos `tienda`, escribe consultas que permitan responder las siguientes preguntas: 
>- ¿Qué artículos incluyen la palabra Pasta en su nombre?
   ```sql
   SELECT * FROM articulo WHERE nombre LIKE '%pasta%';
   ```
>- ¿Qué artículos incluyen la palabra cannelloni en el nombre?
   ```sql
   SELECT * FROM articulo WHERE nombre LIKE '%cannelloi%';
   ```
>-¿Qué nombres están separados por un guión?
   ```sql
   SELECT * FROM articulo WHERE nombre LIKE '%-%'
   ```
>- ¿Qué puestos incluyen la palabra Designer?
   ```sql
   SELECT * FROM puesto WHERE nombre LIKE '%Designer%';
   ```
>- ¿Qué puestos incluyen la palabra Developer?
   ```sql
   SELECT * FROM puesto WHERE nombre LIKE '%Developer%';
   ```
   
[Challenge02x02](Challenge02.sql):
> Usando la base de datos `tienda`, escribe una consulta que permita responder las siguientespreguntas:
> - ¿Cuál es el promedio de salario de los puestos?
   ```sql
   SELECT AVG(salario) AS PromedioSalario FROM puesto;
   ```
>- ¿Cuántos artículos incluyen la palabra Pasta en su nombre? 
 ```sql
   SELECT COUNT(*) AS NumeroPastas FROM articulo WHERE nombre LIKE '%pasta%';
   ```
>- ¿Cuál es el salario mínimo y máximo?
 ```sql
   SELECT MIN(salario) AS SalarioMinimo, MAX(salario) AS SalarioMaximo FROM puesto;
   ```
>- ¿Ciál es la suma del salario de los últimos cinco puestos agregados?
 ```sql
   SELECT * FROM puesto ORDER BY id_puesto DESC LIMIT 5;
   SELECT MAX(id_puesto) - 4 AS LimiteInferior FROM puesto;
   SELECT SUM(salario) FROM puesto WHERE id_puesto >= 996;
   
   #con subconsulta
   #SELECT SUM(salario) FROM puesto WHERE id_puesto >= (SELECT MAX(id_puesto) - 4 FROM puesto);
   ```
   
[Challenge02x03](Challenge03.sql):
> Usando la base de datos `tienda`, escribe consultas que te permitan responder las siguientes preguntas:
>- ¿Cuántos registros hay por cada uno de los puestos?
   ```sql
   SELECT nombre, COUNT(*) AS cantidad FROM puesto GROUP BY nombre;
   ```
   
>- ¿Cuánto dinero se paga en total por puesto?
   ```sql
   SELECT nombre, SUM(salario) AS SalarioTotal FROM puesto GROUP BY nombre;
   ```
   
>- ¿Cuál es el número total de ventas por vendedor?
   ```sql
   SELECT id_empleado, COUNT(*) AS VentasTotales FROM venta GROUP BY id_empleado;
   ```
   
>- ¿Cuál es el número total de ventas por artículo?
   ```sql
   SELECT id_articulo, COUNT(*) AS TotalVendidos FROM venta GROUP BY id_articulo;
   ```
   
#### Excercises(Optional) 
[Excercises 2](Excercises.sql)


[Back](../README.md)
