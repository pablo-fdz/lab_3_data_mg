--OLAP QUERIES--
--Assumed Cube Structure:
--Dimensions:
--Time with levels: Year, Month, Day.
--Aircraft with levels: Aircraft ID, Model Manufacturer.
--Measures:
--Total Flight Hours.
--Total Flight Cycles.

-- R1 QUERY --
-- Total FH and FC per aircraft per day
SELECT 
    {
        [Measures].[Total Flight Hours], 
        [Measures].[Total Flight Cycles]
    } ON COLUMNS,
    NON EMPTY 
    (
        [Time].[Year].[Year] *
        [Time].[Month].[Month] *
        [Time].[Day].[Day] *
        [Aircraft].[Registration Number].[Aircraft ID] *
        [Aircraft].[Model Manufacturer].[Model Manufacturer]
    ) ON ROWS
FROM 
    [Flights Cube]
ORDER BY 
    [Time].[Year] ASC, 
    [Time].[Month] ASC, 
    [Time].[Day] ASC, 
    [Aircraft].[Registration Number] ASC;
   
-- Total FH and FC per aircraft per month
   SELECT 
    {
        [Measures].[Total Flight Hours], 
        [Measures].[Total Flight Cycles]
    } ON COLUMNS,
    NON EMPTY 
    (
        [Time].[Year].[Year] *
        [Time].[Month].[Month] *
        [Aircraft].[Registration Number].[Aircraft ID] *
        [Aircraft].[Model Manufacturer].[Model Manufacturer]
    ) ON ROWS
FROM 
    [Flights Cube]
ORDER BY 
    [Time].[Year] ASC, 
    [Time].[Month] ASC, 
    [Aircraft].[Registration Number] ASC;

  --  Total FH and FC per aircraft per year
   SELECT 
    {
        [Measures].[Total Flight Hours], 
        [Measures].[Total Flight Cycles]
    } ON COLUMNS,
    NON EMPTY 
    (
        [Time].[Year].[Year] *
        [Aircraft].[Registration Number].[Aircraft ID] *
        [Aircraft].[Model Manufacturer].[Model Manufacturer]
    ) ON ROWS
FROM 
    [Flights Cube]
ORDER BY 
    [Time].[Year] ASC, 
    [Aircraft].[Registration Number] ASC;

--R2 Queries--
--Cube assumptions--
   
--   Dimensions:
--Time with Year and Month levels.
--Aircraft with Registration Number level.
   
--Measures:
--Average Delay Rate, 
--Average Cancellation Rate, 
--Total Days Out of Service
      
-- Delay rate, cancellation rate, and ADOS per month:
   
   -- Per aircraft
   
   SELECT 
    {
        [Measures].[Average Delay Rate], 
        [Measures].[Average Cancellation Rate], 
        [Measures].[Total Days Out of Service]
    } ON COLUMNS,
    NON EMPTY 
    (
        [Time].[Year].[Year] *
        [Time].[Month].[Month] *
        [Aircraft].[Registration Number].[Aircraft ID]
    ) ON ROWS
FROM 
    [Operations Cube]
ORDER BY 
    [Time].[Year] ASC, 
    [Time].[Month] ASC, 
    [Aircraft].[Registration Number] ASC;

   -- Per model
   
   SELECT 
    {
        [Measures].[Average Delay Rate], 
        [Measures].[Average Cancellation Rate], 
        [Measures].[Total Days Out of Service]
    } ON COLUMNS,
    NON EMPTY 
    (
        [Time].[Year].[Year] *
        [Time].[Month].[Month] *
        [Aircraft].[Model Manufacturer].[Model Manufacturer]
    ) ON ROWS
FROM 
    [Operations Cube]
ORDER BY 
    [Time].[Year] ASC, 
    [Time].[Month] ASC, 
    [Aircraft].[Model Manufacturer] ASC;

   
 -- Delay rate, cancellation rate, and ADOS per year:
   
   -- per aircraft
   
   SELECT 
    {
        [Measures].[Average Delay Rate], 
        [Measures].[Average Cancellation Rate], 
        [Measures].[Total Days Out of Service]
    } ON COLUMNS,
    NON EMPTY 
    (
        [Time].[Year].[Year] *
        [Aircraft].[Registration Number].[Aircraft ID]
    ) ON ROWS
FROM 
    [Operations Cube]
ORDER BY 
    [Time].[Year] ASC, 
    [Aircraft].[Registration Number] ASC;

  -- per model
   SELECT 
    {
        [Measures].[Average Delay Rate], 
        [Measures].[Average Cancellation Rate], 
        [Measures].[Total Days Out of Service]
    } ON COLUMNS,
    NON EMPTY 
    (
        [Time].[Year].[Year] *
        [Aircraft].[Model Manufacturer].[Model Manufacturer]
    ) ON ROWS
FROM 
    [Operations Cube]
ORDER BY 
    [Time].[Year] ASC, 
    [Aircraft].[Model Manufacturer] ASC;

   
   
   
   
   
   
   
   
   
   
   