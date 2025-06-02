-- Total attack based on the attack type
-- Purpose: to determine what attack type had the highest cases from 2015-2024
-- Dataset: Global_Cybersecurity_Threats_2015_2024.csv
-- By CreepsChips

-- Selecting the final query which selects the number of attacks per attack type
SELECT 
	attack_type,
    COUNT(*) AS total_attack_type
-- Subquery that covers the attack type between 2015 and 2024
FROM (SELECT year, attack_type
	  FROM global_cybersecurity_threats_2015_2024
      WHERE year BETWEEN 2015 AND 2024) AS filtered_case
GROUP BY attack_type;
