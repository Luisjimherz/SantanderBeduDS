# Creación de base de datos
CREATE DATABASE IF NOT EXISTS _luisferjhz;

# Creación de tablas
CREATE TABLE IF NOT EXISTS users (
	id INT PRIMARY KEY,
    genero VARCHAR(1),
    edad INT,
    ocupacion INT, 
    cp VARCHAR(20)
);

# Eliminar tabla
DROP TABLE movies;

# ELiminar base de datos
DROP DATABASE _luisferjhz;

SHOW TABLES;