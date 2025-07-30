/*
TIPOS DE RELACIONES

PRIMARY KEY: Es la identificacion unica de cada fila en una tabla. Debe ser unico y no nulo
FOREIGN KEY: Una columna que que apunta a la clave primaria de otra tabla. Crea relacion entre tablas.
*/
----------------------------------------------------------------------------------------------
/*
Relación 1:1 (uno a uno)
Relación que indica que un registro en la tabla A se relaciona 
con un sólo registro en la tabla B y viceversa.
*/
-- El campo user_id de la tabla "dni" es clave foránea de la clave primaria user_id de la tabla "users"
-- (Un usuario sólo puede tener un DNI. Un DNI sólo puede estar asociado a un usuario)
CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE dni (
    id INT PRIMARY KEY,
    numero VARCHAR(10) UNIQUE,  -- Para garantizar 1:1 (El DNI esta asociado solo a un usuario)
    usuario_id INT UNIQUE,      -- FK con UNIQUE (Un usuario solo puede tener un DNI)
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);
------------------------------------------------------------------------------------
/*
Relación 1:N (uno a muchos)
Relación que indica que un registro en la tabla A puede tener varios registros relacionados en la
tabla B, pero un registro en la tabla B se relaciona con un sólo registro en la tabla A.
*/
CREATE TABLE empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(50)
);
CREATE TABLE departamentos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE, --Un departamento esta asociado a un solo empleado
    user_id INT, --Un empleado puede estar en varios departamentos
    FOREIGN KEY (user_id) REFERENCES empleados(id)
);
/*
--------------------------------------------------------------------------------
Relación N:M (muchos a muchos)
Relación que indica que un un registro en la tabla A puede relacionarse
con varios registros en la tabla B y viceversa.
Requiere una tabla intermedia o de unión para establecer la relación.
*/
-- Tablas principales
CREATE TABLE departamentos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(50)
);

-- Tabla intermedia (N:M)
CREATE TABLE empleado_departamento (
    empleado_id INT, --NO UNIQUE: UN EMPLEADO PUEDE ESTAR EN VARIAS AREAS
    departamento_id INT, --NO UNIQUE: EN UN AREA PUEDEN ESTAR VARIOS EMPLEADOS
    PRIMARY KEY (empleado_id, departamento_id),  -- PK compuesta
    FOREIGN KEY (empleado_id) REFERENCES empleados(id),
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);
-------------------------------------------------------------------------------------------------------------
/*
Relación de Auto-Referencia
Relación que indica que un un registro en la tabla A puede 
relacionarse con otro registro de la tabla A.
*/

/*
INSERT y UPDATE para trabajar con JOIN
*/

/*
1:1
*/

-- "dni" (Relación 1:1)
INSERT INTO dni (dni_number, user_id) VALUES (11111111, 1);
INSERT INTO dni (dni_number, user_id) VALUES (22222222, 2);
INSERT INTO dni (dni_number, user_id) VALUES (33333333, 3);
INSERT INTO dni (dni_number) VALUES (44444444);

/*
1:N
*/

-- "companies" y "users"  (Relación 1:N)
INSERT INTO departamento(nombre,id) VALUES (Lima,'Daniel')
INSERT INTO departamento(nombre,id) VALUES (Huanuco,'Daniel')
INSERT INTO departamento(nombre,id) VALUES (Ayacucho,'Luis')
/*
N:M
Lección 16.3: https://youtu.be/OuJerKzV5T0?t=15474
*/

-- "languages" y "users_languages"  (Relación N:M)
INSERT INTO empleado_departamento (user_id, language_id) VALUES (1,3);
INSERT INTO empleado_departamento (user_id, language_id) VALUES (1,2);
INSERT INTO empleado_departamento (user_id, language_id) VALUES (1,5);
INSERT INTO empleado_departamento (user_id, language_id) VALUES (2,4);
INSERT INTO empleado_departamento (user_id, language_id) VALUES (2,5);
