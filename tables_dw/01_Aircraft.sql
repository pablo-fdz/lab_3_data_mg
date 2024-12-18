DROP TABLE IF EXISTS Aircraft CASCADE;

CREATE TABLE Aircraft (
    registration_number VARCHAR(50) PRIMARY KEY,
    model VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL
);
