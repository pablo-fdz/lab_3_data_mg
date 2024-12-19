DROP TABLE IF EXISTS ADOS CASCADE;

CREATE TABLE ADOS (
    time_id VARCHAR(50),
    aircraft_id VARCHAR(50),
    number_days FLOAT NOT NULL,
    PRIMARY KEY (time_id, aircraft_id),
    FOREIGN KEY (time_id) REFERENCES Time(time_id),
    FOREIGN KEY (aircraft_id) REFERENCES Aircraft(registration_number)
);
