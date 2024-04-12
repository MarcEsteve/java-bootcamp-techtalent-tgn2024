CREATE DATABASE biblio;
USE biblio;

CREATE TABLE editorial (
    claveditorial SMALLINT NOT NULL,
    nombre VARCHAR(60),
    direccion VARCHAR(60),
    telefono VARCHAR(15),
    PRIMARY KEY (claveditorial));

CREATE TABLE tema (
    clavetema SMALLINT NOT NULL,
    nombre VARCHAR(40),
    PRIMARY KEY (clavetema));

CREATE TABLE autor (
    claveautor SMALLINT NOT NULL,
    nombre VARCHAR(60),
    PRIMARY KEY (claveautor));

CREATE TABLE socio (
    clavesocio SMALLINT NOT NULL,
    nombre VARCHAR(60),
    direccion VARCHAR(60),
    telefono VARCHAR(15),
    categoria CHAR,
    PRIMARY KEY (clavesocio));

CREATE TABLE libro (
        clavelibro INT NOT NULL, 
        titulo VARCHAR(60), 
        idioma VARCHAR(15), 
        formato VARCHAR(15),    
        claveditorial SMALLINT, 
    PRIMARY KEY (clavelibro), 
    KEY (claveditorial),
    FOREIGN KEY (claveditorial) 
    REFERENCES editorial (claveditorial) 
    ON DELETE SET NULL
    ON UPDATE CASCADE);

CREATE TABLE ejemplar (
        claveejemplar INT NOT NULL, 
        clavelibro INT NOT NULL,
        numerorden SMALLINT NOT NULL,
        edicion SMALLINT, 
        ubicacion VARCHAR(15),
        categoria CHAR, 
    PRIMARY KEY (claveejemplar), 
    KEY (clavelibro),
    FOREIGN KEY (clavelibro) 
    REFERENCES libro (clavelibro) 
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE prestamo ( 
        clavesocio INT,
        claveejemplar INT,
        numerorden SMALLINT,
        fechaprestamo DATE NOT NULL,
        fechadevolucion DATE DEFAULT NULL,
        notas BLOB,
        edicion SMALLINT, 
        ubicacion VARCHAR(15),
        categoria CHAR, 
    PRIMARY KEY (claveprestamo), 
    KEY (clavelibro),
    FOREIGN KEY (clavelibro) 
    REFERENCES libro (clavelibro) 
    ON DELETE CASCADE
    ON UPDATE CASCADE);