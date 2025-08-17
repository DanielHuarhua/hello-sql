/*
1. EN LA CLAUSULA SELECT:
Se usan para devolver un único valor (escalar) como columna adicional.
Deben retornar solo una fila y una columna.
*/
SELECT user_id,name,age,(SELECT dni_number FROM dni WHERE user_id=users.user_id ) AS DNI FROM users 
WHERE age >14;
/*
---------------------------------------------------------------------------------------------
1. EN LA CLAUSULA WHERE:
Se usan para filtrar registros basados en resultados de otra consulta.
Pueden retornar una fila (=, >, <) o múltiples filas (IN, EXISTS).
*/
SELECT * FROM users WHERE age > (SELECT avg(age) FROM USERS);
SELECT user_id,dni_number FROM dni WHERE user_id IN (SELECT user_id FROM users WHERE age>14);
-- Una primera sub-consulta retorna uno o varios resultados, luego la consulta principal 
usara este valor o valores para filtrar nuevamente con los resultados de la sub-consulta
---------------------------------------------------------------------------------------------
/*
2. EN LA CLAUSULA FROM:
La subconsulta dentro de la clausula FROM actua como una tabla temporal que se usa en la consulta principal.
Debe tener un alias.
*/
