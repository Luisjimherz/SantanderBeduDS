#1. Vista para obtener el puesto de un empleado
CREATE VIEW puestos135 AS
SELECT CONCAT(e.nombre, ' ', e.apellido_paterno) AS nombreEmpleado, p.nombre AS puestoOcupado
FROM empleado AS e
JOIN puesto AS p ON e.id_puesto = p.id_puesto;

SELECT * FROM puestos135;

#2. Saber que articulos ha vendido cada empleado
CREATE VIEW vendedor_articulo135 AS
SELECT v.clave AS numeroVenta, CONCAT(e.nombre, ' ', e.apellido_paterno) as vendedor, a.nombre as articulo
FROM venta AS v
JOIN empleado AS e ON v.id_empleado = e.id_empleado
JOIN articulo as a ON v.id_articulo = a.id_articulo
ORDER BY clave;

SELECT * from vendedor_articulo135;

#3. Saber que puesto ha tenido más ventas
CREATE VIEW ventas_puestos135 AS
SELECT p.nombre AS puestoOcupado, count(v.clave) AS total
FROM venta AS v
JOIN empleado as e ON v.id_empleado = e.id_empleado
JOIN puesto as p ON e.id_puesto = p.id_puesto
GROUP BY p.nombre
ORDER BY total DESC;

SELECT puestoOcupado FROM ventas_puestos135 LIMIT 1;