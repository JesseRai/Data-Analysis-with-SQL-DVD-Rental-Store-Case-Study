select sum(amount) as sales, city
from payment p
join customer c on p.customer_id = c.customer_id
join address a on c.address_id = a.address_id
join city ci on a.city_id = ci.city_id
group by 2
order by 1 desc
limit 1;
