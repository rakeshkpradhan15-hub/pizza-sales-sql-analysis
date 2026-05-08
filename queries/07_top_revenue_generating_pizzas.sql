-- determine top 3 ordered pizza based on the revenue

select  
p1.name,
sum(o.quantity * p2.price) revenue
from pizza_types p1 join pizzas p2
on p2.pizza_type_id = p1.pizza_type_id
join order_details o
on o.pizza_id = p2.pizza_id
group by name
order by revenue desc
limit 3

