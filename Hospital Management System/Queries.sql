-- ===============================================
-- Queries for Hospital Management System
-- ===============================================

-- 1. Retrieve all patients
SELECT * FROM Patients;

-- 2. Retrieve all doctors
SELECT * FROM Doctors;

-- 3. Retrieve all departments
SELECT * FROM Departments;

-- 4. Retrieve all appointments
SELECT * FROM Appointments;

-- 5. Retrieve appointments for a specific patient
SELECT a.AppointmentID, d.Name AS DoctorName, a.AppointmentDate, a.AppointmentTime, a.Reason
FROM Appointments a
JOIN Doctors d ON a.DoctorID = d.DoctorID
WHERE a.PatientID = 1;

-- 6. List doctors in a specific department
SELECT Name, Specialization, ContactNumber
FROM Doctors
WHERE DepartmentID = 1;

-- 7. Count total appointments for each doctor
SELECT d.Name AS DoctorName, COUNT(a.AppointmentID) AS TotalAppointments
FROM Doctors d
LEFT JOIN Appointments a ON d.DoctorID = a.DoctorID
GROUP BY d.DoctorID;
