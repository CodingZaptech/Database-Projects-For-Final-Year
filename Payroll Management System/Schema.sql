-- ===============================================
-- Schema creation for Payroll Management System
-- This file contains the creation of all tables.
-- ===============================================

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS Attendance;
DROP TABLE IF EXISTS Bank;
DROP TABLE IF EXISTS Employees;

-- Table to store employee details
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    BankAccountNumber VARCHAR(20),
    RemunerationAmount DECIMAL(12,2)
);

-- Table to store bank details
CREATE TABLE Bank (
    BankID INT PRIMARY KEY AUTO_INCREMENT,
    BankName VARCHAR(100) NOT NULL,
    IFSCCode VARCHAR(20),
    AccountNumber VARCHAR(20),
    RemunerationAmount DECIMAL(12,2)
);

-- Table to store employee attendance
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    NumberOfDaysPresent INT,
    LeaveTaken INT,
    HalfDayLeave INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
