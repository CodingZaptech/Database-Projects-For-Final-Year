-- ===============================================
-- Insert sample data into Insurance Management System
-- ===============================================

-- Insert clients
INSERT INTO Client (Name, PhoneNumber, Address, ItemToInsure)
VALUES
('Alice Johnson', '1112223333', '123 Main St', 'Car'),
('Bob Smith', '2223334444', '456 Elm St', 'House');

-- Insert insured items
INSERT INTO InsuredItem (Name, Type, EstimatedValue, InsuredAmount, ClientID)
VALUES
('Toyota Corolla', 'Car', 800000.00, 750000.00, 1),
('Family Home', 'House', 5000000.00, 4500000.00, 2);

-- Insert payment records
INSERT INTO Payment (ClientID, LastPaymentStatus, NextPaymentDate, DueAmount, LastPaymentMethod)
VALUES
(1, 'Paid', '2025-10-01', 0.00, 'Credit Card'),
(2, 'Pending', '2025-10-05', 50000.00, 'Bank Transfer');
