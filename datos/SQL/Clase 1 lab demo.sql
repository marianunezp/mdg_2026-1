/* comentario largo para separar seccion

*/
-- comentario corto para explicar 
-- consultar todos los artistas
SELECT * -- que columnas queremos consultar (si quiero consultar todas las columnas de esta tabla basta con poner al lado de select un asterisco *)
FROM public."Artist"; -- esto sirve para indicar que tabla queremos consultar 

SELECT "Name"
FROM public."Artist";

SELECT *
FROM "Customer";

SELECT "FirstName", "LastName"
FROM "Customer";

SELECT *
FROM "Customer"
WHERE "Country" = 'Chile';

SELECT *
FROM "Customer"
WHERE "Country" = 'Brazil'
ORDER BY "LastName";

SELECT *
FROM "Employee"
WHERE "Title" = 'IT Staff'
ORDER BY "FirstName" DESC;

SELECT *
FROM "Album"
ORDER BY "Title";

SELECT "Milliseconds", "Name"
FROM "Track"
ORDER BY "Milliseconds", "Name";


