-- ===============================================
-- Queries for Railway Management System
-- ===============================================

-- 1. Retrieve all trains
SELECT * FROM Trains;

-- 2. Retrieve all stations
SELECT * FROM RailwayStations;

-- 3. Retrieve full schedule of a specific train
SELECT ts.ScheduleID, r.StationName, ts.ArrivalDateTime, ts.DepartureDateTime
FROM TrainSchedules ts
JOIN RailwayStations r ON ts.StationID = r.StationID
WHERE ts.TrainID = 1;

-- 4. List trains between two stations
SELECT t.TrainName, rs1.StationName AS Source, rs2.StationName AS Destination, t.SeatsAvailable
FROM Trains t
JOIN RailwayStations rs1 ON t.SourceStationID = rs1.StationID
JOIN RailwayStations rs2 ON t.DestinationStationID = rs2.StationID
WHERE rs1.StationName = 'Central Station' AND rs2.StationName = 'North Station';

-- 5. Retrieve trains with available seats greater than a certain number
SELECT TrainName, SeatsAvailable
FROM Trains
WHERE SeatsAvailable > 150;

-- 6. List schedules for a specific station
SELECT t.TrainName, ts.ArrivalDateTime, ts.DepartureDateTime
FROM TrainSchedules ts
JOIN Trains t ON ts.TrainID = t.TrainID
WHERE ts.StationID = 2;

-- 7. Count number of trains passing through each station
SELECT r.StationName, COUNT(ts.TrainID) AS TrainsCount
FROM TrainSchedules ts
JOIN RailwayStations r ON ts.StationID = r.StationID
GROUP BY r.StationID;
