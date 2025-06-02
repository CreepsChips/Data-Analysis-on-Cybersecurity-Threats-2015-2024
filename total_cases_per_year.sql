SELECT
	year,
    COUNT(*) AS cases
FROM global_cybersecurity_threats_2015_2024
WHERE (year BETWEEN 2015 AND 2024)
GROUP BY year
ORDER BY year DESC;