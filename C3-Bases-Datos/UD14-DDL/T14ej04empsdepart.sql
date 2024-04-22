CREATE DATABASE empleadosdepartamentos;
USE empleadosdepartamentos;

CREATE TABLE departamentos (
    codigo INT AUTO_INCREMENT,
    nombre NVARCHAR(100) NOT NULL,
    presupuesto INT,
    PRIMARY KEY (codigo));

CREATE TABLE empleados (
    dni VARCHAR(9) NOT NULL,
    nombre NVARCHAR(100) NOT NULL,
    apellidos NVARCHAR(255),
    departamento INT,
    PRIMARY KEY (dni),
    FOREIGN KEY (departamento) 
    REFERENCES departamentos (codigo) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE);