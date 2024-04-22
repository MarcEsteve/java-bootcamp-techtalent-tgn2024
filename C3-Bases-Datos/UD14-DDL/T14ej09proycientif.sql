CREATE DATABASE proycientif;
USE proycientif;

CREATE TABLE cientificos (
    dni VARCHAR(9) NOT NULL,
    nomapels NVARCHAR (255) NOT NULL,
    PRIMARY KEY(dni));

CREATE TABLE proyectos (
    id CHAR(4) NOT NULL,
    nombre NVARCHAR (255) NOT NULL,
    horas INT,
    PRIMARY KEY(id));

CREATE TABLE asignado (
    dni VARCHAR(9) NOT NULL,
    id CHAR(4) NOT NULL,
    PRIMARY KEY(dni, id),
    FOREIGN KEY (dni) 
    REFERENCES cientificos (dni) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    FOREIGN KEY (id) 
    REFERENCES proyectos (id) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE);
