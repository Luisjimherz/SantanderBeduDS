USE _luisferjhz;

#2. Crear la tabla movies
CREATE TABLE IF NOT EXISTS movies (
   id_pelicula INT PRIMARY KEY, 
   titulo VARCHAR(50), 
   genero VARCHAR(50)
); 

#4. Crear la tabla ratings
CREATE TABLE IF NOT EXISTS ratings (
   id_usuario INT, 
   id_pelicula INT, 
   rating INT, 
   time_stamp BIGINT,
   FOREIGN KEY (id_usuario) REFERENCES users(id),
   FOREIGN KEY (id_pelicula) REFERENCES movies(id_pelicula)
);