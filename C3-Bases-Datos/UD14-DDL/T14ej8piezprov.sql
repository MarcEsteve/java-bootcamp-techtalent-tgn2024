CREATE DATABASE piezprov;
USE piezprov;

CREATE TABLE piezas (
    idpiez INT AUTO_INCREMENT ,
    nombre VARCHAR (100) NOT NULL,
    PRIMARY KEY(idpiez));

CREATE TABLE proveedores (
    idprov INT AUTO_INCREMENT ,
    nombre VARCHAR (100) NOT NULL,
    PRIMARY KEY(idprov));

CREATE TABLE suministra (
    idpiez INT,
    idprov INT,
    precio FLOAT NOT NULL,
    PRIMARY KEY(idpiez,idprov),
    FOREIGN KEY (idpiez) 
    REFERENCES piezas (idpiez) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    FOREIGN KEY (idprov) 
    REFERENCES proveedores (idprov) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE);