/*
ALTER TABLE
Realiza modificaciones en las columnas de una tabla
*/

/*
ADD
Agrega nuevas columnas a una tabla existente
*/
ALTER TABLE persons8
ADD surname varchar(150);

/*
RENAME COLUMN
Cambia el nombre de la columna de una tabla existente
*/
ALTER TABLE persons8
RENAME COLUMN surname TO `Nombre de Columna`; -- Para usar nombres con espacios incluidos usar el simbolo ``

/*
MODIFY COLUMN
Modifica las caracteristicas existentes de una columna en una tabla
*/
ALTER TABLE persons8
MODIFY COLUMN description varchar(250);

/*
DROP COLUMN
Elimina una columna de una tabla existente
*/
ALTER TABLE persons8
DROP COLUMN description;
