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

-- seleccionar todas las boletas cuyo valor supere los 10 pesos
SELECT "Total" -- la parte de seleccion es para las columnas de una tabla
FROM "Invoice" -- para seleccionar la tabla 
WHERE "Total" > 10; -- y el where es para filtrar o condicionar



--#############OPERADORES###############

--contar el numero de boletas (el asterisco lo que hace es seleecionar todas las columnas)
SELECT COUNT(*) --el comanmdo count sirve para contar el numero de filas que coinciden con un  criterio en especifico 
FROM "Invoice";

-- sumar el total de las boletas 
SELECT SUM("Total") --sirve para obtener el total de una columna 
FROM "Invoice";

-- calcular el costo promedio de las boletas
SELECT AVG("Total") -- sirve para calcular el promedio o la media aritmetica de los valores de una columna numerica 
FROM "Invoice";

--calcular minimo y maximo valor de las boletas 
SELECT MIN("Total") -- encuentra el valor mas bajo o elo minimo 
FROM "Invoice";
SELECT MAX("Total") -- ebncuentra el vbalor mas alto o el maximo
FROM "Invoice";

-- todas las estadisticas en una 
SELECT COUNT(*), SUM("Total"), AVG("Total"), MIN("Total"), MAX("Total") -- las comas sirven para separar columnas
FROM "Invoice";

-- mostrar todos los albumes y sus respectivos artistas
SELECT al."Title"AS maria , ar."Name"AS patricia --- el comando AS sirve para darle un sujeto o  titulo a lo que estamos llamando
FROM "Album" AS al
JOIN "Artist" AS ar --join significa unir entonces esto nos indica que tabla queremos unir 
ON al."ArtistId" = ar."ArtistId";-- en base a que columna hacemos la union, hay que indicar que columnas vamos 

-- mostrar todas las pistas, duracion y su r4espectivo album
SELECT tra."Name"AS pista, tra."Milliseconds"AS duracion, al."Title" AS album 
FROM "Track" AS tra
JOIN "Album" AS al
ON tra."AlbumId" = al."AlbumId";

-- mostrar todas las pistas, su artista y su album 
SELECT tra."Name"AS pista, art."Name"AS artistas, al."Title" AS album
FROM "Track" AS tra
JOIN "Album" AS al
ON tra."AlbumId" = al."AlbumId"
JOIN "Artist" AS art
ON art."ArtistId" = al."ArtistId";