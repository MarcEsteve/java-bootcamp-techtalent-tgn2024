CREATE DATABASE directores_despachos;
USE directores_despachos;
CREATE TABLE despachos 
    (num INT,
    capacidad INT NOT NULL,
    PRIMARY KEY (num));

CREATE TABLE directores
    (DNI VARCHAR(9),
    NomApels VARCHAR(255),
    DNIJefe VARCHAR(9) NOT NULL,
    despacho INT NOT NULL,
    PRIMARY KEY (DNI),
    FOREIGN KEY (DNIJefe) 
    REFERENCES directores(DNI)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (despacho) 
    REFERENCES despachoS(num)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

-- Le añadimos AUTO_INCREMENT
ALTER TABLE despachos CHANGE num num INT(11) NOT NULL AUTO_INCREMENT;