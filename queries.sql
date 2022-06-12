-- How many orders were shipped by Speedy Express in total?
SELECT count(*) FROM orders WHERE shipperID = (SELECT shipperID FROM shippers WHERE shipperName = 'Speedy Express')
-- Speedy Express shipped `54` orders in total.

-- What is the last name of the employee with the most orders?
SELECT LastName from Employees where EmployeeID = (SELECT TOP 1 EmployeeID FROM Orders GROUP BY EmployeeID ORDER BY count(*) DESC) -- Noticed the database is SQL Server / MS Access Syntax supported.
-- Employee's last name with the most orders is `Peacock` having `40` orders.

-- What product was ordered the most by customers in Germany?
SELECT ProductName FROM Products
WHERE ProductID IN (SELECT TOP 1 ProductID FROM OrderDetails
WHERE OrderID IN (
SELECT OrderID FROM Orders
WHERE CustomerID IN (SELECT CustomerID FROM Customers
WHERE Country = 'Germany'))
GROUP BY ProductID
ORDER BY COUNT(OrderDetailID) DESC)
-- Product ordered the most is `Gorgonzola Telino`
