-- R1 QUERY --
-- Total FH and FC per aircraft per day
SELECT
    T.day,
    T.month,
    T.year,
    A.registration_number AS aircraft_id,
    CONCAT(A.model, ' ', A.manufacturer) AS model_manufacturer,
    SUM(F.total_flight_hours) AS total_flight_hours,
    SUM(F.total_flight_cycles) AS total_flight_cycles
FROM
    Flights F
JOIN
    Aircraft A ON F.aircraft_id = A.registration_number
JOIN
    Time T ON F.time_id = T.time_id
GROUP BY
    T.day, T.month, T.year, A.registration_number, CONCAT(A.model, ' ', A.manufacturer)
ORDER BY
    T.year, T.month, T.day, A.registration_number;

-- Total FH and FC per aircraft per month
SELECT
    T.month,
    T.year,
    A.registration_number AS aircraft_id,
    CONCAT(A.model, ' ', A.manufacturer) AS model_manufacturer,
    SUM(F.total_flight_hours) AS total_flight_hours,
    SUM(F.total_flight_cycles) AS total_flight_cycles
FROM
    Flights F
JOIN
    Aircraft A ON F.aircraft_id = A.registration_number
JOIN
    Time T ON F.time_id = T.time_id
GROUP BY
    T.month, T.year, A.registration_number, CONCAT(A.model, ' ', A.manufacturer)
ORDER BY
    T.year, T.month, A.registration_number;

-- Total FH and FC per aircraft per year
SELECT
    T.year,
    A.registration_number AS aircraft_id,
    CONCAT(A.model, ' ', A.manufacturer) AS model_manufacturer,
    SUM(F.total_flight_hours) AS total_flight_hours,
    SUM(F.total_flight_cycles) AS total_flight_cycles
FROM
    Flights F
JOIN
    Aircraft A ON F.aircraft_id = A.registration_number
JOIN
    Time T ON F.time_id = T.time_id
GROUP BY
    T.year, A.registration_number, CONCAT(A.model, ' ', A.manufacturer)
ORDER BY
    T.year, A.registration_number;
   
-- R2 QUERY --
   
-- Delay rate, cancellation rate, and ADOS per month:
   
   -- Per aircraft
SELECT
    T.month,
    T.year,
    A.registration_number AS aircraft_id,
    AVG(FI.delay_rate) AS average_delay_rate,
    AVG(FI.cancellation_rate) AS average_cancellation_rate,
    SUM(AD.number_days) AS total_days_out_of_service
FROM
    Aircraft A
JOIN
    Flight_Issues FI ON A.registration_number = FI.aircraft_id
JOIN
    ADOS AD ON A.registration_number = AD.aircraft_id AND FI.time_id = AD.time_id
JOIN
    Time T ON FI.time_id = T.time_id
GROUP BY
    T.month, T.year, A.registration_number
ORDER BY
    T.year, T.month, A.registration_number;

   	-- Per model
   
   SELECT
    T.month,
    T.year,
    CONCAT(A.model, ' ', A.manufacturer) AS model_manufacturer,
    AVG(FI.delay_rate) AS average_delay_rate,
    AVG(FI.cancellation_rate) AS average_cancellation_rate,
    SUM(AD.number_days) AS total_days_out_of_service
FROM
    Aircraft A
JOIN
    Flight_Issues FI ON A.registration_number = FI.aircraft_id
JOIN
    ADOS AD ON A.registration_number = AD.aircraft_id AND FI.time_id = AD.time_id
JOIN
    Time T ON FI.time_id = T.time_id
GROUP BY
    T.month, T.year, CONCAT(A.model, ' ', A.manufacturer)
ORDER BY
    T.year, T.month, CONCAT(A.model, ' ', A.manufacturer);


 -- Delay rate, cancellation rate, and ADOS per year:
   
   -- per aircraft
SELECT
    T.year,
    A.registration_number AS aircraft_id,
    AVG(FI.delay_rate) AS average_delay_rate,
    AVG(FI.cancellation_rate) AS average_cancellation_rate,
    SUM(AD.number_days) AS total_days_out_of_service
FROM
    Aircraft A
JOIN
    Flight_Issues FI ON A.registration_number = FI.aircraft_id
JOIN
    ADOS AD ON A.registration_number = AD.aircraft_id AND FI.time_id = AD.time_id
JOIN
    Time T ON FI.time_id = T.time_id
GROUP BY
    T.year, A.registration_number
ORDER BY
    T.year, A.registration_number;

   --per model
SELECT
    T.year,
    CONCAT(A.model, ' ', A.manufacturer) AS model_manufacturer,
    AVG(FI.delay_rate) AS average_delay_rate,
    AVG(FI.cancellation_rate) AS average_cancellation_rate,
    SUM(AD.number_days) AS total_days_out_of_service
FROM
    Aircraft A
JOIN
    Flight_Issues FI ON A.registration_number = FI.aircraft_id
JOIN
    ADOS AD ON A.registration_number = AD.aircraft_id AND FI.time_id = AD.time_id
JOIN
    Time T ON FI.time_id = T.time_id
GROUP BY
    T.year, CONCAT(A.model, ' ', A.manufacturer)
ORDER BY
    T.year, CONCAT(A.model, ' ', A.manufacturer);

