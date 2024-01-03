# Write your MySQL query statement below

select product_id, year as first_year , quantity, price from Sales WHERE (product_id, year)
IN (select product_id, MIN(year) from sales group by product_id)