select title, length, replacement_cost
from film f1 
where length > (select avg(length)
			   from film f2
			   where f1.replacement_cost = f2.replacement_cost)
order by 2 asc
limit 2;
