/*
CONCAT
Sirve para concatenar dos o mas cadenas de texto en una sola columna
SELECT CONCAT(cadena1+cadena+...) AS 'alias' FROM users
*/

-- Concatena en una sola columa los campos nombre y apellido
SELECT CONCAT('Nombre: ', name, ', Apellidos: ', surname) FROM users

-- Concatena en una sola columa los campos nombre y apellido y le establece el alias 'Nombre completo'
SELECT CONCAT('Nombre: ', name, ', Apellidos: ', surname) AS 'Nombre completo' FROM users
