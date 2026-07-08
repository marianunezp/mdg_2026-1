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
GROUP BY c."nom_comuna"

--total personas por zona censal
SELECT z."zonaloc_ref_id", COUNT(*)
FROM personas AS p
JOIN hogares AS h
ON p."hogar_ref_id"= h."hogar_ref_id"
JOIN viviendas AS v
ON h."vivienda_ref_id" = v."vivienda_ref_id"
JOIN zonas AS z
ON z."zonaloc_ref_id" = v."zonaloc_ref_id"
JOIN comunas AS c
ON c."codigo_comuna"= z."codigo_comuna"
GROUP BY z."zonaloc_ref"









-----------------------------------------------



--total de personas por comuna 

SELECT z."zonaloc_ref_id", COUNT(*)
FROM personas AS p
JOIN hogares AS h
ON p."hogar_ref_id"= h."hogar_ref_id"
JOIN viviendas AS v
ON h."vivienda_ref_id" = v."vivienda_ref_id"
JOIN zonas AS z
ON z."zonaloc_ref_id" = v."zonaloc_ref_id"
JOIN comunas AS c
ON c."codigo_comuna"= z."codigo_comuna"
GROUP BY z."zonaloc_ref_id"