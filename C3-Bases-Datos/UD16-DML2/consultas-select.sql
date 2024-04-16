SELECT * FROM despachos;
SELECT capacidad FROM despachos;
SELECT capacidad FROM despachos ORDER BY capacidad;
SELECT * FROM directores ORDER BY despacho;
SELECT NomApels FROM directores ORDER BY despacho;
SELECT DNI FROM directores ORDER BY NomApels;
SELECT DNI FROM directores WHERE despacho=9 ORDER BY NomApels;
SELECT DNI, NomApels FROM directores WHERE despacho=9 ORDER BY NomApels;
SELECT DNI, NomApels FROM directores WHERE despacho=9;

-- Cláusula WHERE condición
-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all
SELECT CustomerName, City FROM Customers WHERE City='Berlin';
SELECT CustomerName, City, Country FROM Customers WHERE Country='Mexico';
SELECT CustomerName FROM Customers WHERE CustomerID=13;

-- Operadores = <> > < >= <= BETWEEN LIKE IN
SELECT DNI FROM directores WHERE despacho>5 ORDER BY NomApels;
SELECT DNI FROM directores WHERE despacho BETWEEN 1 AND 5 ;
-- Operadores AND OR
SELECT * FROM Customers WHERE Country='Germany' AND City='Berlin';
SELECT * FROM Customers WHERE Country='Mexico' OR City='Berlin';
SELECT * FROM Customers WHERE Country='Germany ' AND NOT City='Berlin';