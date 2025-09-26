-- ===============================================
-- Schema creation for Restaurant Management System
-- This file contains the creation of all tables.
-- ===============================================

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS FoodItems;
DROP TABLE IF EXISTS Customers;

-- Table to store customer details
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    ContactNumber VARCHAR(20),
    EmailAddress VARCHAR(100)
);

-- Table to store food and beverage items
CREATE TABLE FoodItems (
    ItemNumber INT PRIMARY KEY AUTO_INCREMENT,
    ItemName VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2),
    Category VARCHAR(50),
    Ingredients VARCHAR(500)
);

-- Table to store orders
CREATE TABLE Orders (
    OrderNumber INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
