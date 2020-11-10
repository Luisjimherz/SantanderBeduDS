# Funciones de agregación
SELECT (1+7) AS pipi; # AS asigna un identificador de campo a una expresión
SELECT * FROM articulo;
SELECT AVG(precio) AS PromedioPrecio FROM articulo;
SELECT COUNT(*) AS ConteoArticulos FROM articulo;
# SELECT COUNT(nombre) AS ConteoArticulos FROM articulo; #Es lo mismo que la líne anterior
SELECT MAX(precio) AS PrecioMaximo FROM articulo;

# Agrupamientos 
SELECT * FROM articulo;
SELECT nombre, sum(precio) AS PrecioTotal FROM articulo GROUP BY nombre;
SELECT nombre, count(*) AS cantidad FROM articulo GROUP BY nombre ORDER BY cantidad DESC;
SELECT nombre, min(salario) AS SalarioMinimo, max(salario) AS SalarioMaximo FROM puesto GROUP BY nombre;