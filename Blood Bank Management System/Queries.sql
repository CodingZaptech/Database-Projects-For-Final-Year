-- ===============================================
-- Queries for Blood Bank Management System
-- ===============================================

-- 1. Retrieve all donors
SELECT * FROM Donors;

-- 2. Retrieve all recipients
SELECT * FROM Recipients;

-- 3. Retrieve all blood donations
SELECT * FROM BloodDonations;

-- 4. Retrieve donations from a specific donor
SELECT * FROM BloodDonations
WHERE DonorID = 1;

-- 5. List available blood units by blood group
SELECT BloodGroup, COUNT(*) AS UnitsAvailable
FROM BloodDonations
WHERE DonationStatus = 'Available'
GROUP BY BloodGroup;

-- 6. Retrieve recipients with a specific blood group
SELECT * FROM Recipients
WHERE BloodGroup = 'A+';

-- 7. List donations that are near expiration (within 30 days)
SELECT * FROM BloodDonations
WHERE ExpirationDate <= CURDATE() + INTERVAL 30 DAY;
