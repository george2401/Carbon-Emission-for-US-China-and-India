SELECT *
FROM carbon_emission_data;

SELECT country, `1990`
FROM carbon_emission_data
ORDER BY `1990` DESC
LIMIT 10;




SELECT *
FROM carbon_emission_data;

-- to see which countries produce the most CO2 in 5 years gap

-- for the year 1990

SELECT country, `1990`
FROM carbon_emission_data
ORDER BY `1990` DESC
LIMIT 10; 

--for the year 1995

SELECT country, `1995`
FROM carbon_emission_data
ORDER BY `1995` DESC
LIMIT 10; 


--for the year 2000
SELECT country, `2000`
FROM carbon_emission_data
ORDER BY `2000` DESC
LIMIT 10; 



--for the year 2005
SELECT country, `2005`
FROM carbon_emission_data
ORDER BY `2005` DESC
LIMIT 10; 

--for the year 2010
SELECT country, `2010`
FROM carbon_emission_data
ORDER BY `2010` DESC
LIMIT 10; 

--for the year 2015

SELECT country, `2015`
FROM carbon_emission_data
ORDER BY `2015` DESC
LIMIT 10; 

--for the year 2020

SELECT country, `2020`
FROM carbon_emission_data
ORDER BY `2020` DESC
LIMIT 10; 

-- create a table

CREATE TABLE carbon_emission_combined (
    country VARCHAR(50),
    year INT,
    value FLOAT
);

SELECT *
FROM carbon_emission_combined;

-- to insert values into the table

INSERT INTO carbon_emission_combined VALUES (
'China',	1990,	1826.08),
('Russia',	1990,	1811.01),
('Japan',	1990,	1015.1),
('Germany',	1990,	922.56),
('Indonesia',	1990,	758.9),
('Ukraine',	1990,	649.47),
('United Kingdom',	1990,	573.72),
('Canada',	1990,	501.53);

INSERT INTO carbon_emission_combined VALUES (
'United States',	1995,	4708.19),
('China',	1995,	2741.38),
('Russia',	1995,	1283.13),
('Brazil',	1995,	1279.91),
('Japan',	1995,	1095.51),
('Germany',	1995,	841.93),
('Indonesia',	1995,	835.67),
('United Kingdom',	1995,	538.74),
('Canada',	1995,	530.55),
('India',	1995,	515.48);

INSERT INTO carbon_emission_combined VALUES 
    ('United States', 2000,	5367.14),
('China',	2000,	2999.34),
('Brazil',	2000,	1352.32),
('Russia',	2000,	1212.27),
('Japan',	2000,	1108.9),
('Germany',	2000,	797.32),
('Indonesia',	2000,	734.27),
('India',	2000,	715.45),
('Canada',	2000,	597.71),
('United Kingdom',	2000,	542.32),

('China',	2005,	5494.58),
('United States',	2005,	5361.85),
('Brazil',	2005,	1432.97),
('India',	2005,	1140.12),
('Japan',	2005,	1118.15),
('Canada',	2005,	868.39),
('Russia',	2005,	865.91),
('Germany',	2005,	802.01),
('Indonesia',	2005,	763.98),
('United Kingdom',	2005,	553.78),

('China',	2010,	8144.89),
('United States',	2010,	5000.25),
('India',	2010,	1663.64),
('Brazil',	2010,	1499.21),
('Japan',	2010,	1059.4),
('Russia',	2010,	871.34),
('Canada',	2010,	856.2),
('Germany',	2010,	772.68),
('Indonesia',	2010,	703.62),
('South Korea',	2010,	515.1),

('China',	2015,	9151.3	),
('United States',	2015,	4581.54	),
('India',	2015,	2091.86	),
('Indonesia',	2015,	1501.22	),
('Japan',	2015,	1128.88	),
('Russia',	2015,	927.79	),
('Brazil',	2015,	747.49	),
('Germany',	2015,	731.02	),
('Canada',	2015,	711.86	),
('Democratic Republic of Congo',	2015,	604.49	),

('China',	2020,	10296.84	),
('United States',	2020,	4099.07	),
('India',	2020,	2165.2	),
('Russia',	2020,	1083.43	),
('Indonesia',	2020,	1053.73	),
('Japan',	2020,	982.26	),
('Brazil',	2020,	798.61	),
('Iran',	2020,	616.62	),
('Democratic Republic of Congo',	2020,	604.27	),
('Germany',	2020,	591.78	);


SELECT *
FROM carbon_emission_combined;



SELECT *
FROM carbon_emission_combined
ORDER BY value DESC;  -- the top three countries that produced the most amount of CO2 are Unites States, China and India



-- inspeccting United States, China and India

SELECT *
FROM carbon_emission_combined
WHERE country='United States';

SELECT *
FROM carbon_emission_combined
WHERE country='China';

SELECT *
FROM carbon_emission_combined
WHERE country='India';

CREATE TABLE emissions (
    country VARCHAR(20),
    year INT,
    value FLOAT
);

INSERT INTO emissions 
SELECT * 
FROM carbon_emission_combined
WHERE country= 'United States';

INSERT INTO emissions 
SELECT * 
FROM carbon_emission_combined
WHERE country= 'China';


INSERT INTO emissions 
SELECT * 
FROM carbon_emission_combined
WHERE country= 'India';


SELECT *
FROM emissions
ORDER BY year;

SELECT *
FROM emissions
WHERE country='United States'
ORDER BY year;

SELECT MIN(value), MAX(value)
FROM emissions
WHERE country='United States'
;

SELECT *
FROM emissions
WHERE country='United States'
ORDER BY value DESC;

SELECT AVG(value)
FROM emissions
WHERE country='United States';


SELECT *
FROM emissions
WHERE country='China'
ORDER BY year;

SELECT *
FROM emissions
WHERE country='China'
ORDER BY value;

SELECT AVG(value)
FROM emissions
WHERE country='China';

SELECT *
FROM emissions
WHERE country='India'
ORDER BY year;

SELECT AVG(value)
FROM emissions
WHERE country='India';



--It has been understood that US, China and India emitts most of the CO2.
-- On studying the emissions of United States, there has been not much of a decrease.
  --  The minimum and maxmum was found to be 4099.07 and 5367.14 resectively and corresponds to 2020 and 2000 respectively.

-- On studying the emissions of China, it is increasing with year with the least (1826.08) in 1990 and maximum(10296.8) in 2020
-- On studying the emissions of India, it is increasing with year with the least (515.48) in 1995 and maximum(2165.2) in 2020

-- On comparing the three countries it can be clearly seen that China emitts the most and the rate is alarmly increasing.
  -- Also for India the emission rate is increasing but not as much as China where China's emission is almost 5x times as that of India.
  -- For United States, they managed  to keep the emissin around 4000 mtco2e from 1990 to 2020.
  -- The average of emissions were 4793.397 for United States, 5807.772 for China and 1381.958 for India (only first 3 decimal places considered).

-- A graph has been plotted for the carbon emission of the 3 countries from 1990 to 2020.
------------------------------------------------------------------------------------------------------------------------------------------------------

