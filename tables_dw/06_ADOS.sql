DROP TABLE IF EXISTS ADOS CASCADE;

CREATE TABLE ADOS (
    slot_id VARCHAR(80),
    aircraft_id VARCHAR(50),
    number_days INT,
    PRIMARY KEY (slot_id, aircraft_id),
    FOREIGN KEY (slot_id) REFERENCES Slot_time(slot_id),
    FOREIGN KEY (aircraft_id) REFERENCES Aircraft(registration_number)
);
