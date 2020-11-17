### Session 1x05: Queries with MongoDB

#### Work

#### Post-Work
**Challenge01:** Usando la colección sample_airbnb.listingsAndReviews:
> [Query 1](Challenge01/Query01.json). Propiedades que no permiten fiestas
´´´JSON
{
 filter: {
  house_rules: RegExp('.*no parties.*', i)
 }
}
´´´

> [Query 2.](Challenge01/Query02.json) Propiedades que admitan mascotas
´´´JSON
{
 filter: {
  house_rules: RegExp('.*pets allowed.*', i)
 }
}
´´´

> [Query 3.](Challenge01/Query03.json) Propiedades que no permitan fumadores
´´´JSON
{
 filter: {
  house_rules: RegExp('.*no smoking.*', i)
 }
}
´´´

> [Query 4.](Challenge01/Query04.json) Propiedades que no permitan fiests ni fumadores
´´´JSON
{
 filter: {
  house_rules: RegExp('.*no smoking.*|.*no parties.*', i)
 },
 project: {
  house_rules: 1
 }
´´´

**Challenge02** Usando la colección sample_airbnb.listingsAndReviews:
> [Query 1](Challenge02/Query01.json) Filtra las publicaciones que tengan 50
> o más comentarios, con valoración de 80 o superior, con conexión a internet y
> que estén en Brazil
´´´JSON
{
 filter: {
  number_of_reviews: {
   $gte: 50
  },
  'review_scores.review_scores_rating': {
   $gte: 80
  },
  amenities: {
   $in: [
    RegExp('ethernet', i)
   ]
  },
  'address.country': 'Brazil'
 },
 project: {
  name: 1,
  summary: 1
 }
}
´´´

**Challenge03** Usando la colección sample_airbnb.listingsAndReviews:
> [Query 1](Challenge03/Query01.json) Mediante el uso de agregaciones, encuentra
>el número de publicaciones que tienen una conexión a Internet Wifi o Ethernet
´´´JSON
{
  project: {
    name: 1,
    amenities: 1,
    _id: 0
  },
  match: {
    amenities: {$in: ["Wifi", "Ethernet"]}
  },
  group: {
    _id: null,
    cuenta:{$sum: 1}
  }
}
´´´

#### Excercises(Optional)
[Excercises 5](Excercises/README.md)
