with revenue_per_title_per_category as (
  select
    fc.category_id,
    c.name,
    i.film_id,
    f.title,
    SUM(p.amount) AS title_total
  from payment p
  join rental r on r.rental_id    = p.rental_id
  join inventory i on i.inventory_id = r.inventory_id
  join film_category fc on fc.film_id     = i.film_id
  join category c on c.category_id  = fc.category_id
  join film f on f.film_id      = i.film_id
  group by fc.category_id, c.name, i.film_id, f.title
),
ranked as (
  select
    name,
    title,
    title_total,
    row_number() over (partition by name order by title_total desc, title asc) as rn
  from revenue_per_title_per_category
)
select name, title, title_total
from ranked
where rn = 1
order by name;
