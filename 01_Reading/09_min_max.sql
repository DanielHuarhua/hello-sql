/*
MIN, MAX
Retorna el valor mas grande o mas pequeño de una columna
SELECT MIN(columna)|MAX(columna) FROM tabla WHERE condicion
*/

-- Obtiene el valor menor del campo edad de la tabla "users"
Select MIN(age) FROM users;

-- Obtiene el valor mayor del campo edad de la tabla "users"
Select MAX(age) FROM users;
