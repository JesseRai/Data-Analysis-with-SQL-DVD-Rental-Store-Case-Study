select staff_id, round(avg(calc), 2) from
(select staff_id, customer_id, sum(amount) as calc
from payment
group by 1, 2)
group by 1;
