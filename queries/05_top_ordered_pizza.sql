-- list the top 5 most ordered pizza along with there quantity

select name,sum(quantity) total_quantity_orderd  from pizzas p1
join pizza_types p2 
on p1.pizza_type_id = p2.pizza_type_id
join order_details o 
on o.pizza_id = p1.pizza_id
group by name
order by total_quantity_orderd desc
limit 5