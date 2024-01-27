# Write your MySQL query statement below

select product_name, SUM(unit)AS unit from products INNER JOIN orders USING 
(product_id)where Month(order_date) = 2 AND YEAR(order_date) = 2020 
group by product_name 
Having unit >= 100