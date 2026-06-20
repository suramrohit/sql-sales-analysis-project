/* =====================================
   BASIC SQL QUERIES
   Project: sql-sales-analysis
   Author: Suram Rohit
===================================== */

--(1) show all customers
select * from customers;

--(2) show all products
select * from products;

--(3) show all orders
select * from orders;

--(4) count total customers
select count(*) as total_customers
from customers;

--(5) count total products
select count(*) as total_products 
from products;

--(6) count total orders
select count(*) as total_orders
from orders;

--(7) find highest priced product
select *
from products 
where price =(select max(price) from products);

--(8) find lowest priced product
select *
from products
where price =(select min(price) from products);

--(9) find average product price
select avg(price) as average_price 
from products;

--(10) find total quantity sold
select sum(quantity) as total_quantity_sold
from orders;

--(11) find total sales amount
select sum(o.quantity * p.price) as total_sales_amount 
from orders o 
join products p 
on o.product_id=p.product_id;

--(12) find avgerage quantity sold
select avg(quantity) as avg_quantity_sold
from orders;

--(13) find products priced above average price
select *
from products
where price >(select avg(price) from products);

--(14) show products order by price ascending
select *
from products
order by price asc;
  
--(15) show products order by price descending
select * 
from products
order by price desc;
  
--(16) find customer with highest customer_id
select *
from customers 
where customer_id=(select max(customer_id)from customers);

--(17) find customer with lowest customer_id
select *
from customers
where customer_id=(select min(customer_id) from customers);

--(18) show distinct city of customer
select distinct(city)
from customers;

--(19) find total number of unique products orderd
select count(distinct product_id) as unique_products
from orders;

--(20) show top 5 expensive product
select  top 5 *
from products 
order by price desc;












