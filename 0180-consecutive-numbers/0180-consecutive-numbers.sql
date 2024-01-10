# Write your MySQL query statement below

WITH CTE AS 
(SELECT *,
LEAD(num, 1)OVER(order by id)AS "lead_one",
LEAD(num, 2)OVER(order by id)AS "lead_two"
FROM LOGS)

select DISTINCT num AS "ConsecutiveNums"
from cte 
where num = lead_one AND num = lead_two