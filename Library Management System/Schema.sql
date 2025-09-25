-- ===============================================
-- Schema creation for Library Management System
-- This file contains the creation of all tables.
-- ===============================================

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS BorrowHistory;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Authors;
DROP TABLE IF EXISTS Members;
DROP TABLE IF EXISTS Employees;

-- Table to store author details
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    AuthorName VARCHAR(100) NOT NULL,
    Language VARCHAR(50),
    NumberOfBooks INT
);

-- Table to store book details
CREATE TABLE Books (
    BookNumber INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(150) NOT NULL,
    AuthorID INT,
    Publisher VARCHAR(100),
    Genre VARCHAR(50),
    YearOfPublication YEAR,
    TotalCopies INT,
    AvailableCopies INT,
    Language VARCHAR(50),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Table to store member details
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    MemberName VARCHAR(100) NOT NULL,
    ContactNumber VARCHAR(20),
    EmailAddress VARCHAR(100),
    Address VARCHAR(200),
    NumberOfBooksIssued INT
);

-- Table to store library employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeName VARCHAR(100) NOT NULL,
    Designation VARCHAR(50),
    ContactNumber VARCHAR(20),
    EmailAddress VARCHAR(100)
);

-- Table to store borrow/issue history
CREATE TABLE BorrowHistory (
    IssueID INT PRIMARY KEY AUTO_INCREMENT,
    BookNumber INT,
    MemberID INT,
    IssueDate DATE,
    ReturnDate DATE,
    DueDate DATE,
    FOREIGN KEY (BookNumber) REFERENCES Books(BookNumber),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
