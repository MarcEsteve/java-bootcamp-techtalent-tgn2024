CREATE DATABASE biblio;
USE biblio;

CREATE TABLE editorial (
    claveditorial SMALLINT NOT NULL,
    nombre VARCHAR(60),
    direccion VARCHAR(60),
    telefono VARCHAR(15),
    PRIMARY KEY (claveditorial));