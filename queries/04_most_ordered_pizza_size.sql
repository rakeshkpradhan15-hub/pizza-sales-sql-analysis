-- identify most commom pizza size orderd

SELECT size, COUNT(order_details_id) AS total_count
FROM
    pizzas p
        JOIN
    order_details o ON p.pizza_id = o.pizza_id
GROUP BY size
ORDER BY total_count DESC;




