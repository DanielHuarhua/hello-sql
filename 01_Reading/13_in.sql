/*
IN
Retorna los valores que coincida con una lista especificada, esta lista contiene 
diferentes valores de un mismo atributo
Simplifica el OR
Usar operadores para condicionar atributos diferentes
Usar IN para condicionar un mismo atributo
SELECT carac1,carac2,.. FROM tabla WHERE atributo IN ('valor1','valor2','valor3',...)
*/

-- Ordena todos los datos de la tabla "users" con nombre igual a brais y sara
SELECT * FROM users WHERE name IN ('brais', 'sara')
