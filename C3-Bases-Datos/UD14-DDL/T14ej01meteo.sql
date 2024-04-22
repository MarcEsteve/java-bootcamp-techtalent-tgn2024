CREATE DATABASE meteo;
USE meteo;
CREATE TABLE estacion (
    id MEDIUMINT UNSIGNED NOT NULL,
    lat VARCHAR(14) NOT NULL,
    longitud VARCHAR(15) NOT NULL,
    alt MEDIUMINT NOT NULL,
    PRIMARY KEY (id));

CREATE TABLE muestra (
    idestacion MEDIUMINT UNSIGNED NOT NULL,
    fecha DATE NOT NULL,
    tempmin TINYINT,
    tempmax TINYINT,
    precipita SMALLINT UNSIGNED,
    hummin TINYINT UNSIGNED,
    hummax TINYINT UNSIGNED,
    velmin SMALLINT UNSIGNED,
    velmax SMALLINT UNSIGNED,
    KEY (idestacion), FOREIGN KEY (idestacion) REFERENCES estacion (id) ON DELETE NO ACTION ON UPDATE CASCADE);