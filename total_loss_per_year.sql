-- Total financial loss for every year
-- Purpose: to determine what year have the highest financial loss due to cybersecurity attacks
-- Dataset: Global_Cybersecurity_Threats_2015_2024.csv
-- By CreepsChips

SELECT 
	year,
    ROUND(SUM(financial_loss_millions),2) AS total_loss_millions,
    RANK() OVER(ORDER BY SUM(financial_loss_millions) ASC) AS loss_rank
FROM (SELECT year, financial_loss_millions
       FROM global_cybersecurity_threats_2015_2024) AS filtered_case
GROUP BY year
ORDER BY loss_rank ASC;
