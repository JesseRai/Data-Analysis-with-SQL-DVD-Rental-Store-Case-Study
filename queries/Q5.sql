select first_name || ' ' || last_name as full_name, count(title)
from film f
join film_actor fa on f.film_id = fa.film_id
join actor a on fa.actor_id = a.actor_id
group by full_name
order by 2 desc
limit 1;
