/*
INSERT
Se utiliza para insertar nuevos registros en una tabla
*/

-- Inserta un registro con identificador, nombre y apellido en la tabla "users"
-- INSERT INTO tabla (carac1,carac2,carac3) VALUES (value1,value2,value3)
INSERT INTO users (user_id, name, surname) VALUES (8, 'María', 'López')

-- Inserta un registro con nombre y apellido en la tabla "users"
INSERT INTO users (name, surname) VALUES ('Paco', 'Pérez')

-- Inserta un registro con identificador no correlativo, nombre y apellido en la tabla "users"
-- Yo como administrador de base de datos puedo elegir cualquier numero de registro que desee crear
INSERT INTO users (user_id, name, surname) VALUES (11, 'El', 'Merma')

-- Para agregar valores a todas las columnas de la tabla, no es necesario especificar el nombre de cada columna
-- INSERT INTO tabla VALUES (valor1,valor2,...) Tener cuidado que los valores coincidan con su columna
INSERT INTO users VALUES (11,'Juana','Velasquez',19,'2011-11-07');
