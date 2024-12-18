DROP TABLE IF EXISTS Slot_time CASCADE;

CREATE TABLE Time (
    time_id VARCHAR(50) PRIMARY KEY,
    day INT,
    month INT NOT NULL,
    year INT NOT NULL,
);
