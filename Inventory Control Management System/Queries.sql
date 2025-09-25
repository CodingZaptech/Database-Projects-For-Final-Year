-- ===============================================
-- Queries for Inventory Control Management System
-- ===============================================

-- 1. Retrieve all products
SELECT * FROM Products;

-- 2. Retrieve all products with supplier names
SELECT p.ProductID, p.ProductName, p.Category, p.UnitPrice, s.SupplierName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID;

-- 3. Retrieve inventory details for a specific product
SELECT * FROM Inventory
WHERE ProductID = 1;

-- 4. List orders of a particular customer
SELECT o.OrderID, p.ProductName, o.Status, o.Amount
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
WHERE o.CustomerID = 1;

-- 5. Calculate total inventory value
SELECT SUM(UnitPrice * QuantityInStock) AS TotalInventoryValue
FROM Products;

-- 6. List products with low stock (less than 100 units)
SELECT ProductName, QuantityInStock
FROM Products
WHERE QuantityInStock < 100;

-- 7. Retrieve all customers with their orders
SELECT c.Name, o.OrderID, o.ProductID, o.Status, o.Amount
FROM Customer c
JOIN Orders o ON c.CustomerID = o.CustomerID;
