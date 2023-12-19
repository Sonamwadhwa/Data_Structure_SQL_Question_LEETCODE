# Write your MySQL query statement below

select * FROM Cinema WHERE id%2 <> 0 AND description <> 'boring' order by rating desc