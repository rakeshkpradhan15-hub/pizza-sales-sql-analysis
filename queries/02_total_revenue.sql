-- calculate the total revenue generated from pizza sales

SELECT 
    ROUND(SUM(o.quantity * p.price), 2) total_revenue
FROM
    order_details AS o
        JOIN
    pizzas AS p ON p.pizza_id = o.pizza_id