/*
COUNT
Encuentra el total de elementos no nulos de un mismo atributo
SELECT COUNT(atributo) FROM tabla
*/

-- Cuenta cuantas filas contiene la tabla "users"
Select COUNT(*) FROM users;

-- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users"
Select COUNT(age) FROM users;
