-- Insertar 10 tuplas en la tabla 'cajeros'
INSERT INTO cajeros (nomapels) VALUES
('Juan Pérez'),
('María García'),
('Pedro Rodríguez'),
('Ana Martínez'),
('Luis González'),
('Laura Sánchez'),
('Carlos Fernández'),
('Sofía López'),
('Pablo Ruiz'),
('Elena Martín');

-- Insertar 10 tuplas en la tabla 'productos'
INSERT INTO productos (nombre, precio) VALUES
('Producto A', 10),
('Producto B', 20),
('Producto C', 15),
('Producto D', 30),
('Producto E', 25),
('Producto F', 18),
('Producto G', 22),
('Producto H', 35),
('Producto I', 28),
('Producto J', 40);

-- Insertar 10 tuplas en la tabla 'maquinas'
INSERT INTO maquinas (piso) VALUES
(1),
(2),
(1),
(3),
(2),
(1),
(3),
(2),
(1),
(3);

-- Insertar 10 tuplas en la tabla 'venta'
-- Se asignan aleatoriamente cajeros, máquinas y productos
INSERT INTO venta (cajero, maquina, producto) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);
