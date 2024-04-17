-- Question 7
-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time) AS per_hour,
    COUNT(orders.order_id) AS total_order
FROM
    orders
GROUP BY per_hour;