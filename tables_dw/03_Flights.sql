DROP TABLE IF EXISTS Flights CASCADE;

CREATE TABLE Flights (
    route_id VARCHAR(80),
    aircraft_id VARCHAR(50),
    total_flight_hours INT,
    total_flight_cycles INT,
    PRIMARY KEY (route_id, aircraft_id),
    FOREIGN KEY (route_id) REFERENCES Route(route_id),
    FOREIGN KEY (aircraft_id) REFERENCES Aircraft(registration_number)
);
