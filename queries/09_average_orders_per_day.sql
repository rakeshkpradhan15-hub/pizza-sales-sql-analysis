-- group the order by date and calculate the average
-- number of pizza ordered per day

select round(avg(quantity)) average_piiza_orders_per_day 	 from 
(select o1.order_date , sum(o2.quantity)  quantity
from orders o1 join order_details o2
on o1.order_id = o2.order_id
group by order_date ) total_sales_each_day;