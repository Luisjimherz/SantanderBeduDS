# Cuál es el promedio de salario de los puestos?
SELECT AVG(salario) AS PromedioSalario FROM puesto;
# Cuántos artículos incluyen la palabra PASTA en su nombre?
SELECT COUNT(*) AS NumeroPastas FROM articulo WHERE nombre LIKE '%pasta%';
# SELECT Cuál es el salario mínimo y máximo?
SELECT MIN(salario) AS SalarioMinimo, MAX(salario) AS SalarioMaximo FROM puesto;
# Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT * FROM puesto ORDER BY id_puesto DESC LIMIT 5;
SELECT MAX(id_puesto) - 4 AS LimiteInferior FROM puesto;
SELECT SUM(salario) FROM puesto WHERE id_puesto >= 996;
#con subconsulta
#SELECT SUM(salario) FROM puesto WHERE id_puesto >= (SELECT MAX(id_puesto) - 4 FROM puesto);