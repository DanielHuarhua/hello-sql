/*
INNER JOIN (JOIN)
Combina filas de dos tablas solo cuando hay una coincidencia em ambas.
Un usuario sin DNI y yn DNI que no este asociado a un usuario no apareran en la consulta,
solo aquellos que coinciden en ambas tablas

SELECT columna1,columna2
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
*/
-------------------------------------------------------------------------------------------------------
1:1
-- Obtiene todos los datos de ambas tablas que tienen coincidencia en el user_id (JOIN ES LO MISMO QUE INNER JOIN)
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene el nombre de la tabla1 y el dni de la tabla2 de los usuarios que tienen coincidencia
SELECT name, dni_number FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;
---------------------------------------------------------------------------------------------------------------
1:N
--Obtiene el departamento y el nombre de los trabajadores en dicho departamento, un trabajador puede estar
en vaios departamentos, pero en cada departamento solo hay un trabajador
SELECT nombre,name,age FROM departamentos
INNER JOIN users
ON departamentos.user_id=users.user_id;
--------------------------------------------------------------------------------------------------------------------
N:M
-- Obtiene los nombres de usuarios junto al area al que trabajan
-- Un usuario puede trabajar en muchas area y en un area puede trabajar varios usuarios
SELECT trabajadores.name, area.name
FROM trabajadores_area
JOIN trabajadores ON trabajadores_area.trabajador_id=trabajadores.trabajador_id
JOIN area ON trabajadores_area.area_id=area.area_id;
