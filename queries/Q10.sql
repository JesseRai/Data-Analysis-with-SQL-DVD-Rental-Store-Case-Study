with daily as (
	select date(payment_date) as day, sum(amount) as revenue
	from payment
	group by 1
)
select round(avg(revenue), 2) as avg_sunday_revenue
from daily
where extract(dow from day) = 0;
