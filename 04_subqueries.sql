--(33) Customers who placed at least one order
select  distinct c.customers_name
from customers c 
join orders o 
on c.customer_id=o.customer_id;

--(34) Customers who never placed an order
select c.customers_name
from customers c 
left join orders o
on c.customer_id=o.customer_id 
where o.order_id is null;

--(35)Products that were never sold
select p.product_name 
from products p 
left join orders o 
on p.product_id=o.product_id
where o.order_id is null;

--(36)Products priced above average price
select *
from products 
where price>(select avg(price) from products);

--(37)Customer(s) with the highest number of orders
select c.customers_name,
count(*) as total_count 
from customers c 
join orders o 
on c.customer_id =o.customer_id 
group by c.customers_name
having count(*) =(
select max(order_count)
from (select count(*)  as order_count 
from orders
group by customer_id)
t);
















