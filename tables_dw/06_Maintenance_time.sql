DROP TABLE IF EXISTS Maintenance_time CASCADE;

CREATE TABLE Maintenance_time (
    maintenance_id INT PRIMARY KEY,
    maint_month INT,
    maint_year INT
);
