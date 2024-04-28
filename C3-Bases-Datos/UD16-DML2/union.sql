SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers;
-- Todos los registros incluso repetidos con UNION ALL

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers;
-- Los registros de amblas tablas NO repetidos