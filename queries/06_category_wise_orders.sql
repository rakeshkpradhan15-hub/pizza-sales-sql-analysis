-- join the necessary tables to 
-- find the total quantity of rach pizza category ordered 

select category,sum(quantity) total_quantity_orderd  from pizzas p1
join pizza_types p2 
on p1.pizza_type_id = p2.pizza_type_id
join order_details o 
on o.pizza_id = p1.pizza_id
group by category
order by total_quantity_orderd desc