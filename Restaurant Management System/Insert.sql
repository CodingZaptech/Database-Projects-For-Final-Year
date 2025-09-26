-- ===============================================
-- Insert sample data into Restaurant Management System
-- ===============================================

-- Insert customers
INSERT INTO Customers (Name, ContactNumber, EmailAddress)
VALUES
('Alice Johnson', '1112223333', 'alice@example.com'),
('Bob Smith', '2223334444', 'bob@example.com');

-- Insert food and beverage items
INSERT INTO FoodItems (ItemName, Price, Category, Ingredients)
VALUES
('Margherita Pizza', 500.00, 'Main Course', 'Flour, Tomato, Cheese, Basil'),
('Veg Burger', 150.00, 'Fast Food', 'Bun, Veg Patty, Lettuce, Tomato'),
('Coke', 50.00, 'Beverage', 'Carbonated Water, Sugar, Flavoring');

-- Insert orders
INSERT INTO Orders (CustomerID, OrderDate, Amount)
VALUES
(1, '2025-09-25', 650.00),
(2, '2025-09-26', 200.00),
(1, '2025-09-27', 50.00);
