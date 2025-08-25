select title, length, name
from film f
join film_category fc on f.film_id = fc.film_id
join category c on fc.category_id = c.category_id
where name in ('Drama', 'Sports')
order by length desc
limit 1;
