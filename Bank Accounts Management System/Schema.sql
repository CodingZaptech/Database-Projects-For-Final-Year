-- ===============================================
-- Schema creation for Bank Accounts Management System
-- This file contains the creation of all tables.
-- ===============================================

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS Transactions;
DROP TABLE IF EXISTS Accounts;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Branches;

-- Table to store branch details
CREATE TABLE Branches (
    BranchID INT PRIMARY KEY AUTO_INCREMENT,
    BranchName VARCHAR(100) NOT NULL,
    ManagerName VARCHAR(100),
    Location VARCHAR(150),
    ContactNumber VARCHAR(20)
);

-- Table to store customer details
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Address VARCHAR(200),
    ContactNumber VARCHAR(20),
    IdentityVerifier VARCHAR(50)
);

-- Table to store bank account details
CREATE TABLE Accounts (
    AccountNumber INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    AccountType VARCHAR(50),
    Balance DECIMAL(15,2),
    AccountStatus VARCHAR(20),
    BranchID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

-- Table to store transactions
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    AccountNumber INT,
    TransactionType VARCHAR(20),
    Amount DECIMAL(15,2),
    Remarks VARCHAR(200),
    TransactionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (AccountNumber) REFERENCES Accounts(AccountNumber)
);
