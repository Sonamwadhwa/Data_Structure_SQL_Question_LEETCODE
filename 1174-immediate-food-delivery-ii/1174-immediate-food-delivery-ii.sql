# Write your MySQL query statement below

select round ((SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) / COUNT(*)) * 100,2) AS immediate_percentage FROM delivery 
where (Customer_id, order_date) in 
(
  select customer_id, min(order_date)
  from delivery 
  group by customer_id

)