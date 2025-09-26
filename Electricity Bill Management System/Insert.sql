-- ===============================================
-- Insert sample data into Electricity Bill Management System
-- ===============================================

-- Insert consumers
INSERT INTO Consumer (Name, Address, PhoneNumber, DateOfConnection)
VALUES
('Alice Johnson', '123 Main St', '1112223333', '2020-05-01'),
('Bob Smith', '456 Elm St', '2223334444', '2019-08-15');

-- Insert electricity consumption records
INSERT INTO Electricity (ConsumerID, LastRecordedConsumption, NewConsumption, PreviousConsumption)
VALUES
(1, 350.50, 400.75, '300.25, 325.50, 350.50'),
(2, 500.00, 550.25, '450.00, 475.50, 500.00');

-- Insert payment records
INSERT INTO Payment (ConsumerID, LastPaymentDate, PaymentStatus, DuePaymentStatus)
VALUES
(1, '2025-09-01', 'Paid', 0.00),
(2, '2025-08-25', 'Pending', 150.25);
