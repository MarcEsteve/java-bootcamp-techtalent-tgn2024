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
-- 1.3 articulos con precio menor o igual a 200
SELECT nombre FROM articulos WHERE precio <= 200;
-- 1.4 AS para el alias y ROUND  para redondear entre 60 y 120
SELECT * FROM articulos WHERE precio BETWEEN 60 AND 120;
SELECT * FROM articulos WHERE precio >= 60 AND precio <=120;
-- 1.5 Precios en pesetas
SELECT nombre, precio, ROUND(precio * 166.386) AS `Precio Pesetas` FROM articulos;
-- 1.6 Precio medio de articulos
SELECT AVG(precio) AS `Precio Medio` FROM articulos;
-- 1.7
SELECT AVG(precio) AS `Precio Medio` FROM articulos WHERE fabricante = 2;
-- 1.8
SELECT COUNT(articulos) AS `Número de articulos` FROM articulos WHERE precio >= 180;
-- 1.9
SELECT Nombre, precio FROM articulos WHERE precio >= 180 ORDER BY precio DESC, Nombre ASC;
-- 1.10