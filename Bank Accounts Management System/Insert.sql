-- ===============================================
-- Insert sample data into Bank Accounts Management System
-- ===============================================

-- Insert branches
INSERT INTO Branches (BranchName, ManagerName, Location, ContactNumber)
VALUES
('Main Branch', 'John Doe', 'Downtown', '1234567890'),
('North Branch', 'Jane Smith', 'Uptown', '0987654321');

-- Insert customers
INSERT INTO Customers (FirstName, LastName, DateOfBirth, Address, ContactNumber, IdentityVerifier)
VALUES
('Alice', 'Johnson', '1985-04-12', '123 Main St', '1112223333', 'SSN12345'),
('Bob', 'Smith', '1990-09-05', '456 Elm St', '2223334444', 'SSN67890'),
('Charlie', 'Brown', '1978-11-20', '789 Oak St', '3334445555', 'SSN54321');

-- Insert accounts
INSERT INTO Accounts (CustomerID, AccountType, Balance, AccountStatus, BranchID)
VALUES
(1, 'Savings', 5000.00, 'Active', 1),
(2, 'Checking', 10000.00, 'Active', 2),
(3, 'Savings', 7500.00, 'Inactive', 1);

-- Insert transactions
INSERT INTO Transactions (AccountNumber, TransactionType, Amount, Remarks)
VALUES
(1, 'Deposit', 2000.00, 'Monthly Savings'),
(1, 'Withdrawal', 500.00, 'ATM Withdrawal'),
(2, 'Deposit', 1000.00, 'Salary Credit'),
(3, 'Withdrawal', 1000.00, 'Bill Payment');
