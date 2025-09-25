-- ===============================================
-- Insert sample data into Inventory Control Management System
-- ===============================================

-- Insert suppliers
INSERT INTO Suppliers (SupplierName, ContactNumber, Address)
VALUES
('Global Supplies', '1112223333', '123 Industrial Rd'),
('Tech Components', '2223334444', '456 Tech Park');

-- Insert products
INSERT INTO Products (ProductName, BatchNumber, Category, UnitPrice, DateOfManufacture, QuantityInStock, SupplierID)
VALUES
('Laptop', 'BATCH001', 'Electronics', 50000.00, '2025-01-10', 50, 1),
('Smartphone', 'BATCH002', 'Electronics', 20000.00, '2025-02-15', 150, 2),
('Keyboard', 'BATCH003', 'Accessories', 1500.00, '2025-03-01', 300, 2);

-- Insert inventory records
INSERT INTO Inventory (ProductID, Location, ProductionQuantity, InventoryTurnover, LastUpdated)
VALUES
(1, 'Warehouse A', 50, 1.2, '2025-04-01'),
(2, 'Warehouse B', 150, 1.5, '2025-04-05'),
(3, 'Warehouse C', 300, 2.0, '2025-04-10');

-- Insert customers
INSERT INTO Customer (Name, Address, ContactNumber, PaymentDetails)
VALUES
('Tech Corp', '789 Corporate Blvd', '3334445555', 'Credit Card'),
('Alice Johnson', '321 Maple St', '4445556666', 'Online Payment');

-- Insert orders
INSERT INTO Orders (ProductID, CustomerID, OrderDate, Status, ShippingAddress, Amount)
VALUES
(1, 1, '2025-04-15', 'Shipped', '789 Corporate Blvd', 50000.00),
(2, 2, '2025-04-16', 'Pending', '321 Maple St', 20000.00),
(3, 1, '2025-04-17', 'Delivered', '789 Corporate Blvd', 4500.00);
