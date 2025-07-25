/*
LIKE
Se utiliza para buscar un patron especifico en una columa. Se usa los comodines:
%: Representa cero, uno o varios caracteres comdojnes
-: Representa un solo caracter comodin
SELECT carac1,carac2,... FROM tabla WHERE caracteristica LIKE 'patron'
*/

-- Obtiene todos datos de la tabla "users" que contienen un email con el texto "gmail.com" en su parte final
SELECT * FROM users WHERE email LIKE '%gmail.com';

-- Obtiene todos datos de la tabla "users" que contienen un email con el texto "sara" en su parte inicial
SELECT * FROM users WHERE email LIKE 'sara%';

-- Obtiene todos datos de la tabla "users" que contienen una @ en su email
SELECT * FROM users WHERE email LIKE '%@%';
