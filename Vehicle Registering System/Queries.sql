-- ===============================================
-- Queries for Vehicle Registering Database System
-- ===============================================

-- 1. Retrieve all customers
SELECT * FROM Customer;

-- 2. Retrieve all vehicles
SELECT * FROM Vehicle;

-- 3. Retrieve all register domain records
SELECT * FROM RegisterDomain;

-- 4. Retrieve vehicles purchased by a specific customer
SELECT v.VehicleID, v.ModelName, v.BrandName, c.Name AS CustomerName, c.VehicleNumber
FROM Vehicle v
JOIN Customer c ON v.VehicleNumber = c.VehicleNumber
WHERE c.CustomerID = 1;

-- 5. Retrieve register details for a specific vehicle
SELECT r.RegisterID, v.ModelName, r.NumberOfRegister, r.DateOfRegister, r.PaymentAmount
FROM RegisterDomain r
JOIN Vehicle v ON r.VehicleID = v.VehicleID
WHERE r.VehicleID = 1;

-- 6. List customers with their purchased vehicles and register info
SELECT c.Name, c.VehicleNumber, v.ModelName, r.NumberOfRegister, r.PaymentAmount
FROM Customer c
JOIN Vehicle v ON c.VehicleNumber = v.VehicleNumber
JOIN RegisterDomain r ON v.VehicleID = r.VehicleID;

-- 7. Retrieve vehicles purchased after a specific date
SELECT * FROM Vehicle
WHERE DateOfBuying > '2025-01-31';
