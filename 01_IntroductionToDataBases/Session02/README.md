### Session 1x02: Regular expressions & Grouping functions

#### Work
[Regular expressions](1x02_RegExp.sql)\
[Grouping functions](1x02_GroupFun.sql)

#### Post-Work

[Challenge02x01](Challenge01.sql):
> Usando la base de datos `tienda`, escribe consultas que permitan responder las siguientes preguntas: 
>- ¿Cuál es el nombre de los empleados con el puesto 4?
   ```sql
   SELECT nombre FROM empleado WHERE id_puesto = 4;
   ```
[Challenge02x02](Challenge02.sql):
> Usando la base de datos `tienda`, escribe una consulta que permita obtener el top 5 de puestos por salarios
   ```sql
   SELECT * FROM tienda ORDER BY salario DESC LIMIT 5;
   ```
   
[Challenge02x03](Challenge03.sql):
> Usando la base de datos `tienda`, escribe una consulta que permita obtener el top 5 de puestos por salarios
   ```sql
   SELECT * FROM tienda ORDER BY salario DESC LIMIT 5;
   ```
   
#### Excercises(Optional) 
[Excercises 2](Excercises.sql)


[Back](../README.md)
