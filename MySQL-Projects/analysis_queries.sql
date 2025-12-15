-- Total revenue
SELECT SUM(quantity * price) AS total_revenue
FROM sales;

-- Revenue by month
SELECT 
    MONTH(order_date) AS month,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month;

-- Top products by revenue
SELECT 
    product,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;

-- Customer lifetime value
SELECT 
    customer_name,
    SUM(quantity * price) AS lifetime_value
FROM sales
GROUP BY customer_name
ORDER BY lifetime_value DESC;

-- Revenue by category
SELECT 
    category,
    SUM(quantity * price) AS revenue
FROM sales
GROUP BY category;
