-- ===============================================
-- Queries for Student Database Management System
-- ===============================================

-- 1. Retrieve all students
SELECT * FROM Student;

-- 2. Retrieve all students with their department names
SELECT s.StudentID, s.Name, s.ClassYear, d.DepartmentName
FROM Student s
JOIN Department d ON s.DepartmentID = d.DepartmentID;

-- 3. Retrieve marks report for a specific student
SELECT * FROM MarksReport
WHERE StudentID = 1;

-- 4. Get students who have failed
SELECT s.Name, m.Result
FROM Student s
JOIN MarksReport m ON s.StudentID = m.StudentID
WHERE m.Result = 'Fail';

-- 5. Calculate average percentage of all students
SELECT AVG(Percentage) AS AveragePercentage FROM MarksReport;

-- 6. Retrieve fee details of a student
SELECT s.Name, f.AcademicYear, f.TotalFee
FROM Student s
JOIN FeeInformation f ON s.StudentID = f.StudentID;

-- 7. List students of a particular department
SELECT s.Name, d.DepartmentName
FROM Student s
JOIN Department d ON s.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer Science';
