DROP TABLE IF EXISTS ADOS CASCADE;

CREATE TABLE ADOS (
    maintenance_time_id INT,
    aircraft_id VARCHAR(50),
    number_days INT,
    PRIMARY KEY (maintenance_time_id, aircraft_id),
    FOREIGN KEY (maintenance_time_id) REFERENCES Maintenance_time(maintenance_id),
    FOREIGN KEY (aircraft_id) REFERENCES Aircraft(registration_number)
);
