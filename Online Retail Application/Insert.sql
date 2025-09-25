-- ===============================================
-- Insert sample data into Online Retail Application
-- ===============================================

-- Insert customers
INSERT INTO Customers (FirstName, LastName, EmailAddress, ContactNumber, ShippingAddress)
VALUES
('Alice', 'Johnson', 'alice@example.com', '1112223333', '123 Main St'),
('Bob', 'Smith', 'bob@example.com', '2223334444', '456 Elm St');

-- Insert products
INSERT INTO Products (ProductName, Description, Price, Quantity, Category, Seller)
VALUES
('Laptop', 'High performance laptop', 50000.00, 10, 'Electronics', 'TechStore'),
('Smartphone', 'Latest model smartphone', 20000.00, 20, 'Electronics', 'MobileWorld'),
('Headphones', 'Wireless headphones', 3000.00, 50, 'Accessories', 'SoundHub');

-- Insert orders
INSERT INTO Orders (CustomerID, OrderDate, Status, ShippingAddress, PaymentAmount)
VALUES
(1, '2025-09-25', 'Shipped', '123 Main St', 50000.00),
(2, '2025-09-26', 'Pending', '456 Elm St', 20000.00),
(1, '2025-09-27', 'Delivered', '123 Main St', 3000.00);
