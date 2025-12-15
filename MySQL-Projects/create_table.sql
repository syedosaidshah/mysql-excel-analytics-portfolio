-- Use the retail database
USE retail_analysis;

-- Create sales table
CREATE TABLE sales (
    order_id INT,
    order_date DATE,
    customer_id INT,
    customer_name VARCHAR(100),
    product VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);
