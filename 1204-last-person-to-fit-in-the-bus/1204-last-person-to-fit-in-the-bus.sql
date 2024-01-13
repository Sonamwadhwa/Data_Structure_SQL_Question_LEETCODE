# Write your MySQL query statement below


SELECT Q1.person_name from queue  q1 INNER JOIN queue q2 
ON q1.turn >= q2.turn 
group by q1.turn 
having SUM(q2.weight) <= 1000
order by sum(q2.weight) DESC
LIMIT 1