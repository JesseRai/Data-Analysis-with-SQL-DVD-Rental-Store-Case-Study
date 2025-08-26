with total_customer_by_district as (
	select district, c.customer_id, sum(amount) as calc
	from payment p
	join customer c on p.customer_id = c.customer_id
	join address a on c.address_id = a.address_id
	group by 1, 2
)	
	select district, round(avg(calc), 2) as avg_customer_lifetime_value
	from total_customer_by_district
	group by 1 
	order by 2 desc
	limit 1;
