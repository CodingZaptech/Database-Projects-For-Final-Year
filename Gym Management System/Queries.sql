-- ===============================================
-- Queries for Gym Management System
-- ===============================================

-- 1. Retrieve all members
SELECT * FROM Members;

-- 2. Retrieve all trainers
SELECT * FROM Trainers;

-- 3. Retrieve all gym equipment
SELECT * FROM GymEquipment;

-- 4. Retrieve members who joined after a specific date
SELECT * FROM Members
WHERE JoiningDate > '2025-01-31';

-- 5. Retrieve equipment with quantity less than a certain number
SELECT * FROM GymEquipment
WHERE Quantity < 10;

-- 6. Retrieve trainers by role
SELECT * FROM Trainers
WHERE Role = 'Personal Trainer';

-- 7. Count total number of members and trainers
SELECT 
    (SELECT COUNT(*) FROM Members) AS TotalMembers,
    (SELECT COUNT(*) FROM Trainers) AS TotalTrainers;
