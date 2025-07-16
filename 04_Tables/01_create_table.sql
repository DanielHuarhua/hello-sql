/*
CREATE TABLE
Se utiliza para crear una nueva tabla en una base de datos
*/

-- Crea una tabla llamada "persons" con nombre de columna (atributos) de tipo int, varchar y date
CREATE TABLE persons (
    id int, -- Se debe especificar el tipo de dato
    name varchar(100), -- Se debe especificar la cantidad de Caracteres
    age int, -- Cada atributo se separa por una coma 
    email varchar(50),
    created date -- El ultimo atributo no se agrega coma
);

/*
CONSTRAINTS: Restricciones
Permiten poner condiciones a los atributos
*/

/*
NOT NULL
Obliga a que el campo id posea siempre un valor no nulo
*/
CREATE TABLE persons2 (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created date
);

/*
UNIQUE
Garantiza que los valores en una columna sean unicos
*/
CREATE TABLE persons3 (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id), -- Si deseo añadir mas columnas con registros unicos, debo definirlo uno por uno
    UNIQUE (name)
);

/*
PRIMARY KEY
Sirve como identificador para futuras relaciones. Será Unico y No Nulo
*/
CREATE TABLE persons4 (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id,name) -- Si quiero definir varias columnas como PRIMARY KEY, puedo añadirlas dentro del mismo argumento
);

/*
CHECK
Garantiza que todos los valores en una columna cumplan con una condicion especifica
*/
CREATE TABLE persons5 (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

/*
DEFAULT
Establece un valor por defecto a una columna cuando no se especifica durante la insercion de datos.
*/
CREATE TABLE persons6 (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT (CURRENT_DATE), -- CURRENT_DATE: Retorna la fecha actual
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

/*
AUTO INCREMENT
Incrementar automaticamente el valor de una columna si esta no ha sido especificada
*/
CREATE TABLE persons7 (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);
