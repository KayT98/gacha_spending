SELECT Items, COUNT(*) AS time_purchased, ROUND(SUM(Price), 2) AS Total
FROM games
GROUP BY Items
HAVING COUNT(*) > 1
ORDER BY Items DESC;


