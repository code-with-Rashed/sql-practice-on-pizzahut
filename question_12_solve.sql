-- Question 12
-- Analyze the cumulative revenue generated over time.

SELECT 
    order_date,
    sum(revenue) over(order by order_date) as cumulative_revenue
FROM
    (SELECT 
        orders.order_date,
            SUM(order_details.quantity * pizzas.price) AS revenue
    FROM
        orders
    JOIN order_details ON order_details.order_id = orders.order_id
    JOIN pizzas ON pizzas.pizza_id = order_details.pizza_id
    GROUP BY orders.order_date) AS sales;