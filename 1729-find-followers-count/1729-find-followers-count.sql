# Write your MySQL query statement below

select  user_id, count(user_id ) as followers_count from Followers group by user_id ORDER BY user_id ASC;
