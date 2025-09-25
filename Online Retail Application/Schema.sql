-- ===============================================
-- Schema creation for Online Retail Application
-- This file contains the creation of all tables.
-- ===============================================

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Customers;

-- Table to store customer details
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    EmailAddress VARCHAR(100),
    ContactNumber VARCHAR(20),
    ShippingAddress VARCHAR(200)
);

-- Table to store product details
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100) NOT NULL,
    Description VARCHAR(500),
    Price DECIMAL(10,2),
    Quantity INT,
    Category VARCHAR(50),
    Seller VARCHAR(100)
);

-- Table to store orders
CREATE TABLE Orders (
    OrderNumber INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    Status VARCHAR(50),
    ShippingAddress VARCHAR(200),
    PaymentAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
