https://datalemur.com/questions/matching-skills

with d1 as (SELECT * 
FROM candidates
where skill in ('Python','Tableau','PostgreSQL')
)
select candidate_id
from d1
group by candidate_id
having count(skill) =3
order by candidate_id ASC;
