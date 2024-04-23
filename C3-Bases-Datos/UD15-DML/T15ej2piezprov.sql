-- Insertar 10 tuplas en la tabla 'piezas'
INSERT INTO piezas (nombre) VALUES
('Pieza A'),
('Pieza B'),
('Pieza C'),
('Pieza D'),
('Pieza E'),
('Pieza F'),
('Pieza G'),
('Pieza H'),
('Pieza I'),
('Pieza J');

-- Insertar 10 tuplas en la tabla 'proveedores'
INSERT INTO proveedores (nombre) VALUES
('Proveedor 1'),
('Proveedor 2'),
('Proveedor 3'),
('Proveedor 4'),
('Proveedor 5'),
('Proveedor 6'),
('Proveedor 7'),
('Proveedor 8'),
('Proveedor 9'),
('Proveedor 10');

-- Insertar 10 tuplas en la tabla 'suministra'
-- Se asignan aleatoriamente piezas y proveedores, y se asigna un precio aleatorio entre 1 y 100
INSERT INTO suministra (idpiez, idprov, precio) VALUES
(1, 1, 10.50),
(2, 2, 20.25),
(3, 3, 15.75),
(4, 4, 30.00),
(5, 5, 25.50),
(6, 6, 18.75),
(7, 7, 22.00),
(8, 8, 35.25),
(9, 9, 28.50),
(10, 10, 40.00);
