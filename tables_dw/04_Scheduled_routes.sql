DROP TABLE IF EXISTS Scheduled_route CASCADE;

CREATE TABLE Scheduled_route (
    slot_id INT PRIMARY KEY,
    scd_month_departure INT,
    scd_year_departure INT,
    scd_month_arrival INT,
    scd_year_arrival INT
);
