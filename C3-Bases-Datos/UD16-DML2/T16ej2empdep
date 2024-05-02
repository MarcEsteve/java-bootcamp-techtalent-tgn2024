-- Ejercicio 2 , primero rellenamos los datos de la tabla

INSERT INTO departamentos (nombre, presupuesto) VALUES 
('Marketing', 10000),
('Finanzas', 12000),
('Recursos Humanos', 11000),
('Ventas', 13000),
('Tecnología', 10500),
('Logística', 12500),
('Soporte', 11500),
('Desarrollo', 13500),
('Calidad', 14000),
('Administración', 14500);

INSERT INTO empleados (dni, nombre, apellidos, departamento) VALUES 
('11111111', 'María', 'González', 1),
('22222222', 'Carlos', 'Ruiz', 2),
('33333333', 'Laura', 'Pérez', 3),
('44444444', 'Pedro', 'Sánchez', 4),
('55555555', 'Ana', 'López', 5),
('66666666', 'Javier', 'García', 6),
('77777777', 'Isabel', 'Martínez', 7),
('88888888', 'Sergio', 'Fernández', 8),
('99999999', 'Elena', 'Díaz', 9),
('10101010', 'Ricardo', 'Torres', 10);

--2.1
SELECT apellidos FROM empleados;   

--2.2 Obtener los apellidos de los empleados sin repeticiones
SELECT DISTINCT apellidos FROM empleados;

SELECT `apellidos` FROM `empleados` GROUP BY apellidos;

--2.3 Obtener todos los datos de los empleados que se apellidan 'López'
SELECT * FROM empleados WHERE apellidos = 'López'; 

/* Obtener todos los datos de los empleados que se apellidan 'López' 
 (usamos LIKE '%string%' porque tengo 2 apellidos en la columna de apellidos
 asi busco la cadena 'López' en la cadena 'Apellido1 Apellido2' 
 Si Apellido1 o Apellido2 = la cadena buscada, aparecerá en la consulta)
 La barra baja _ para López con acento o Lopez sin acento */
SELECT * FROM empleados WHERE apellidos LIKE '%L_pez%';

-- 2.4 Obtener todos los datos de los empleados que se apellidan 'López' Obtener y los que se apellidan 'Pérez'.
SELECT * FROM empleados WHERE apellidos = 'López' OR apellidos = 'Pérez'; 

-- 2.5 
SELECT * FROM empleados WHERE departamento = 14; 
-- No tengo valores cambiaria el número de departamento o insertaria datos para el departamento 14

-- 2.6
SELECT * FROM empleados WHERE departamento IN (37, 77);
-- SELECT * FROM empleados WHERE departamento=37 OR departamento=77

--2.7
SELECT * FROM empleados
WHERE apellidos LIKE 'P%';

---2.8 Suma de presupuestos de departamentos
SELECT SUM(presupuesto) AS "Suma de presupuestos" FROM departamentos;

--2.9 
SELECT departamento, COUNT(*) AS "Número de empleados" FROM empleados GROUP by departamento;

/*
2.10. Obtener un listado completo de empleados, incluyendo por
cada empleado los datos del empleado y de su departamento
*/

SELECT * FROM empleados;

-- 2.11

SELECT empleados.nombre, empleados.apellidos, departamentos.nombre, departamentos.presupuesto 
FROM empleados e INNER JOIN departamentos d 
ON e.departamento = d.codigo;

-- Muéstrame los empleados que NO estan en ningún departamento

SELECT empleados.nombre FROM empleados LEFT JOIN departamentos 
ON e.departamento = d.codigo
WHERE empleados.departamento IS NULL;

/*
2.12.Obtener los nombres y apellidos de los empleados que trabajen en departamentos cuyo presupuesto sea mayor de 60.000 €.
En mis datos de mi DB no habia ninguno, modifico a >=12000
*/

SELECT e.nombre, e.apellidos 
FROM empleados e INNER JOIN departamentos d 
ON e.departamento = d.codigo
WHERE d.presupuesto >= 12000;

--2.13.
SELECT * FROM departamentos
WHERE presupuesto > (SELECT AVG(presupuesto) FROM departamentos);

-- 2.14 Obtener los nombres (únicamente los nombres) de los departamentos que tienen más de dos empleados.
SELECT d.nombre
FROM departamentos d
WHERE  2 < 
(
    SELECT COUNT(em.dni)
    FROM empleados em
    WHERE em.departamento = d.codigo
    GROUP BY em.departamento
)
GROUP BY d.nombre

SELECT d.nombre
FROM empleados e, departamentos d
WHERE e.departamento = d.codigo 
GROUP BY e.departamento
HAVING COUNT(e.dni) > 2;

SELECT d.nombre AS "Departamentos con más de 2 empleados"
FROM empleados e INNER JOIN departamentos d
ON e.departamento = d.codigo 
-- Equipara FK departamento con PK codigo
GROUP BY e.departamento
HAVING COUNT(e.dni) > 2;

--2.15
INSERT INTO departamentos (codigo, nombre, presupuesto) 
VALUES (11, 'Calidad', 40000);

-- Ejemplo para AUTO_INCREMENT
DELETE FROM departamentos WHERE `departamentos`.`codigo` = 16;
INSERT INTO departamentos (nombre, presupuesto) 
VALUES ('Otros', 150000);
UPDATE `departamentos` SET `codigo` = '16' WHERE `departamentos`.`codigo` = 17;

INSERT INTO empleados (dni, nombre, apellidos, departamento) VALUES ('89267109', 'Esther', 'Vázquez', 11);

-- 2.16
UPDATE departamentos
SET presupuesto = presupuesto * 0.9;

-- 2.17. Reasignar a los empleados del departamento de investigaci´on (código 77) al departamento de informática (código 14).

-- Antes actualizo para que exista el 77 
-- UPDATE `departamentos` SET `codigo` = '77' WHERE `departamentos`.`codigo` = 18;

UPDATE empleados
SET departamento = 14
WHERE departamento = 77;


--2.18--
DELETE FROM empleados
WHERE codigo = 14;

--2.19
-- Conociendo las tablas puedes sacar esta conclusión particular
DELETE FROM empleados WHERE departamento = 5;
-- Genérica para cualquier BD
DELETE FROM empleados
WHERE departamento IN
    (SELECT codigo FROM departamentos
    WHERE presupuesto >= 60000);

-- 2.20 Despedir a todos los empleados
DELETE FROM empleados;
