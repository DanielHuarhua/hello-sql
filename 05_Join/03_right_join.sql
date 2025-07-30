/*
RIGHT JOIN
Combina filas de dos tablas, pero incluye todas las filas de la tabla derecha (tabla2),
Si no encuentra coincidencia con la tabla izquierda (tabla1) apareceran como NULL
SELECT columna1,columna2,...
FROM table1 (tabla izquierda)
RIGHT JOIN table 2 (tabla derecha)
ON table1.key=table2.key;
*/
-- Obtiene todos los dni junto al nombre de su usuario asociado (lo tenga o no un usuario asociado a ese DNI)
SELECT name, dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene el nombre de todos los lenguajes junto a sus usuarios (los tenga o no)
SELECT users.name, languages.name
FROM users
RIGHT JOIN users_languages ON users.user_id=users_languages.user_id
RIGHT JOIN languages ON users_languages.language_id=languages.language_id;
