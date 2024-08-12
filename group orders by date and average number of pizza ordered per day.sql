-- group orders by date and average number of pizza ordered per day

SELECT 
    ROUND(AVG(quantity), 0)
FROM
    (SELECT 
        orders.order_date, SUM(order_details.quantity) AS quantity
    FROM
        orders
    JOIN orders_details AS order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date) AS order_quantity;	