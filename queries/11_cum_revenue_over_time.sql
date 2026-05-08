-- analyze the cumulative revenue generated over time 
select order_date, sum(revenue) over (order by order_date) as cum_revenue
from 
(select order_date, 
sum(o1.quantity*p.price ) as revenue 
from order_details o1 join pizzas p
on o1.pizza_id = p.pizza_id join orders o2
on o2.order_id = o1.order_id
group by order_date) 
as sales ;
	