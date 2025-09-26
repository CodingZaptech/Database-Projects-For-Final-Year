-- ===============================================
-- Insert sample data into Payroll Management System
-- ===============================================

-- Insert employees
INSERT INTO Employees (Name, BankAccountNumber, RemunerationAmount)
VALUES
('Alice Johnson', '111122223333', 50000.00),
('Bob Smith', '222233334444', 60000.00);

-- Insert banks
INSERT INTO Bank (BankName, IFSCCode, AccountNumber, RemunerationAmount)
VALUES
('State Bank', 'SBIN0001234', '111122223333', 50000.00),
('HDFC Bank', 'HDFC0005678', '222233334444', 60000.00);

-- Insert attendance records
INSERT INTO Attendance (EmployeeID, NumberOfDaysPresent, LeaveTaken, HalfDayLeave)
VALUES
(1, 22, 2, 1),
(2, 20, 4, 2);
