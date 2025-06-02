-- Total cases of cybersecurity attacks per year
-- Purpose: to determine what year had the highest cases for all countries
-- Dataset: Global_Cybersecurity_Threats_2015_2024.csv
-- By CreepsChips

-- Select statement where total cases per year had been counted
SELECT
	year,
    COUNT(*) AS cases
FROM global_cybersecurity_threats_2015_2024
-- Determine what year covered by the query
WHERE (year BETWEEN 2015 AND 2024)
GROUP BY year
ORDER BY year DESC;
