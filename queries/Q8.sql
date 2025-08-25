select sum(amount) as sales, country || ', ' || city as location
from payment p
join customer c on p.customer_id = c.customer_id
join address a on c.address_id = a.address_id
join city ci on a.city_id = ci.city_id
join country co on ci.country_id = co.country_id
group by 2
order by 1 asc
limit 1;
