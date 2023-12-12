# Write your MySQL query statement below

select Employee.name, Bonus.bonus FROM Employee LEFT JOIN Bonus ON Employee.empid = Bonus.empid where Bonus < 1000 OR bonus IS NULL