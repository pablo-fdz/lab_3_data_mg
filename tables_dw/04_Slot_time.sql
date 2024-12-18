DROP TABLE IF EXISTS Slot_time CASCADE;

CREATE TABLE Slot_time (
    slot_id INT PRIMARY KEY,
    slot_month_start INT,
    slot_year_start INT,
    slot_month_end INT,
    slot_year_end INT
);
