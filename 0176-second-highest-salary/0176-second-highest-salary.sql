# Write your MySQL query statement below

 
Select MAX(SALARY)  AS SecondHighestSalary FROM EMPLOYEE where SALARY < (select max(salary)from employee)
   