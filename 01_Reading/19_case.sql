/*
CASE
Revisa multiples condiciones y retorna un valor cuando se cumple cierta condicion
SELECT carac1,carac2,... , (Importante poner una coma al final)
	WHEN condicion1 THEN 'instruccion1'
	WHEN condicion2 THEN 'instruccion2'
	ELSE 'CONDICION FINAL'
END AS 'alias'
FROM tabla

*/

-- Obtiene todos los datos de la tabla "users" y establece condiciones de visualización de cadenas de texto según el valor de la edad 
SELECT *,
CASE 
	WHEN age > 18 THEN 'Es mayor de edad'
    WHEN age = 18 THEN 'Acaba de cumplir la mayoría de edad'
    ELSE 'Es menor de edad'
END AS '¿Es mayor de edad?'
FROM users;

-- Obtiene todos los datos de la tabla "users" y establece condiciones de visualización de valores booleanos según el valor de la edad 
SELECT *,
CASE 
	WHEN age > 17 THEN True
    ELSE False
END AS '¿Es mayor de edad?'
FROM users;
