# Write your MySQL query statement below

select 
      Case 
          WHEN 
              id = (SELECT MAX(id) FROM SEAT)AND MOD(id ,2)= 1
              THEN id
          when 
              Mod(id ,2) = 1
              THEN id + 1 
          ELSE 
            id - 1 
      END AS id , student 
FROM Seat
order by id 