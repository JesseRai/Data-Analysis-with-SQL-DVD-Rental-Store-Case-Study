select address, first_name || ' ' || last_name as full_name
from address a
left join customer c on a.address_id = c.address_id
where c.customer_id is null;
