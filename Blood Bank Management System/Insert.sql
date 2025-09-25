-- ===============================================
-- Insert sample data into Blood Bank Management System
-- ===============================================

-- Insert blood bank information
INSERT INTO BloodBankInfo (Location, ContactNumber, Address)
VALUES
('Downtown', '1234567890', '123 Main St'),
('Uptown', '0987654321', '456 Elm St');

-- Insert donors
INSERT INTO Donors (FirstName, LastName, DateOfBirth, Gender, BloodGroup, ContactNumber, Address)
VALUES
('Alice', 'Johnson', '1990-05-12', 'Female', 'A+', '1112223333', '123 Main St'),
('Bob', 'Smith', '1985-08-20', 'Male', 'B+', '2223334444', '456 Elm St');

-- Insert recipients
INSERT INTO Recipients (FirstName, LastName, Gender, DateOfBirth, BloodGroup, ContactNumber, Address, MedicalHistory)
VALUES
('Charlie', 'Brown', 'Male', '2000-01-15', 'A+', '3334445555', '789 Oak St', 'Anemia'),
('Diana', 'Prince', 'Female', '1995-03-22', 'B+', '4445556666', '321 Pine St', 'Surgery');

-- Insert blood donations
INSERT INTO BloodDonations (DonorID, DonationDate, BloodGroup, HemoglobinLevel, DonationStatus, ExpirationDate)
VALUES
(1, '2025-04-01', 'A+', 13.5, 'Available', '2025-06-01'),
(2, '2025-04-05', 'B+', 14.2, 'Available', '2025-06-05');
