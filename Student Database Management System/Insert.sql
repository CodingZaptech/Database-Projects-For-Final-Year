-- ===============================================
-- Insert sample data into Student Database Management System
-- ===============================================

-- Insert departments
INSERT INTO Department (DepartmentName, DepartmentBlock, YearsOfDegree)
VALUES 
('Computer Science', 'Block A', 4),
('Mechanical', 'Block B', 4),
('Electrical', 'Block C', 4),
('Civil', 'Block D', 4);

-- Insert students
INSERT INTO Student (Name, ParentName, DateOfBirth, Gender, DepartmentID, ClassYear)
VALUES
('Alice Johnson', 'Robert Johnson', '2002-05-15', 'Female', 1, 3),
('Bob Smith', 'Linda Smith', '2001-11-23', 'Male', 2, 4),
('Charlie Brown', 'Eve Brown', '2003-02-10', 'Male', 1, 2),
('Diana Prince', 'Hippolyta Prince', '2002-08-01', 'Female', 3, 3);

-- Insert marks report
INSERT INTO MarksReport (StudentID, CourseName, Subject1Marks, Subject2Marks, Subject3Marks, TotalMarks, Percentage, Result)
VALUES
(1, 'Data Structures', 85, 90, 88, 263, 87.67, 'Pass'),
(2, 'Thermodynamics', 75, 80, 70, 225, 75.00, 'Pass'),
(3, 'Algorithms', 60, 65, 58, 183, 61.00, 'Pass'),
(4, 'Circuits', 45, 50, 40, 135, 45.00, 'Fail');

-- Insert fee information
INSERT INTO FeeInformation (StudentID, AcademicYear, TotalFee)
VALUES
(1, '2024-2025', 50000.00),
(2, '2024-2025', 52000.00),
(3, '2024-2025', 50000.00),
(4, '2024-2025', 53000.00);
