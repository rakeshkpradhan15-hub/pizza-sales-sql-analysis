-- calculate the percentage contribution of each pizza type to total revenue

select  
p1.category,
(round(sum(o.quantity * p2.price)/(SELECT 
    ROUND(SUM(o.quantity * p.price), 2) total_revenue
FROM
    order_details AS o
        JOIN
    pizzas AS p ON p.pizza_id = o.pizza_id)*100,2) )  as percentage_contributed
from pizza_types p1 join pizzas p2
on p2.pizza_type_id = p1.pizza_type_id
join order_details o
on o.pizza_id = p2.pizza_id
group by category


