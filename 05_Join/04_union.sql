/*
FULL JOIN
Combina todas las filas de ambas tablas, sin importar que haya coindicencia o no. Donde no 
hay coincidencia, los campos faltantes se llenan con NULL
SELECT columna1,columna2,...
FROM tabla1 (tabla izquierda)
FULL JOIN tabla2 (tabla derecha)
ON table1.key=table2.key;

OJO: MSQL NO SOPORTA FULL JOIN, EN SU LUGAR SE USA LEFT JOIN + UNION + RIGHT JOIN
*/
-----------------------------------------------------------------------------------------------------------
/*
UNION 
Combina los resultados de dos o mas consultas en un solo conjunto de resultados
SELECT columna1, columna2 FROM tabla1
UNION
SELECT columna1, columna2 FROM tabla2;
- Mismo número de columnas en todas las consultas.
- Tipos de datos compatibles en las columnas correspondientes.
- Orden de columnas debe coincidir.
UNION (elimina duplicados) UNION ALL (incluye duplicados)
*/
SELECT e.nombre AS empleado, d.nombre AS departamento
FROM empleados e
LEFT JOIN departamentos d ON e.departamento_id = d.id
UNION
SELECT e.nombre AS empleado, d.nombre AS departamento
FROM empleados e
RIGHT JOIN departamentos d ON e.departamento_id = d.id
