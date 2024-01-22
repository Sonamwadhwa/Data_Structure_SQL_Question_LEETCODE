# Write your MySQL query statement below

select user_id,
CONCAT(UPPER(LEFT(name,1)) , LOWER(RIGHT(name , LENGTH(name)-1))) AS name 
FROM USERS order by user_id