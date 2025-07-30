/*
LEFT JOIN
Combina filas de dos tablas, pero incluye todas las filas de la tabla izquierda (tabla1),
tengan o no coincidencias. Si no hay coincidencia en la tabla derecha (tabla2) aparecera como nulo
*/

-- Obtiene el nombre de todos los usuarios junto a su dni (tengan un DNI asociado o no)
SELECT name, dni_number FROM users (tabla izquierda)
LEFT JOIN dni (tabla derecha)
ON users.user_id = dni.user_id
ORDER BY name ASC;

-- Obtiene el nombre de todos los usuarios junto a sus lenguajes (los tenga o no)
SELECT users.name, languages.name
FROM users
LEFT JOIN users_languages ON users.user_id=users_languages.user_id
LEFT JOIN languages ON users_languages.language_id=languages.language_id;
