--(21) Count customers in each city
select city,
count(*) as total_count
from customers
group by city;
    
--(22)Count products in each category
select category,
count(*) as total_product
from products
group by category; 

--(23)Total quantity sold for each product
select p.product_name,
sum(o.quantity) as total_quantity_sold 
from products p
join orders o
on p.product_id=o.product_id
group by p.product_name;

--(24)Total orders placed by each customer
select c.customers_name,
count(*) as total_orders 
from customers c 
join orders o 
on c.customer_id=o.customer_id
group by c.customers_name;

--(25)Average product price by category
select category ,
avg(price) as avg_product_price 
from products
group by category

--(26)Total revenue by product
select p. product_name ,
sum(o.quantity* p.price) as total_revenue
from products p join orders o
on p.product_id=o.product_id
group by product_name
















