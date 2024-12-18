DROP TABLE IF EXISTS Flight_Issues CASCADE;

CREATE TABLE Flight_Issues (
    slot_id INT,
    aircraft_id VARCHAR(50),
    delay_rate FLOAT,
    cancellation_rate FLOAT,
    PRIMARY KEY (slot_id, aircraft_id),
    FOREIGN KEY (slot_id) REFERENCES Slot_time(slot_id),
    FOREIGN KEY (aircraft_id) REFERENCES Aircraft(registration_number)
);
