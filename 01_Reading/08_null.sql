/*
NULL
Es un campo sin valor, es aquel que se dejo en blanco durante la creacion del registro
Los valores nulos no son comparables
En su lugar se usa IS NULL o IS NOT NULL
*/

-- Obtiene todos datos de la tabla "users" de la tabla "users" con email nulo
SELECT * FROM users WHERE email IS NULL;

-- Obtiene todos datos de la tabla "users" de la tabla "users" con email no nulo
SELECT * FROM users WHERE email IS NOT NULL;

-- Obtiene todos datos de la tabla "users" de la tabla "users" con email no nulo y edad igual a 15
SELECT * FROM users WHERE email IS NOT NULL AND age = 15;

/*
IFNULL
Lección 10.14: https://youtu.be/OuJerKzV5T0?t=10023
*/

-- Obtiene el nombre, apellido y edad de la tabla "users", y si la edad es nula la muestra como 0
SELECT name, surname, IFNULL(age, 0) AS age FROM users;
