-- Total revenue generated from pizza sales 

SELECT 
   round(SUM(orders_details.quantity * pizzas.price) , 2) AS total_sales
FROM
    orders_details
        JOIN
    pizzas ON pizzas.pizza_id = orders_details.pizza_id