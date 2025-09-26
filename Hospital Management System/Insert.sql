-- ===============================================
-- Insert sample data into Hospital Management System
-- ===============================================

-- Insert departments
INSERT INTO Departments (DepartmentName, DepartmentHead)
VALUES
('Cardiology', 'Dr. Smith'),
('Neurology', 'Dr. Alice');

-- Insert doctors
INSERT INTO Doctors (Name, Gender, ContactNumber, Specialization, DepartmentID)
VALUES
('Dr. John Doe', 'Male', '1112223333', 'Cardiologist', 1),
('Dr. Emily White', 'Female', '2223334444', 'Neurologist', 2);

-- Insert patients
INSERT INTO Patients (Name, Gender, DateOfBirth, ContactNumber, Address, MedicalHistory)
VALUES
('Alice Johnson', 'Female', '1990-05-12', '3334445555', '123 Main St', 'Hypertension'),
('Bob Smith', 'Male', '1985-08-20', '4445556666', '456 Elm St', 'Diabetes');

-- Insert appointments
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Reason)
VALUES
(1, 1, '2025-09-25', '10:00:00', 'Regular Checkup'),
(2, 2, '2025-09-26', '14:00:00', 'Neurological Consultation');
