# Write your MySQL query statement below


select sell_date, count(DISTINCT product)AS num_sold, 
Group_CONCAT(DISTINCT product
             order by Product
             SEPARATOR ',')AS products
FROM Activities group by sell_date order by sell_date ,product 