SELECT  
	CONCAT(d2.model, ' ', d2.manufacturer) AS model_manufacturer, d2.registration_number,
	d1.year, d1.month, d1.day, 
	SUM(f.total_flight_hours) AS total_flight_hours,
	SUM(f.total_flight_cycles) AS total_flight_cycles
FROM flights f, time d1, aircraft d2
WHERE 
	f.time_id = d1.time_id AND 
	f.aircraft_id = d2.registration_number
GROUP BY 
	ROLLUP(d1.year, d1.month, d1.day), 
	ROLLUP(CONCAT(d2.model, ' ', d2.manufacturer), d2.registration_number)
ORDER BY d1.year, d1.month, d1.day, d2.registration_number;
	