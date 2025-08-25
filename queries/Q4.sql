select count(title), name
from film f
join film_category fc on f.film_id = fc.film_id
join category c on fc.category_id = c.category_id
group by name
order by 1 desc
limit 1;
