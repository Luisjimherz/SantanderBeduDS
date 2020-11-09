# Reto
USE tienda;
SHOW TABLES;
# ¿Qué artículos incluyen la palabra pasta en su nombre?
DESCRIBE articulo;
SELECT * FROM articulo WHERE nombre LIKE '%pasta%';
#Qué artículos incluyen la palabra Cannelloni en el nombre?
SELECT * FROM articulo WHERE nombre LIKE '%Cannelloni%';
# Qué nombres están separados por un guión?
SELECT * FROM articulo WHERE nombre LIKE '%-%';
# Qué puestos incluyen la palabra Designer?
SELECT * FROM puesto WHERE nombre LIKE '%Designer%';
# Qué puestos incluyen la palabra Developer?
SELECT * FROM puesto WHERE nombre LIKE '%Developer%';