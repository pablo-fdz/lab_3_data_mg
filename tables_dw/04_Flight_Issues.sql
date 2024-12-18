DROP TABLE IF EXISTS Flight_Issues CASCADE;

CREATE TABLE Flight_Issues (
    time_id VARCHAR(50),
    aircraft_id VARCHAR(50),
    delay_rate FLOAT NOT NULL,
    cancellation_rate FLOAT NOT NULL,
    PRIMARY KEY (time_id, aircraft_id),
    FOREIGN KEY (time_id) REFERENCES Time(time_id),
    FOREIGN KEY (aircraft_id) REFERENCES Aircraft(registration_number)
);
