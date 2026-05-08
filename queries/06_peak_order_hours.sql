-- determine the distribution of orders by hour of the day 

select hour(order_time) hour, count(order_id) no_of_order
from orders
group by hour(order_time)