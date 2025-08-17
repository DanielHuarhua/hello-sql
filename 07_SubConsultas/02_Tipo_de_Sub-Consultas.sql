/*
1. SUB-CONSULTA ESCALAR
La subconsulta devuelve un unico valor, (generalemente una funcion de agregacion), que la consulta
principal utilizará
*/
SELECT * FROM users WHERE age > (SELECT avg(age) FROM USERS);
-- La subconsulta retorna un unico valor (media), que será usado en la consulta principal
--------------------------------------------------------------------------------------------------------
/*
2. SUB-CONSULTA DE COLUMNA ÚNICA
La subconsulta retorna una columna con varias filas, donde suelen usarse operadores como IN,ALL,ANY
*/
SELECT user_id,dni_number FROM dni WHERE user_id IN (
SELECT user_id FROM users WHERE age>14);
-- La subconsulta retorna varias filas de otra tabla que cumplen una condicion, esto resutados seran
usados en la consulta principal usando otra tabla.  
