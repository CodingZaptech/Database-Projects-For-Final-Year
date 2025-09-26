-- ===============================================
-- Queries for Electricity Bill Management System
-- ===============================================

-- 1. Retrieve all consumers
SELECT * FROM Consumer;

-- 2. Retrieve all electricity consumption records
SELECT * FROM Electricity;

-- 3. Retrieve all payment records
SELECT * FROM Payment;

-- 4. Retrieve electricity consumption for a specific consumer
SELECT e.ElectricityID, c.Name, e.LastRecordedConsumption, e.NewConsumption, e.PreviousConsumption
FROM Electricity e
JOIN Consumer c ON e.ConsumerID = c.ConsumerID
WHERE e.ConsumerID = 1;

-- 5. Retrieve payment status of all consumers
SELECT c.Name, p.LastPaymentDate, p.PaymentStatus, p.DuePaymentStatus
FROM Payment p
JOIN Consumer c ON p.ConsumerID = c.ConsumerID;

-- 6. List consumers with pending payments
SELECT c.Name, p.DuePaymentStatus
FROM Consumer c
JOIN Payment p ON c.ConsumerID = p.ConsumerID
WHERE p.PaymentStatus = 'Pending';

-- 7. Calculate total consumption for a specific consumer
SELECT ConsumerID, LastRecordedConsumption + NewConsumption AS TotalConsumption
FROM Electricity
WHERE ConsumerID = 1;
