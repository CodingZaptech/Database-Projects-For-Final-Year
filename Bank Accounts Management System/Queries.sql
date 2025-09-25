-- ===============================================
-- Common Queries for Bank Accounts Management System
-- ===============================================

-- 1. Retrieve all customers
SELECT * FROM Customers;

-- 2. Retrieve all accounts with customer names
SELECT a.AccountNumber, a.AccountType, a.Balance, a.AccountStatus,
       c.FirstName, c.LastName, b.BranchName
FROM Accounts a
JOIN Customers c ON a.CustomerID = c.CustomerID
JOIN Branches b ON a.BranchID = b.BranchID;

-- 3. Retrieve all transactions for a specific account
SELECT * FROM Transactions
WHERE AccountNumber = 1;

-- 4. Retrieve active accounts only
SELECT * FROM Accounts
WHERE AccountStatus = 'Active';

-- 5. Calculate total balance of all accounts
SELECT SUM(Balance) AS TotalBankBalance FROM Accounts;

-- 6. List transactions within a date range
SELECT * FROM Transactions
WHERE TransactionDate BETWEEN '2025-01-01' AND '2025-12-31';

-- 7. Find accounts of a particular customer
SELECT a.AccountNumber, a.AccountType, a.Balance
FROM Accounts a
JOIN Customers c ON a.CustomerID = c.CustomerID
WHERE c.FirstName = 'Alice' AND c.LastName = 'Johnson';
