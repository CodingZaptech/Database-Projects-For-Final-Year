-- ===============================================
-- Schema creation for Railway Management System
-- This file contains the creation of all tables.
-- ===============================================

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS TrainSchedules;
DROP TABLE IF EXISTS Trains;
DROP TABLE IF EXISTS RailwayStations;

-- Table to store railway stations
CREATE TABLE RailwayStations (
    StationID INT PRIMARY KEY AUTO_INCREMENT,
    StationName VARCHAR(100) NOT NULL,
    TotalPlatforms INT,
    Location VARCHAR(150),
    PinCode VARCHAR(10)
);

-- Table to store train details
CREATE TABLE Trains (
    TrainID INT PRIMARY KEY AUTO_INCREMENT,
    TrainName VARCHAR(100) NOT NULL,
    SourceStationID INT,
    DestinationStationID INT,
    DepartureTime TIME,
    ArrivalTime TIME,
    TrainType VARCHAR(50),
    SeatsAvailable INT,
    FOREIGN KEY (SourceStationID) REFERENCES RailwayStations(StationID),
    FOREIGN KEY (DestinationStationID) REFERENCES RailwayStations(StationID)
);

-- Table to store train schedules
CREATE TABLE TrainSchedules (
    ScheduleID INT PRIMARY KEY AUTO_INCREMENT,
    TrainID INT,
    StationID INT,
    ArrivalDateTime DATETIME,
    DepartureDateTime DATETIME,
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID),
    FOREIGN KEY (StationID) REFERENCES RailwayStations(StationID)
);
