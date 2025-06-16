/*
BETWEEN
Retorna los valores que se encuentren dentro de un intervalo de comparacion
Simplifica operadores <,>
Se usa para delimitar un mismo atributo a un intervalo
SELECT carac1,carac2,... FROM tabla WHERE atributo BETWEEN min_valor AND max_valor
*/

-- Ordena todos los datos de la tabla "users" con edad comprendida entre 20 y 30
SELECT * FROM users WHERE age BETWEEN 20 AND 30
