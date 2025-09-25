-- ===============================================
-- Schema creation for Student Database Management System
-- This file contains the creation of all tables.
-- ===============================================

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS MarksReport;
DROP TABLE IF EXISTS FeeInformation;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Department;

-- Table to store department details
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100) NOT NULL,
    DepartmentBlock VARCHAR(50),
    YearsOfDegree INT
);

-- Table to store student details
CREATE TABLE Student (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    ParentName VARCHAR(100),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    DepartmentID INT,
    ClassYear INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Table to store marks report
CREATE TABLE MarksReport (
    ReportID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseName VARCHAR(100),
    Subject1Marks INT,
    Subject2Marks INT,
    Subject3Marks INT,
    TotalMarks INT,
    Percentage DECIMAL(5,2),
    Result VARCHAR(10),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

-- Table to store fee information
CREATE TABLE FeeInformation (
    FeeID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    AcademicYear VARCHAR(20),
    TotalFee DECIMAL(10,2),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
