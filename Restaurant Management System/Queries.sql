-- ===============================================
-- Queries for Restaurant Management System
-- ===============================================

-- 1. Retrieve all customers
SELECT * FROM Customers;

-- 2. Retrieve all food items
SELECT * FROM FoodItems;

-- 3. Retrieve all orders
SELECT * FROM Orders;

-- 4. Retrieve orders for a specific customer
SELECT o.OrderNumber, o.OrderDate, o.Amount, c.Name AS CustomerName
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.CustomerID = 1;

-- 5. Retrieve food items in a specific category
SELECT * FROM FoodItems
WHERE Category = 'Beverage';

-- 6. Retrieve orders with amount greater than a specific value
SELECT * FROM Orders
WHERE Amount > 500;

-- 7. List customers with their total order amount
SELECT c.Name, SUM(o.Amount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;
