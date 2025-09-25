-- ===============================================
-- Schema creation for Blood Bank Management System
-- This file contains the creation of all tables.
-- ===============================================

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS BloodDonations;
DROP TABLE IF EXISTS Donors;
DROP TABLE IF EXISTS Recipients;
DROP TABLE IF EXISTS BloodBankInfo;

-- Table to store blood bank information
CREATE TABLE BloodBankInfo (
    BloodBankID INT PRIMARY KEY AUTO_INCREMENT,
    Location VARCHAR(100),
    ContactNumber VARCHAR(20),
    Address VARCHAR(200)
);

-- Table to store donor details
CREATE TABLE Donors (
    DonorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Gender VARCHAR(10),
    BloodGroup VARCHAR(5),
    ContactNumber VARCHAR(20),
    Address VARCHAR(200)
);

-- Table to store recipient details
CREATE TABLE Recipients (
    RecipientID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender VARCHAR(10),
    DateOfBirth DATE,
    BloodGroup VARCHAR(5),
    ContactNumber VARCHAR(20),
    Address VARCHAR(200),
    MedicalHistory VARCHAR(500)
);

-- Table to store blood donations
CREATE TABLE BloodDonations (
    DonationID INT PRIMARY KEY AUTO_INCREMENT,
    DonorID INT,
    DonationDate DATE,
    BloodGroup VARCHAR(5),
    HemoglobinLevel DECIMAL(4,2),
    DonationStatus VARCHAR(20),
    ExpirationDate DATE,
    FOREIGN KEY (DonorID) REFERENCES Donors(DonorID)
);
