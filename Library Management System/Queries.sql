-- ===============================================
-- Queries for Library Management System
-- ===============================================

-- 1. Retrieve all books
SELECT * FROM Books;

-- 2. Retrieve books with author names
SELECT b.BookNumber, b.Title, a.AuthorName, b.Genre, b.AvailableCopies
FROM Books b
JOIN Authors a ON b.AuthorID = a.AuthorID;

-- 3. Retrieve all members
SELECT * FROM Members;

-- 4. Retrieve borrow history for a specific member
SELECT bh.IssueID, b.Title, bh.IssueDate, bh.DueDate, bh.ReturnDate
FROM BorrowHistory bh
JOIN Books b ON bh.BookNumber = b.BookNumber
WHERE bh.MemberID = 1;

-- 5. List books that are currently available
SELECT Title, AvailableCopies
FROM Books
WHERE AvailableCopies > 0;

-- 6. Retrieve overdue books
SELECT m.MemberName, b.Title, bh.DueDate
FROM BorrowHistory bh
JOIN Members m ON bh.MemberID = m.MemberID
JOIN Books b ON bh.BookNumber = b.BookNumber
WHERE bh.ReturnDate IS NULL AND bh.DueDate < CURDATE();

-- 7. Count number of books issued by each member
SELECT m.MemberName, COUNT(bh.IssueID) AS BooksIssued
FROM Members m
LEFT JOIN BorrowHistory bh ON m.MemberID = bh.MemberID
GROUP BY m.MemberID;
