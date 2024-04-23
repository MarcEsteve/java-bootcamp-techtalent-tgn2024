-- Insertar 10 tuplas en la tabla 'cientificos'
INSERT INTO cientificos (dni, nomapels) VALUES
('12345678A', 'Juan Pérez Sánchez'),
('23456789B', 'María Gómez Martínez'),
('34567890C', 'Pedro Rodríguez López'),
('45678901D', 'Ana García Fernández'),
('56789012E', 'Luis Martínez Pérez'),
('67890123F', 'Laura Sánchez Gómez'),
('78901234G', 'Carlos Fernández Rodríguez'),
('89012345H', 'Sofía López Martínez'),
('90123456I', 'Pablo Pérez Rodríguez'),
('01234567J', 'Elena Martínez García');

-- Insertar 10 tuplas en la tabla 'proyectos'
INSERT INTO proyectos (id, nombre, horas) VALUES
('P001', 'Desarrollo de Software', 100),
('P002', 'Investigación Médica', 200),
('P003', 'Ingeniería Ambiental', 150),
('P004', 'Robótica Avanzada', 180),
('P005', 'Inteligencia Artificial', 220),
('P006', 'Nanotecnología', 120),
('P007', 'Bioinformática', 190),
('P008', 'Realidad Virtual', 160),
('P009', 'Exploración Espacial', 240),
('P010', 'Biotecnología', 170);

-- Insertar 10 tuplas en la tabla 'asignado'
-- Se asignan aleatoriamente científicos y proyectos
INSERT INTO asignado (dni, id) VALUES
('12345678A', 'P001'),
('23456789B', 'P002'),
('34567890C', 'P003'),
('45678901D', 'P004'),
('56789012E', 'P005'),
('67890123F', 'P006'),
('78901234G', 'P007'),
('89012345H', 'P008'),
('90123456I', 'P009'),
('01234567J', 'P010');
