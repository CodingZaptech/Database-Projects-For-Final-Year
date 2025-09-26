-- ===============================================
-- Queries for Payroll Management System
-- ===============================================

-- 1. Retrieve all employees
SELECT * FROM Employees;

-- 2. Retrieve all banks
SELECT * FROM Bank;

-- 3. Retrieve attendance records
SELECT * FROM Attendance;

-- 4. Retrieve attendance of a specific employee
SELECT a.AttendanceID, e.Name, a.NumberOfDaysPresent, a.LeaveTaken, a.HalfDayLeave
FROM Attendance a
JOIN Employees e ON a.EmployeeID = e.EmployeeID
WHERE a.EmployeeID = 1;

-- 5. Calculate total remuneration per employee
SELECT e.Name, e.RemunerationAmount, 
       a.NumberOfDaysPresent, a.LeaveTaken, a.HalfDayLeave
FROM Employees e
JOIN Attendance a ON e.EmployeeID = a.EmployeeID;

-- 6. List employees who took more than 3 leaves
SELECT e.Name, a.LeaveTaken
FROM Employees e
JOIN Attendance a ON e.EmployeeID = a.EmployeeID
WHERE a.LeaveTaken > 3;

-- 7. Join employee with bank details
SELECT e.Name, e.RemunerationAmount, b.BankName, b.IFSCCode
FROM Employees e
JOIN Bank b ON e.BankAccountNumber = b.AccountNumber;
