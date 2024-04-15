-- Consola
INSERT INTO autor VALUES (1,'Tolkien'); 
-- HeidiSQL
INSERT INTO autor (claveautor, nombre) VALUES (2, 'Autor3');
-- phpMyADmin
INSERT INTO autor (claveautor, nombre) VALUES (3, 'MyAdmin');

-- Más de un registro insertado
INSERT INTO autor VALUES 
(5,'jhjh'),
(4,'AutorConsola');
INSERT INTO ciudad2 VALUES ('Juanito', DEFAULT);
ALTER TABLE `ciudad2` DROP PRIMARY KEY;

INSERT INTO ciudad2 (población , nombre) VALUES 
('7000000','Madrid'),
('53500000','Paris'),
('7450000','Barlín');

INSERT INTO ciudad2 SET población='5665156' , nombre='Roma';

INSERT INTO ciudad2 (población , nombre) VALUES 
('7000dsd000','Madrid'),
('53500000','Pekin')
ON DUPLICATE KEY UPDATE población=VALUES(población);

UPDATE `ciudad2` SET `población` = '7200000' WHERE `ciudad2`.`clave` = 2;

UPDATE `ciudad2` SET `población` = población*1.1 ;

-- Actualizar el campo población en un 21% solo a Paris
UPDATE ciudad2 SET población = población*1.21 WHERE nombre='Paris';