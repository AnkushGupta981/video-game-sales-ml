-- 1. INNER JOIN – Game Name, Platform, Company
SELECT v.name,v.platform,p.company from vgsales v 
INNER Join platform_info p On v.platform=p.platform LIMIT 10;

-- 2. LEFT JOIN – All Games with Company (Null Allowed)
SELECT v.name,v.platform,p.company from vgsales v 
Left Join platform_info p On v.platform=p.platform LIMIT 10;

-- 3. Genre Wise Total Games
SELECT genre, count(*) as total_games from vgsales GROUP by genre;

-- 4. Platform Wise Game Count
SELECT platform, COUNT(*) FROM vgsales GROUP BY platform;

-- 5. Genres Having More Than 500 Games
SELECT genre, COUNT(*) AS total_games FROM vgsales
GROUP BY genre HAVING COUNT(*) > 500;

-- 6. Average Global Sales per Publisher
SELECT publisher, AVG(global_sales)FROM vgsales GROUP BY publisher ORDER BY AVG(global_sales) DESC;

-- 7. Year Wise Game Count (Descending)
SELECT year, COUNT(*) fROM vgsales GROUP BY year ORDER By Count(*) desc ;

-- 8. Total Global Sales per Platform
SELECT platform, SUM(global_sales) FROM vgsales GROUP BY platform;

-- 9. Highest Global Sales per Genre
SELECT genre, MAX(global_sales) FROM vgsales GROUP BY genre;

-- 10. Publishers with More Than 100 Games
SELECT publisher, COUNT(*) FROM vgsales GROUP BY publisher HAVING COUNT(*) > 100;
