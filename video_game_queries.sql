SELECT * from games limit 5;
-- Top 5 Highest Sales Games
SELECT name,global_sales from games ORDER by global_sales DESC LIMIT 5;
-- Genre Wise Total Sales
SELECT genre, sum(global_sales) from games GROUP by genre;
-- Average Sales Per Platform
SELECT platform,avg(global_sales) from games GROUP by platform order by avg(global_sales) DESC;
-- Games After 2010
SELECT name, year from games where year > 2010;
-- Count Games Per Genre
SELECT  genre, count(*) from games GROUP by genre;
-- Top Publisher by Sales
SELECT sum(global_sales), publisher FROM games group by publisher order by sum(global_sales) DESC;
-- Highest NA Sales
SELECT name, na_sales from games ORDER by na_sales desc;
-- Sales Greater Than Average
select name, global_sales from games where global_sales > (SELECT AVG (global_sales) FROM games);
-- Distinct Platforms
SELECT DISTINCT platform FROM games;
-- Year Wise Game Count
SELECT year, COUNT(*) from games GROUP by year;
