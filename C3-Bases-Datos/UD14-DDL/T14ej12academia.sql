CREATE DATABASE academia;
USE academia;

CREATE TABLE profesores(
    dni VARCHAR(9),
    nombre VARCHAR (255),
    apel1 VARCHAR (255),
    apel2 VARCHAR (255),
    direccion VARCHAR(100),
    titulacion VARCHAR(50),
    sueldo SMALLINT NOT NULL,
    UNIQUE (nombre, apel1, apel2),
    PRIMARY KEY (dni));

CREATE TABLE cursos(
    cod INT,
    nombre VARCHAR(100),
    horas INT NOT NULL,
    fechainicio DATE,
    fechafin DATE,
    maxalumn INT,
    dni varchar(9),
    PRIMARY KEY (cod),
    UNIQUE (nombre),
    CONSTRAINT fechacurso CHECK (fechainicio<fechafin),
    FOREIGN KEY (dni) 
    REFERENCES profesores (dni)
    ON DELETE CASCADE 
    ON UPDATE CASCADE);

CREATE TABLE alumnos(
    nombre VARCHAR (255),
    apel1 VARCHAR (255),
    apel2 VARCHAR (255),
    dni VARCHAR(9),
    direccion VARCHAR(100),
    nace DATE,
    sexo CHAR CHECK (sexo IN ('H', 'M')),
    codalum INT,
    UNIQUE (nombre),
    PRIMARY KEY (dni),
    FOREIGN KEY (codalum) 
    REFERENCES cursos (cod)
    ON DELETE CASCADE 
    ON UPDATE CASCADE);