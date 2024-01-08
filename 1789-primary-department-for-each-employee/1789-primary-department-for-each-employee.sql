# Write your MySQL query statement below


select distinct employee_id, department_id from Employee 
WHERE EMPLOYEE_ID IN (
    SELECT EMPLOYEE_ID FROM EMPLOYEE GROUP BY EMPLOYEE_ID HAVING COUNT(*)=1
) OR PRIMARY_FLAG = 'Y'
ORDER BY EMPLOYEE_ID