-- Question 9
-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(per_day_ordered_pizza_quantity)) AS perday_avg_pizza_orders
FROM
    (SELECT 
        orders.order_date,
            SUM(order_details.quantity) AS per_day_ordered_pizza_quantity
    FROM
        orders
    JOIN order_details ON order_details.order_id = orders.order_id
    GROUP BY orders.order_date) AS perday;