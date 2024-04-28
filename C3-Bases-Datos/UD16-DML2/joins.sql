SELECT Customers.CustomerName, COUNT(Orders.OrderID) AS NumPedidos
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
HAVING COUNT(Orders.OrderID) > 0
ORDER BY COUNT(Orders.OrderID) DESC;
-- Muestra el número de pedidos que han hecho los clientes en orden descendiente
-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all