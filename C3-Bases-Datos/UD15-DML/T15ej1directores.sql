INSERT INTO despachos (capacidad) VALUES 
    (3),(5),(8),(16),(4),(7),(9),(3),(11),(33);
-- Dos ventajas del auto_increment
-- 1. Eficiencia en la insercción deatos en la instrucción SQL
-- 2. Elimina la probabilidad de los errores
-- INSERT INTO despachos VALUES (NULL,3),(NULL,5),(NULL,8),(NULL,16),(NULL,4),(NULL,7),(NULL,9),(3),(NULL,11),(NULL,33);

-- Inicial prueba
INSERT INTO `directores` (`DNI`, `NomApels`, `DNIJefe`, `despacho`) VALUES ('12345', 'Marc Esteve Garcia', NULL, '3');

INSERT INTO directores (DNI, NomApels, DNIJefe, despacho) VALUES 
    ('3333', 'Garcia', NULL, '2'),
    ('2345', 'Esteve', NULL, '4'),
    ('12345645', 'Dani', NULL, '5'),
    ('657', 'Juan', NULL, '10'),
    ('12376745', 'Pedro', NULL, '9'),
    ('878787', 'Pepe', NULL, '9'),
    ('444', 'Mar', NULL, '7'),
    ('777', 'Marcos', NULL, '6'),
    ('999', 'Marquitos', NULL, '8');

-- UPDATE posterior a la insercción inicial
UPDATE `directores` SET `DNIJefe` = '444' WHERE `directores`.`DNI` = '777';