/*
LIMIT
Restringe la cantidad de resultados que retorna la consulta
SELECT column1,column2,... FROM tabla LIMIT #registros
*/

-- Obtiene las 3 primeras filas de la tabla "users"
SELECT * FROM users LIMIT 3;

-- Obtiene las 2 primeras filas de la tabla "users" con email distinto a sara@gmail.com o edad igual a 15
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 15 LIMIT 2;
