### JOINS
SHOW KEYS FROM venta;
SELECT * FROM puesto;
SELECT * FROM empleado;

# INNER
SELECT * 
FROM empleado as emp
JOIN puesto as pto
	on emp.id_puesto = pto.id_puesto;
    
# LEFT 
SELECT *
FROM puesto as p
LEFT JOIN empleado as e
	ON p.id_puesto = e.id_puesto;
    
# RIGHT
SELECT *
FROM empleado as e
RIGHT JOIN puesto as p
	ON e.id_puesto = p.id_puesto;
    
    
### VISTAS
CREATE VIEW tickets_135 AS
SELECT v.clave, v.fecha, a.nombre AS producto, concat(e.nombre, ' ', e.apellido_paterno) AS empleado
FROM venta as v
JOIN empleado AS e ON v.id_empleado = e.id_empleado
JOIN articulo AS a ON v.id_articulo = a.id_articulo;

 SELECT * FROM tickets_135;
 SELECT clae, round(sum(precio), 2) AS total
 FROM tickets135;