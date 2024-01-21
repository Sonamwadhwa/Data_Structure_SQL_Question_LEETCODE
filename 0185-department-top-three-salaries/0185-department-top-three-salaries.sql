# Write your MySQL query statement below

SELECT d.name AS Department, 
       e1.name As Employee, 
       e1.salary As salary
FROM Employee e1 INNER JOIN Department d
ON e1.departmentID = d.id 
where 3 > (
    select count(Distinct (e2.Salary))
    FROM Employee e2
    where e2.salary > e1.salary AND 
    e1.DepartmentId = e2.DepartmentId
)