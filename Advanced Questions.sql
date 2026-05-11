-- Advanced:
-- Q1. Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    pizza_types.category,
    ROUND(SUM(order_details.quantity * pizzas.price) / (SELECT 
                    ROUND(SUM(order_details.quantity * pizzas.price),
                                2) AS total_sales
                FROM
                    order_details
                        JOIN
                    pizzas ON pizzas.pizza_id = order_details.pizza_id) * 100,
            2) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY revenue DESC;

-- Q2. Analyze the cumulative revenue generated over time.

SELECT order_date, SUM(revenue) OVER (ORDER BY order_date) AS cumulative_revenue
FROM
(SELECT orders.order_date, SUM(pizzas.price * order_details.quantity) AS revenue
FROM pizzas 
JOIN order_details ON order_details.pizza_id = pizzas.pizza_id
JOIN orders ON orders.order_id = order_details.order_id
GROUP BY orders.order_date) AS sales;

-- Q3. Determine the top 3 most ordered pizza types based on revenue for each pizza category. 

SELECT name, category, revenue
FROM
(SELECT category, name, revenue, RANK() OVER(PARTITION BY category ORDER BY revenue DESC) AS rnk
FROM
(SELECT pizza_types.category, pizza_types.name, SUM(pizzas.price * order_details.quantity) AS revenue
FROM pizza_types
JOIN pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category, pizza_types.name) AS a) AS b
WHERE rnk <= 3;