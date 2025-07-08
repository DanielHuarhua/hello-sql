/*
DELETE
Ellmina registros existentes de una tabla
Se debe usar con una condicion para especificar que registros deben eliminarse,
de lo contrario se eliminaran todos los registros
DELETE FROM tabla WHERE condicion
*/

-- Elimina el registro de la tabla "users" con identificador igual a 11
DELETE FROM users WHERE user_id = 11;
