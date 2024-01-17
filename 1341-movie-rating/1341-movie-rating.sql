# Write your MySQL query statement below

(select name AS results
from users 
Inner join MovieRating using(user_id)
group by user_id 
order by count(rating) desc, name 
limit 1)

union all 

(select title AS results 
from movies 
inner join MovieRating using(movie_id)
 where Month(created_at) = '02' AND YEAR(created_at) = '2020'
 group by title
 order by AVG(rating)desc , title 
 limit 1
 )