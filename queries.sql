-- How many orders were shipped by Speedy Express in total?
SELECT count(*) FROM orders WHERE shipperID = (SELECT shipperID FROM shippers WHERE shipperName = 'Speedy Express')
-- Speedy Express shipped `54` orders in total.

-- What is the last name of the employee with the most orders?
SELECT LastName from Employees where EmployeeID = (SELECT TOP 1 EmployeeID FROM Orders GROUP BY EmployeeID ORDER BY count(*) DESC) -- Noticed the database is SQL Server / MS Access Syntax supported.
-- Employee's last name with the most orders is `Peacock` having `40` orders.

-- What product was ordered the most by customers in Germany?
SELECT TOP 1 Products.ProductName, SUM(OrderDetails.Quantity) As TotalQuantity FROM Products
JOIN OrderDetails
ON (Products.ProductID = OrderDetails.ProductID)
JOIN Orders
ON (Orders.OrderID = OrderDetails.OrderID)
JOIN Customers
ON (Customers.CustomerID = Orders.CustomerID)
WHERE Customers.Country = 'Germany'
GROUP BY Products.ProductName
ORDER BY TotalQuantity DESC
-- Product ordered the most is `Boston Crab Meat` with `160` total orders.
