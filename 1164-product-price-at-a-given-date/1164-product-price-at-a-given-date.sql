# Write your MySQL query statement below


SELECT product_id , NEW_PRICE AS PRICE 
FROM PRODUCTS 
WHERE (product_id , change_date) IN 
(
    select product_id, max(change_date)
    from products
    where change_date <= '2019-08-16'
    group by product_id
)
UNION 

select product_id , 10 AS price 
from products 
where product_id NOT IN 
(
  select product_id 
  from products
  where change_date <= '2019-08-16'
    
)