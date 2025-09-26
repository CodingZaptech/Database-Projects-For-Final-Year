-- ===============================================
-- Queries for Insurance Management System
-- ===============================================

-- 1. Retrieve all clients
SELECT * FROM Client;

-- 2. Retrieve all insured items
SELECT * FROM InsuredItem;

-- 3. Retrieve all payments
SELECT * FROM Payment;

-- 4. Retrieve insured items for a specific client
SELECT i.ItemID, i.Name, i.Type, i.EstimatedValue, i.InsuredAmount, c.Name AS ClientName
FROM InsuredItem i
JOIN Client c ON i.ClientID = c.ClientID
WHERE i.ClientID = 1;

-- 5. Retrieve payment status for all clients
SELECT c.Name, p.LastPaymentStatus, p.NextPaymentDate, p.DueAmount, p.LastPaymentMethod
FROM Payment p
JOIN Client c ON p.ClientID = c.ClientID;

-- 6. List clients with pending payments
SELECT c.Name, p.DueAmount
FROM Client c
JOIN Payment p ON c.ClientID = p.ClientID
WHERE p.LastPaymentStatus = 'Pending';

-- 7. Retrieve total insured amount for each client
SELECT c.Name, SUM(i.InsuredAmount) AS TotalInsuredAmount
FROM Client c
JOIN InsuredItem i ON c.ClientID = i.ClientID
GROUP BY c.ClientID;
