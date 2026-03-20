-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
 SELECT * FROM observations LIMIT 10;

-- MISSION 2
 SELECT DISTINCT region_id FROM observations; 


-- MISSION 3
 SELECT COUNT(DISTINCT species_id) FROM observations;


-- MISSION 4
 SELECT COUNT(*) FROM observations WHERE region_id = 2;


-- MISSION 5
 SELECT COUNT(*) FROM observations WHERE date = '1998-08-08';


-- MISSION 6
 SELECT region_id, COUNT(*) FROM observations GROUP BY region_id ORDER BY COUNT(*) DESC LIMIT 1;


-- MISSION 7
 SELECT species_id, COUNT(*) FROM observations GROUP BY species_id ORDER BY COUNT(*) DESC LIMIT 1;

-- He usado GROUP BY para organizar los datos por categorías y HAVING para filtrar los resultados que daban los conteos, fue lo que mas me costo 
-- MISSION 8
 SELECT region_id, COUNT(*) FROM observations GROUP BY region_id HAVING COUNT(*) > 5;

-- MISION 9 registros por cada informasion 
SELECT observer, COUNT(*) FROM observations GROUP BY observer ORDER BY COUNT(*) DESC;

-- mision 10 unir tablas de observaciones uso JOIN para vincular el nombre de la region 
SELECT observations.*, regions.name
FROM observations
JOIN regions ON observations.region_id = regions.id;

--mision 11 vinculacion de tablas 
SELECT observations.*, species.scientific_name
FROM observations
JOIN species ON observations.species_id = species.id;

--mision 12 se agrupa para ver conteos 
SELECT region_id, species_id, COUNT(*)
FROM observations
GROUP BY region_id, species_id
ORDER BY COUNT(*) DESC;

-- mision 13 insertar datos de pruebas 
INSERT INTO observations (region_id, species_id, date, observer)
VALUES (1, 1, '2026-03-07', 'Juan');

-- mision 14 corregir y borrar datos 
UPDATE species
SET scientific_name = 'Panthera onca'
WHERE scientific_name = 'Panthera oncca';

--mision 15 borrar registros de pruebas 
DELETE FROM observations
WHERE id = 999; 
