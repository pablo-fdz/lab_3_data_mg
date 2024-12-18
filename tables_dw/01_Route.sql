DROP TABLE IF EXISTS Route CASCADE;

CREATE TABLE Route (
    route_id VARCHAR(80) PRIMARY KEY,
    day_departure INT,
    month_departure INT,
    year_departure INT,
    day_arrival INT,
    month_arrival INT,
    year_arrival INT
);
