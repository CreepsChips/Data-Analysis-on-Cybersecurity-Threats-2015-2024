SELECT 
	year,
    ROUND(SUM(financial_loss_millions),2) AS total_loss_millions
FROM (SELECT year, financial_loss_millions
       FROM global_cybersecurity_threats_2015_2024) AS filtered_case
GROUP BY year
ORDER BY year DESC;