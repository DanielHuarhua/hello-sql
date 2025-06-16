/*
ALIAS
Se utiliza para dar un nombre temporal a un atributo para que sea mas
entendible. Este alias solo existe mientras dure esa consulta
SELECT carac1 AS 'alias1', carac2 AS 'alias2' FROM users
*/

-- Establece el alias 'Fecha de inicio en programación' a la columna init_date
SELECT name, init_date AS 'Fecha de inicio en programación' FROM users WHERE name = 'Brais'

-- Consulta igual que la anterior. Representa la posibilidad de usar comillas dobles para cadenas
SELECT name, init_date AS "Fecha de inicio en programación" FROM users WHERE name = "Brais"
