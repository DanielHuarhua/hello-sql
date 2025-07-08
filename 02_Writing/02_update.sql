/*
UPDATE
Se utiliza para modificar registros existentes en la tabla
Normalmente se debe utilizar un filtro Where para especificar que registro modificar,
de lo contrario se actualizaran todos los registros
UPDATE table SET carac1=value1,carac2=value2,... WHERE condition 
*/

-- Estable el valor 21 para la edad del registro de la tabla "users" con identificador igual a 11
UPDATE users SET age = '21' WHERE user_id = 11

-- Estable el valor 20 para la edad del registro de la tabla "users" con identificador igual a 11
UPDATE users SET age = '20' WHERE user_id = 11

-- Estable edad y una fecha para registro de la tabla "users" con identificador igual a 11
UPDATE users SET age = 20, init_date = '2020-10-12' WHERE user_id = 11
