-- ===============================================
-- Schema creation for Insurance Management System
-- This file contains the creation of all tables.
-- ===============================================

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS InsuredItem;
DROP TABLE IF EXISTS Client;

-- Table to store client details
CREATE TABLE Client (
    ClientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20),
    Address VARCHAR(200),
    ItemToInsure VARCHAR(100)
);

-- Table to store insured item details
CREATE TABLE InsuredItem (
    ItemID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Type VARCHAR(50),
    EstimatedValue DECIMAL(12,2),
    InsuredAmount DECIMAL(12,2),
    ClientID INT,
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);

-- Table to store payment details
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT,
    LastPaymentStatus VARCHAR(50),
    NextPaymentDate DATE,
    DueAmount DECIMAL(12,2),
    LastPaymentMethod VARCHAR(50),
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);
