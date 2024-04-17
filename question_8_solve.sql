-- Question 8
-- Join relevant tables to find the category-wise distribution of pizzas.

SELECT 
    category, COUNT(name) total_pizza
FROM
    pizza_types
GROUP BY category;