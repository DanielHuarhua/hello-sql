/*
GROUP BY
Permite agrupar los resultados de una consulta segun un atributo y puedo usar funciones
de agregacion (suma,avg,count)
SELECT atributo,Func.Agreg(atributo) FROM tabla GROUP BY atributo
*/

-- Agrupa los resultados por edad diferente
SELECT MAX(age) FROM users GROUP BY age

-- Agrupa los resultados por edad diferente y cuenta cuantos registros existen de cada una
SELECT COUNT(age), age FROM users GROUP BY age
-- Hacemos grupos por edades, y mostramos que edad tienen cada grupo y cuantos con la misma edad hay

-- Agrupa los resultados por edad diferente, cuenta cuantos registros existen de cada una y los ordena
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC

-- Agrupa los resultados por edad diferente mayor de 15, cuenta cuantos registros existen de cada una y los ordena
SELECT COUNT(age), age FROM users WHERE age > 15 GROUP BY age ORDER BY age ASC
