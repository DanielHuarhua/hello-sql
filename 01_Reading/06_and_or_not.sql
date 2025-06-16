/*
NOT, AND, OR
Operadores Logicos
NOT: Negacion
AND: Tiene que cumplirse todas las condiciones
OR: Basta que cumpla al menos una condicion
SELECT carac1,carac2,... FROM tabla WHERE condicion 1 AND|OR condicion 2 ...
*/

-- Obtiene todos datos de la tabla "users" con email distinto a sara@gmail.com
SELECT * FROM users WHERE NOT email = 'sara@gmail.com';

-- Obtiene todos datos de la tabla "users" con email distinto a sara@gmail.com y edad igual a 15
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' AND age = 15;

-- Obtiene todos datos de la tabla "users" con email distinto a sara@gmail.com o edad igual a 15
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 15;
