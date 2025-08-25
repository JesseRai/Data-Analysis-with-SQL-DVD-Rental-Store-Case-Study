select count(*), 
case
	when replacement_cost between 9.99 and 19.99 then 'low'
	when replacement_cost between 20 and 24.99 then 'medium'
	when replacement_cost between 25 and 29.99 then 'high'
	end as cost_category
from film
group by 2;
