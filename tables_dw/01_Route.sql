DROP TABLE IF EXISTS Route CASCADE;

CREATE TABLE Route (
    route_id INT PRIMARY KEY,
    day_departure INT,
    month_departure INT,
    year_departure INT,
    day_arrival INT,
    month_arrival INT,
    year_arrival INT
);
