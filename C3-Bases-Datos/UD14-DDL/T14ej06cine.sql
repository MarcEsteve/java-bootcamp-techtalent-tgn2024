CREATE DATABASE cine;
USE cine;

CREATE TABLE peliculas (
    codigo INT AUTO_INCREMENT ,
    nombre VARCHAR (100) NOT NULL,
    caledad INT NOT NULL,
    PRIMARY KEY(codigo));

CREATE TABLE salas (
    codigo INT AUTO_INCREMENT,
    nombre VARCHAR (100) NOT NULL,
    pelicula INT,
    PRIMARY KEY(codigo),
    FOREIGN KEY (pelicula) 
    REFERENCES peliculas (codigo) 
    ON DELETE SET NULL 
    ON UPDATE CASCADE);