/*
1. EN LA CLAUSULA SELECT:
Se usan para devolver un único valor (escalar) como columna adicional.
Deben retornar solo una fila y una columna.
*/
SELECT user_id,name,age,(SELECT dni_number FROM dni WHERE user_id=users.user_id ) AS DNI FROM users 
WHERE age >14;
/*
---------------------------------------------------------------------------------------------
2. EN LA CLAUSULA WHERE:
Se usan para filtrar registros basados en resultados de otra consulta.
Pueden retornar una fila (=, >, <) o múltiples filas (IN, EXISTS).
*/
SELECT * FROM users WHERE age > (SELECT avg(age) FROM USERS);
SELECT user_id,dni_number FROM dni WHERE user_id IN (SELECT user_id FROM users WHERE age>14);
-- Una primera sub-consulta retorna uno o varios resultados, luego la consulta principal 
usara este valor o valores para filtrar nuevamente con los resultados de la sub-consulta
---------------------------------------------------------------------------------------------
/*
3. EN LA CLAUSULA FROM:
La subconsulta dentro de la clausula FROM actua como una tabla temporal que se usa en la consulta principal.
Debe tener un alias.
*/
SELECT name,avg(age) as 'Edad Promedio' FROM (select name,age FROM users WHERE age>14) 
as sub GROUP BY name;
-- Crea primero una tabla auxiliar que será mas ajustada a lo que deseo, para que mi consulta principal 
trabaje con esa tabla derivada
-----------------------------------------------------------------------------------------------
/*
4. EN LA CLAUSULA HAVING:
Se usan para aplicar condiciones sobre grupos o filtrar grupos después de un GROUP BY
*/
SELECT name, AVG(age) as 'Edad Promedio' FROM users GROUP BY name
HAVING AVG(age)> (select AVG(age) FROM users);
------------------------------------------------------------------------------------------------
/*
5. EN SENTENCIAS INSERT,UPDATE,DELATE
Para generar datos dinámicos
*/
INSERT INTO new_users SELECT * FROM users WHERE age > (select AVG(age) FROM users); 

UPDATE dni SET edad = 'Superior al Promedio' WHERE user_id IN (SELECT user_id FROM users WHERE
(SELECT AVG(age) FROM users)<age);

DELETE FROM dni WHERE user_id IN (SELECT user_id FROM users WHERE
(SELECT AVG(age) FROM users)>age);

