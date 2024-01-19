# Write your MySQL query statement below

select id, count(*) AS num 
FROM ( 
      select  requester_id AS id from RequestAccepted
    
UNION ALL   
    
      select accepter_id from RequestAccepted
)AS friend_count
Group by id 
order by num DESC 
LIMIT 1 
    
    