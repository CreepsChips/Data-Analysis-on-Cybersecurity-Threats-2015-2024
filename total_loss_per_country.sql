-- Total financial loss for every country
-- Purpose: to determine what countries have the highest financial loss due to cybersecurity attacks
-- Dataset: Global_Cybersecurity_Threats_2015_2024.csv
-- By CreepsChips

SELECT 
	country,
    ROUND(SUM(financial_loss_millions),2) AS total_loss_millions
FROM (SELECT country, financial_loss_millions
       FROM global_cybersecurity_threats_2015_2024) AS filtered_case
GROUP BY country
ORDER BY total_loss_millions DESC;
    
