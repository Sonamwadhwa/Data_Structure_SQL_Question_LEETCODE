# Write your MySQL query statement below
SELECT visited_on , 
 ( 
      SELECT SUM(amount)
      FROM Customer
      where visited_on BETWEEN DATE_SUB(c.visited_on, INTERVAL 6 DAY)
      AND c.visited_on
 ) AS amount , 
 ROUND((
    SELECT SUM(amount)/7
    FROM Customer 
    where visited_on BETWEEN DATE_SUB(c.visited_on, INTERVAL 6 DAY)
    AND c.visited_on
    ),2) AS average_amount
FROM Customer c
WHERE visited_on  >= 
      (SELECT DATE_ADD(MIN(visited_on),  INTERVAL 6 DAY)
      from Customer
)
GROUP BY visited_on 
ORDER BY visited_on