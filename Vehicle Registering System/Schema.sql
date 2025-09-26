-- ===============================================
-- Schema creation for Vehicle Registering Database System
-- This file contains the creation of all tables.
-- ===============================================

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS RegisterDomain;
DROP TABLE IF EXISTS Vehicle;
DROP TABLE IF EXISTS Customer;

-- Table to store customer details
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(200),
    PhoneNumber VARCHAR(20),
    VehicleNumber VARCHAR(20),
    StoreToBuyVehicle VARCHAR(100),
    DateOfBuying DATE
);

-- Table to store vehicle details
CREATE TABLE Vehicle (
    VehicleID INT PRIMARY KEY AUTO_INCREMENT,
    ModelName VARCHAR(100) NOT NULL,
    VehicleNumber VARCHAR(20),
    BrandName VARCHAR(50),
    DeliveryShopName VARCHAR(100),
    DateOfBuying DATE
);

-- Table to store register domain details
CREATE TABLE RegisterDomain (
    RegisterID INT PRIMARY KEY AUTO_INCREMENT,
    VehicleID INT,
    NumberOfRegister VARCHAR(50),
    DateOfRegister DATE,
    PaymentAmount DECIMAL(12,2),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);
