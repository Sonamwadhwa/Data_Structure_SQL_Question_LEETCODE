# Write your MySQL query statement below


select m.name FROM Employee as e inner join employee as m ON e.managerId = m.id group by e.managerId having count(e.id) >= 5