INSERT INTO facultades (nombre)
VALUES
("Facultad de Ciencias"),
("Facultad de Humanidades"),
("Facultad de Ciencias Sociales"),
("Facultad de Medicina"),
("Facultad de Ingeniería"),
("Facultad de Economía"),
("Facultad de Derecho"),
("Facultad de Ciencias de la Salud"),
("Facultad de Ciencias de la Tierra"),
("Facultad de Ciencias de la Vida");

INSERT INTO investigadores (dni, nomapels, codfac)
VALUES
("12345678", "Juan Pérez", 1),
("23456789", "María González", 2),
("34567890", "Pedro Sánchez", 3),
("45678901", "Ana López", 4),
("56789012", "José Martínez", 5),
("67890123", "Luis Hernández", 6),
("78901234", "Eva García", 7),
("89012345", "Carlos Díaz", 8),
("90123456", "Sofía Rodríguez", 9),
("01234567", "Francisco Moreno", 10);

INSERT INTO equipos (numserie, nombre, codfac)
VALUES
("E01", "Equipo de Investigación en Ciencias de la Salud", 1),
("E02", "Equipo de Investigación en Ciencias de la Tierra", 2),
("E03", "Equipo de Investigación en Ciencias de la Vida", 3),
("E04", "Equipo de Investigación en Ingeniería", 4),
("E05", "Equipo de Investigación en Economía", 5),
("E06", "Equipo de Investigación en Derecho", 6),
("E07", "Equipo de Investigación en Ciencias Sociales", 7),
("E08", "Equipo de Investigación en Ciencias de la Salud", 8),
("E09", "Equipo de Investigación en Ciencias de la Tierra", 9),
("E10", "Equipo de Investigación en Ciencias de la Vida", 10);

INSERT INTO reserva (dni, numserie, comienzo, fin)
VALUES
("12345678", "E01", "2022-01-01", "2022-01-31"),
("23456789", "E02", "2022-02-01", "2022-02-28"),
("34567890", "E03", "2022-03-01", "2022-03-31"),
("45678901", "E04", "2022-04-01", "2022-04-30"),
("56789012", "E05", "2022-05-01", "2022-05-31"),
("67890123", "E06", "2022-06-01", "2022-06-30"),
("78901234", "E07", "2022-07-01", "2022-07-31"),
("89012345", "E08", "2022-08-01", "2022-08-31"),
("90123456", "E09", "2022-09-01", "2022-09-30"),
("01234567", "E10", "2022-10-01", "2022-10-31");