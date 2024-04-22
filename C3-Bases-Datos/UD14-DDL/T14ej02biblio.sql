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
    claveautor INT NOT NULL,
    nombre VARCHAR(60),
    PRIMARY KEY (claveautor));

CREATE TABLE socio (
    clavesocio INT NOT NULL,
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
        clavejemplar INT NOT NULL, 
        clavelibro INT NOT NULL,
        numerorden SMALLINT NOT NULL,
        edicion SMALLINT, 
        ubicacion VARCHAR(15),
        categoria CHAR, 
    PRIMARY KEY (clavejemplar), 
    KEY (clavelibro),
    FOREIGN KEY (clavelibro) 
    REFERENCES libro (clavelibro) 
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE escritopor (
      clavelibro INT NOT NULL,
      claveautor INT NOT NULL,
      FOREIGN KEY (clavelibro)
      REFERENCES libro (clavelibro)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
      FOREIGN KEY (claveautor)
      REFERENCES autor (claveautor)
      ON DELETE CASCADE
      ON UPDATE CASCADE);

CREATE TABLE tratasobre (
      clavelibro INT,
      clavetema SMALLINT NOT NULL,
      FOREIGN KEY (clavelibro)
      REFERENCES libro (clavelibro)
      ON DELETE SET NULL
      ON UPDATE CASCADE,
      FOREIGN KEY (clavetema)
      REFERENCES tema (clavetema)
      ON DELETE CASCADE
      ON UPDATE CASCADE);

CREATE TABLE prestamo (
      clavesocio INT,
      clavejemplar INT,
      numerorden SMALLINT,
      fechaprestamo DATE NOT NULL,
      fechadevolucion DATE DEFAULT NULL,
      notas BLOB,
      KEY (clavesocio),
      FOREIGN KEY (clavesocio) 
      REFERENCES socio (clavesocio)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
      KEY (clavejemplar),
      FOREIGN KEY (clavejemplar) 
      REFERENCES ejemplar (clavejemplar)
      ON DELETE CASCADE
      ON UPDATE CASCADE);