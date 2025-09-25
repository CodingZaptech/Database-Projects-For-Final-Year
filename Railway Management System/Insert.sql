-- ===============================================
-- Insert sample data into Railway Management System
-- ===============================================

-- Insert railway stations
INSERT INTO RailwayStations (StationName, TotalPlatforms, Location, PinCode)
VALUES
('Central Station', 10, 'Downtown', '100001'),
('North Station', 5, 'Uptown', '100002'),
('South Station', 7, 'Southside', '100003');

-- Insert trains
INSERT INTO Trains (TrainName, SourceStationID, DestinationStationID, DepartureTime, ArrivalTime, TrainType, SeatsAvailable)
VALUES
('Express 101', 1, 2, '09:00:00', '12:30:00', 'Express', 200),
('Local 202', 2, 3, '14:00:00', '16:45:00', 'Local', 150),
('Express 303', 3, 1, '18:00:00', '22:00:00', 'Express', 180);

-- Insert train schedules
INSERT INTO TrainSchedules (TrainID, StationID, ArrivalDateTime, DepartureDateTime)
VALUES
(1, 1, '2025-09-25 09:00:00', '2025-09-25 09:15:00'),
(1, 2, '2025-09-25 12:30:00', '2025-09-25 12:45:00'),
(2, 2, '2025-09-25 14:00:00', '2025-09-25 14:10:00'),
(2, 3, '2025-09-25 16:45:00', '2025-09-25 17:00:00'),
(3, 3, '2025-09-25 18:00:00', '2025-09-25 18:15:00'),
(3, 1, '2025-09-25 22:00:00', '2025-09-25 22:15:00');
