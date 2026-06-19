CREATE TABLE customers(
    customer_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE products(
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders(
    order_id INT,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE
);
