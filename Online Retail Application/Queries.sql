-- ===============================================
-- Queries for Online Retail Application
-- ===============================================

-- 1. Retrieve all customers
SELECT * FROM Customers;

-- 2. Retrieve all products
SELECT * FROM Products;

-- 3. Retrieve all orders
SELECT * FROM Orders;

-- 4. Retrieve orders for a specific customer
SELECT o.OrderNumber, p.ProductName, o.Status, o.PaymentAmount
FROM Orders o
JOIN Products p ON p.ProductID = o.OrderNumber
WHERE o.CustomerID = 1;

-- 5. Retrieve products in a specific category
SELECT * FROM Products
WHERE Category = 'Electronics';

-- 6. Retrieve orders with payment amount greater than a specific value
SELECT * FROM Orders
WHERE PaymentAmount > 10000;

-- 7. List customers with their orders
SELECT c.FirstName, c.LastName, o.OrderNumber, o.Status, o.PaymentAmount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID;
