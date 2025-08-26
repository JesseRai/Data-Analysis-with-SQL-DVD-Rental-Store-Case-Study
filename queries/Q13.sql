select 
	p.payment_id,
	p.amount,
	c.name,
	sum(p.amount) over (partition by c.category_id) as category_total
from payment p
join rental r on p.rental_id = r.rental_id
join inventory i on r.inventory_id = i.inventory_id
join film_category fc on i.film_id = fc.film_id
join category c on fc.category_id = c.category_id
order by p.payment_id asc;
