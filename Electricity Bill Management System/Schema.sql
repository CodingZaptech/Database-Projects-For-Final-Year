-- ===============================================
-- Schema creation for Electricity Bill Management System
-- This file contains the creation of all tables.
-- ===============================================

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS Electricity;
DROP TABLE IF EXISTS Consumer;

-- Table to store consumer details
CREATE TABLE Consumer (
    ConsumerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(200),
    PhoneNumber VARCHAR(20),
    DateOfConnection DATE
);

-- Table to store electricity consumption details
CREATE TABLE Electricity (
    ElectricityID INT PRIMARY KEY AUTO_INCREMENT,
    ConsumerID INT,
    LastRecordedConsumption DECIMAL(10,2),
    NewConsumption DECIMAL(10,2),
    PreviousConsumption TEXT,
    FOREIGN KEY (ConsumerID) REFERENCES Consumer(ConsumerID)
);

-- Table to store payment details
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    ConsumerID INT,
    LastPaymentDate DATE,
    PaymentStatus VARCHAR(50),
    DuePaymentStatus DECIMAL(10,2),
    FOREIGN KEY (ConsumerID) REFERENCES Consumer(ConsumerID)
);
