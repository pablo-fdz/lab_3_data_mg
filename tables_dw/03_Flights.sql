DROP TABLE IF EXISTS Flights CASCADE;

CREATE TABLE Flights (
    time_id VARCHAR(50),
    aircraft_id VARCHAR(50),
    total_flight_hours INT NOT NULL,
    total_flight_cycles INT,
    PRIMARY KEY (time_id, aircraft_id),
    FOREIGN KEY (time_id) REFERENCES Time(time_id),
    FOREIGN KEY (aircraft_id) REFERENCES Aircraft(registration_number)
);
