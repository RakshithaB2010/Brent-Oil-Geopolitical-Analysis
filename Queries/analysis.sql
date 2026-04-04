-- Average Price Per Year
SELECT 
    YEAR(date) AS year,
    ROUND(AVG(brent_price), 2) AS avg_price
FROM oil_analysis_clean
GROUP BY YEAR(date)
ORDER BY year;

-- Highest & Lowest Price Ever
SELECT 
    MAX(brent_price) AS highest_price,
    MIN(brent_price) AS lowest_price,
    ROUND(AVG(brent_price), 2) AS avg_price
FROM oil_analysis_clean;

-- Events Per Severity Level
SELECT 
    severity,
    COUNT(*) AS total_events
FROM oil_analysis_clean
GROUP BY severity
ORDER BY severity;

-- Top 5 Most Expensive Days
SELECT 
    date,
    brent_price
FROM oil_analysis_clean
ORDER BY brent_price DESC
LIMIT 5;

-- Average Price During Events vs. No Events
SELECT 
    CASE 
        WHEN event_name IS NULL OR event_name = '' OR event_name = 'No Event' THEN 'No Event'
        ELSE 'Event Day'
    END AS day_type,
    ROUND(AVG(brent_price), 2) AS avg_price,
    COUNT(*) AS total_days
FROM oil_analysis_clean
GROUP BY day_type;

-- Count of Event Days Per Year
SELECT 
    YEAR(event_date) AS year,
    COUNT(*) AS total_events
FROM oil_analysis_clean
GROUP BY YEAR(event_date)
ORDER BY year;

-- Cheapest Month to Buy Oil
SELECT 
    MONTHNAME(date) AS month,
    ROUND(AVG(brent_price), 2) AS avg_price
FROM oil_analysis_clean
GROUP BY MONTH(date), MONTHNAME(date)
ORDER BY avg_price ASC
LIMIT 1;
