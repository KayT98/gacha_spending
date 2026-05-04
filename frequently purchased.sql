
-- This query shows all items I have purchased more than once, along with:
-- How many times I bought each item
-- Total amount spent on each item

SELECT Game, Items, COUNT(*) AS time_purchased, ROUND(SUM(Price), 2) AS Total -- Adds up the total money spent on this item (rounded to 2 decimals)
FROM games
GROUP BY Game, Items -- Groups the data by each unique item and game
HAVING COUNT(*) > 1 -- Filter to show only items bought multiple times (exclude single purchases)
ORDER BY Game, Items DESC;

--------------------------------------------------------------------------------------------

-- This query shows all items I have purchased only once, along with:
-- Total amount spent on each item

SELECT Game, Items, COUNT(*) AS time_purchased, SUM(Price) AS Total
FROM games
GROUP BY Game, Items -- Groups the data by each unique item and game
HAVING COUNT(*) = 1 -- One time purchases only
ORDER BY Game, Items DESC;


