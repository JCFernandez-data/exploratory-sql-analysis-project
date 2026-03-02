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
-- SELEC * FROM opservation LIMIT 10;

-- MISSION 2
-- SELECT DISTINCS region_id FROM opservation; 


-- MISSION 3
-- SELECT COUNT(DISTINCT especies_id) FROM opservation;


-- MISSION 4
-- SELECT COUNT(*) FROM opservation WHERE region_id = 2;


-- MISSION 5
-- SELEC COUNT(*)FROM opservation WHERE opservacion_date = '1998-08-08';


-- MISSION 6
-- SELECT region_id COUNT(*) FROM opservations GROUP BY region_id ORDEN BY COUNT(*) DESC LIMIT 1;


-- MISSION 7
-- SELECT especies_id COUNT(*) FROM opservations GRUPO BY especies_id COUNT(*) DESC LIMIT 1;


-- MISSION 8
-- SELECT region_id COUNT(*) FROM opservations GROUP BY region_id HAVING COUNT(*) > 100;
