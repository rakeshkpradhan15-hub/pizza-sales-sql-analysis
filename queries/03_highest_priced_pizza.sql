-- identify the highest priced pizza

select p1.name , p2.price
from pizza_types p1 join pizzas p2
on p1.pizza_type_id=p2.pizza_type_id
order by p2.price desc 
limit 1;