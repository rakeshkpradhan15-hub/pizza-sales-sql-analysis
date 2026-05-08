-- determine the top 3 most orderd piiza names based on revenue fro each pizza category  
select category , name , revenue , rnk from
(select category , name ,revenue ,  rank() over (partition  by category order by revenue desc) rnk
from 
(select category , name,
sum(quantity*price) revenue
from pizza_types p1 join pizzas p2
on p2.pizza_type_id = p1.pizza_type_id
join order_details o
on o.pizza_id = p2.pizza_id
group by category, name) as a) as b
where rnk  <=3 ;

