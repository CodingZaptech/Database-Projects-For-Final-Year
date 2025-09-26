-- ===============================================
-- Insert sample data into Vehicle Registering Database System
-- ===============================================

-- Insert customers
INSERT INTO Customer (Name, Address, PhoneNumber, VehicleNumber, StoreToBuyVehicle, DateOfBuying)
VALUES
('Alice Johnson', '123 Main St', '1112223333', 'MH12AB1234', 'AutoWorld', '2025-01-10'),
('Bob Smith', '456 Elm St', '2223334444', 'MH14CD5678', 'CarZone', '2025-02-15');

-- Insert vehicles
INSERT INTO Vehicle (ModelName, VehicleNumber, BrandName, DeliveryShopName, DateOfBuying)
VALUES
('Toyota Corolla', 'MH12AB1234', 'Toyota', 'AutoWorld', '2025-01-10'),
('Honda Civic', 'MH14CD5678', 'Honda', 'CarZone', '2025-02-15');

-- Insert register domain records
INSERT INTO RegisterDomain (VehicleID, NumberOfRegister, DateOfRegister, PaymentAmount)
VALUES
(1, 'REG123456', '2025-01-15', 15000.00),
(2, 'REG654321', '2025-02-20', 16000.00);
