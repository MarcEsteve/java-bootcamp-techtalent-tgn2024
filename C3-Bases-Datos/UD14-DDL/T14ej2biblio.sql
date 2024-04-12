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