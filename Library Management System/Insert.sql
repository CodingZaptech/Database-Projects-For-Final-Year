-- ===============================================
-- Insert sample data into Library Management System
-- ===============================================

-- Insert authors
INSERT INTO Authors (AuthorName, Language, NumberOfBooks)
VALUES
('J.K. Rowling', 'English', 5),
('George Orwell', 'English', 3),
('Rabindranath Tagore', 'Bengali', 4);

-- Insert books
INSERT INTO Books (Title, AuthorID, Publisher, Genre, YearOfPublication, TotalCopies, AvailableCopies, Language)
VALUES
('Harry Potter and the Sorcerer''s Stone', 1, 'Bloomsbury', 'Fantasy', 1997, 10, 7, 'English'),
('1984', 2, 'Secker & Warburg', 'Dystopian', 1949, 5, 3, 'English'),
('Gitanjali', 3, 'Macmillan', 'Poetry', 1910, 7, 5, 'Bengali');

-- Insert members
INSERT INTO Members (MemberName, ContactNumber, EmailAddress, Address, NumberOfBooksIssued)
VALUES
('Alice Johnson', '1112223333', 'alice@example.com', '123 Main St', 1),
('Bob Smith', '2223334444', 'bob@example.com', '456 Elm St', 0);

-- Insert employees
INSERT INTO Employees (EmployeeName, Designation, ContactNumber, EmailAddress)
VALUES
('Emma Watson', 'Librarian', '3334445555', 'emma@library.com'),
('John Doe', 'Assistant', '4445556666', 'john@library.com');

-- Insert borrow/issue history
INSERT INTO BorrowHistory (BookNumber, MemberID, IssueDate, ReturnDate, DueDate)
VALUES
(1, 1, '2025-04-01', '2025-04-15', '2025-04-14'),
(2, 1, '2025-04-05', NULL, '2025-04-19');
