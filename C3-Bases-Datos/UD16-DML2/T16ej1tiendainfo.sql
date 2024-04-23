-- Insertar 10 tuplas en la tabla 'fabricantes'
INSERT INTO fabricantes (nombre) VALUES
('Fabricante A'),
('Fabricante B'),
('Fabricante C'),
('Fabricante D'),
('Fabricante E'),
('Fabricante F'),
('Fabricante G'),
('Fabricante H'),
('Fabricante I'),
('Fabricante J');

-- Insertar 10 tuplas en la tabla 'articulos'
-- Se asignan aleatoriamente fabricantes y precios
INSERT INTO articulos (nombre, precio, fabricante) VALUES
('Artículo 1', 10.50, 1),
('Artículo 2', 20.25, 2),
('Artículo 3', 15.75, 3),
('Artículo 4', 30.00, 4),
('Artículo 5', 25.50, 5),
('Artículo 6', 18.75, 6),
('Artículo 7', 22.00, 7),
('Artículo 8', 35.25, 8),
('Artículo 9', 28.50, 9),
('Artículo 10', 40.00, 10);

-- 1.1 nombres de los productos de la tienda
SELECT nombre FROM articulos;
-- 1.2 nombres y precio de los productos de la tienda
SELECT nombre, precio FROM articulos;
SELECT nombre FROM articulos WHERE precio <= 200;
-- AS para el alias y ROUND  para redondear
SELECT * FROM articulos WHERE precio BETWEEN 60 AND 120;
SELECT nombre, precio, ROUND(precio * 166.386) AS `Precio Pesetas` FROM articulos;
