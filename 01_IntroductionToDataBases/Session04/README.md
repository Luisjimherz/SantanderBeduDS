### Session 1x04: MongoDB Fundamentals

#### Work

#### Post-Work
**Challenge01:** Usando la base de datos `sample_mflix`, proyecta los datos que se solicitan.
> [Query 1](Challenge01/Query01.json). Fecha, nombre y texto de cada comentario
```JSON
{
 project: {
  date: 1,
  name: 1,
  text: 1
 }
}
```
> [Query 2.](Challenge01/Query02.json) Título, elenco y año de cada película.
```JSON
{
 project: {
  title: 1,
  cast: 1,
  year: 1
 }
}
```
> [Query 3.](Challenge01/Query03.json) Nombre y contraseña de cada usuario.
```JSON
{
 project: {
  name: 1,
  password: 1
 }
}
```

**Challenge02:** Usando la base de datos `sample_mflix`, agrega proyeccciones, filtros, ordenamientos y límites que permitan contestar las siguientes preguntas.
> [Query 1.](Challenge02/Query01.json) ¿Qué comentarios ha hecho Greg Powell?
```JSON
{
 filter: {
  name: 'Greg Powell'
 },
 project: {
  name: 1,
  text: 1
 }
}
```
> [Query 2.](Challenge02/Query02.json) ¿Qué comentarios han hecho Greg Powell o Mercedes Tyler?
```JSON
{
 filter: {
  $or: [
   {
    name: 'Greg Powell'
   },
   {
    name: 'Mercedes Tyler'
   }
  ]
 },
 project: {
  name: 1,
  text: 1
 }
}
```
> [Query 3.](Challenge02/Query03.json) ¿Cuál es el máximo número de comentarios en una película?
```JSON
{
 project: {
  num_mflix_comments: 1
 },
 sort: {
  num_mflix_comments: -1
 },
 limit: 1
}
```
> [Query 4.](Challenge02/Query04.json) ¿Cuál es título de las cinco películas más comentadas?
```JSON
{
 project: {
  num_mflix_comments: 1,
  title: 1
 },
 sort: {
  num_mflix_comments: -1
 },
 limit: 5
}
```
#### Excercises(Optional)
[Excercises 4](Excercises/README.md)

[Back](../README.md)
