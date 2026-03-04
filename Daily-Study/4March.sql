-- Q1 .  https://datalemur.com/questions/sql-page-with-no-likes

SELECT a.page_id
FROM pages a
left join page_likes b
on a.page_id= b.page_id
where b.page_id is NULL
order by a.page_id asc;

--Q2. https://datalemur.com/questions/tesla-unfinished-parts

SELECT part , assembly_step FROM parts_assembly
where finish_date is null;