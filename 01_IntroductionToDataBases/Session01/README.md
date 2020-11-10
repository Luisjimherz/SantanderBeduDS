### Session 1x01: SQL Fundamentals

#### Work

#### Post-Work

[Challenge1x02](Challenge02.sql):
> Usando la base de datos `tienda`, escribe consultas que permitan responder las siguientes preguntas: 
>- ¿Cuál es el nombre de los empleados con el puesto 4?
   ```sql
   SELECT nombre FROM empleado WHERE id_puesto = 4;
   ```
>- ¿Qué puestos tienen un salario mayor a $10,000?
   ```sql
   SELECT * FROM puesto WHERE salario > 10000;
   ```
>- ¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?
   ```sql
   SELECT * FROM articulo WHERE precio > 1000 AND iva > 100;
   ```
>- ¿Qué ventas incluyen los artículo 135 o 963 y fueron hechas por los empleados 835 o 369?
   ```sql
   SELECT * FROM venta WHERE id_articulo IN (135,963) AND id_empleado IN (835,369);
   ```
[Challenge1x03](Challenge03.sql):
> Usando la base de datos `tienda`, escribe una consulta que permita obtener el top 5 de puestos por salarios
   ```sql
   SELECT * FROM tienda ORDER BY salario DESC LIMIT 5;
   ```
   
#### Excercises(Optional) 


[Back](::/README.md)
