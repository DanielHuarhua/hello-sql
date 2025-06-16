/*
HAVING
Filtra los resultados luego de agruparlos.
A diferencia de where, WHERE filtra las filas antes de la agregacion
HAVING filtra cada grupo resultante luego de aplicar su funcion de agregacion
*/

-- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users" mayor que 3
SELECT age,COUNT(age) FROM users GROUP BY age HAVING COUNT(age) > 3
-- Agrupumos las filas por la edad, y contamos cuantos elementos tiene cada grupo
-- Mostramos la edad y el numero de elementos del grupo solo si el grupo tiene mas de 3 elementos
