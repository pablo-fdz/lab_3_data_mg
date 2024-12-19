SELECT  
	CONCAT(d2.model, ' ', d2.manufacturer) AS model_manufacturer, d2.registration_number,
	d1.year, d1.month,
	AVG(f1.delay_rate) AS delay_rate,
	AVG(f1.cancellation_rate) AS cancellation_rate,
	SUM(f2.number_days) AS total_ados
FROM flight_issues f1
JOIN ados f2 ON f1.aircraft_id = f2.aircraft_id 
            AND f1.time_id = f2.time_id
JOIN time d1 ON f1.time_id = d1.time_id
JOIN aircraft d2 ON f1.aircraft_id = d2.registration_number
GROUP BY 
	ROLLUP(d1.year, d1.month), 
	ROLLUP(CONCAT(d2.model, ' ', d2.manufacturer), d2.registration_number)
ORDER BY d1.year, d1.month, d2.registration_number;
	