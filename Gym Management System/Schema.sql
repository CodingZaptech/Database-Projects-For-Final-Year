-- ===============================================
-- Schema creation for Gym Management System
-- This file contains the creation of all tables.
-- ===============================================

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS GymEquipment;
DROP TABLE IF EXISTS Trainers;
DROP TABLE IF EXISTS Members;

-- Table to store gym members
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Gender VARCHAR(10),
    JoiningDate DATE,
    ContactNumber VARCHAR(20),
    DateOfBirth DATE
);

-- Table to store trainers
CREATE TABLE Trainers (
    TrainerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Gender VARCHAR(10),
    ContactNumber VARCHAR(20),
    Role VARCHAR(50)
);

-- Table to store gym equipment
CREATE TABLE GymEquipment (
    ItemID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Quantity INT,
    Price DECIMAL(10,2),
    Manufacturer VARCHAR(100)
);
