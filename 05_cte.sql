--(38)Customers whose total spending is above average
;with customer_sales as (
select c.customers_name,
       sum(o.quantity*p.price) as	total_spent
from orders o 
join customers c
on o.customer_id=c.customer_id 
join products p 
on o.product_id = p.product_id
group by c.customers_name
)
select *
from customer_sales
where total_spent >(select avg(total_spent) 
from customer_sales);

(or)
  
;with customer_sales as (
select o.customer_id,
       sum(quantity*p.price) as	total_spent
from orders o 
join products p 
on o.product_id = p.product_id
group by o.customer_id
)
select c.customers_name,
       cs.total_spent
from customer_sales cs 
join customers c 
on cs.customer_id = c.customer_id
where cs.total_spent >(select avg(total_spent) 
from customer_sales);

--(39)customers by total spending
with customer_sales as(
select c.customer_id,
       c.customers_name,
       sum(o.quantity*p.price) as total_spent
from customers c
join orders o 
on c.customer_id=o.customer_id
join products p
on p.product_id = o.product_id
group by c.customer_id,c.customers_name
)
select  top 3 *
from customer_sales
order by total_spent desc;

--(40)Products with sales greater than average product sales
;with product_sales as(
select p.product_name,
       sum(o.quantity*p.price) as sales
from products p
join orders o
on p.product_id=o.product_id
group by product_name
)
select *
from product_sales
where sales >(select avg(sales) from product_sales);

--(41)Customers who placed more orders than average
;with customer_orders as(
select customer_id ,
       count(*) as orders
from orders 
group by customer_id
)
select c.customers_name,
       co.orders
from customer_orders co 
join customers c
on c.customer_id = co.customer_id
where orders >(select avg(orders) from customer_orders)

--(42)Category with highest sales
;with category_sales as(
select p.category,
       sum(o.quantity*p.price) as sales
from products p
join orders o
on p.product_id=o.product_id
group by p.category
)
select top 1 *
from category_sales
order by sales desc;


































