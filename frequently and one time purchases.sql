
-- This query shows all items I have purchased one time, along with:
-- How many times I bought each item
-- Total amount spent on each item

SELECT Game, Items, COUNT(*) AS time_purchased, SUM(Price) AS Total -- Adds up the total money spent on this item (rounded to 2 decimals)
FROM games
GROUP BY Game, Items -- Groups the data by each unique item
HAVING COUNT(*) = 1 -- Single purchases only
ORDER BY Game, Items DESC;


