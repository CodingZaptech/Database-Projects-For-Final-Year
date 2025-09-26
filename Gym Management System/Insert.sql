-- ===============================================
-- Insert sample data into Gym Management System
-- ===============================================

-- Insert members
INSERT INTO Members (Name, Gender, JoiningDate, ContactNumber, DateOfBirth)
VALUES
('Alice Johnson', 'Female', '2025-01-10', '1112223333', '1995-05-12'),
('Bob Smith', 'Male', '2025-02-15', '2223334444', '1990-08-20');

-- Insert trainers
INSERT INTO Trainers (Name, Gender, ContactNumber, Role)
VALUES
('Charlie Brown', 'Male', '3334445555', 'Personal Trainer'),
('Diana Prince', 'Female', '4445556666', 'Yoga Instructor');

-- Insert gym equipment
INSERT INTO GymEquipment (Name, Quantity, Price, Manufacturer)
VALUES
('Treadmill', 5, 50000.00, 'FitTech'),
('Dumbbells Set', 20, 15000.00, 'StrongGear'),
('Exercise Bike', 10, 30000.00, 'HealthPro');
