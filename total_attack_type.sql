-- Selecting the final query which selects the number of attacks per attack type
SELECT 
	attack_type,
    COUNT(*) AS total_attack_type
-- Subquery that covers the attack type between 2015 and 2024
FROM (SELECT year, attack_type
	  FROM global_cybersecurity_threats_2015_2024
      WHERE year BETWEEN 2015 AND 2024) AS filtered_case
GROUP BY attack_type;
