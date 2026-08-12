-- total personas por comunas 
SELECT c."nom_comuna", COUNT(*)
FROM personas AS p
JOIN hogares AS h
ON p."hogar_ref_id"= h."hogar_ref_id"
JOIN viviendas AS v
ON h."vivienda_ref_id" = v."vivienda_ref_id"
JOIN zonas AS z
ON z."zonaloc_ref_id" = v."zonaloc_ref_id"
JOIN comunas AS c
ON c."codigo_comuna"= z."codigo_comuna"
GROUP BY c."nom_comuna";

------------------------------------------------------------------------------------------------
--total personas por zona censal
SELECT z."geocodigo", c."nom_comuna", COUNT(*) AS total_personas
FROM personas AS p
JOIN hogares AS h
ON p."hogar_ref_id"= h."hogar_ref_id"
JOIN viviendas AS v
ON h."vivienda_ref_id" = v."vivienda_ref_id"
JOIN zonas AS z
ON z."zonaloc_ref_id" = v."zonaloc_ref_id"
JOIN comunas AS c
ON c."codigo_comuna"= z."codigo_comuna"
GROUP BY z."geocodigo", c."nom_comuna"
ORDER BY "total_personas"

------------------------------------------------------------------------------------------------
--numero de personas mayores 

SELECT c."nom_comuna", COUNT(*) FILTER( WHERE P.P09>=65) AS edad_personas_mayores
FROM personas AS p
JOIN hogares AS h
ON p."hogar_ref_id"= h."hogar_ref_id"
JOIN viviendas AS v
ON h."vivienda_ref_id" = v."vivienda_ref_id"
JOIN zonas AS z
ON z."zonaloc_ref_id" = v."zonaloc_ref_id"
JOIN comunas AS c
ON c."codigo_comuna"= z."codigo_comuna"
GROUP BY c."nom_comuna"
ORDER BY "edad_personas_mayores"
-------------------------------------------------------------------------------------------------
--numero de personas mayores 

SELECT c."nom_comuna", 
COUNT(*) AS total_personas,
COUNT(*) FILTER( WHERE P.P09>=65) AS personas_mayores,
ROUND ((COUNT(*) FILTER( WHERE P.P09>=65))*100.0/(COUNT(*)),4) AS ptje_personas_mayores
FROM personas AS p
JOIN hogares AS h
ON p."hogar_ref_id"= h."hogar_ref_id"
JOIN viviendas AS v
ON h."vivienda_ref_id" = v."vivienda_ref_id"
JOIN zonas AS z
ON z."zonaloc_ref_id" = v."zonaloc_ref_id"
JOIN comunas AS c
ON c."codigo_comuna"= z."codigo_comuna"
GROUP BY c."nom_comuna"
ORDER BY "personas_mayores" DESC

---------------------------------------------------------------------------------------
--clase 3 geodemo
-----cantidad de personas mayores de edad por zona censal
SELECT z.geocodigo,
		c.nom_comuna, 
COUNT(*) AS total_personas,
COUNT(*) FILTER( WHERE P.P09>=65) AS personas_mayores,
ROUND ((COUNT(*) FILTER( WHERE P.P09>=65))*100.0/(COUNT(*)),4) AS ptje_personas_mayores
FROM personas AS p
JOIN hogares AS h
ON p."hogar_ref_id"= h."hogar_ref_id"
JOIN viviendas AS v
ON h."vivienda_ref_id" = v."vivienda_ref_id"
JOIN zonas AS z
ON z."zonaloc_ref_id" = v."zonaloc_ref_id"
JOIN comunas AS c
ON c."codigo_comuna"= z."codigo_comuna"
GROUP BY z.geocodigo, c.nom_comuna
ORDER BY "personas_mayores" DESC

----------------------- 
--- cantidad de perso
