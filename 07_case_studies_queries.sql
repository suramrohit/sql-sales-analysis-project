--(43)Top 5 Customers by Revenue
select top 5
       c.customers_name, 
      sum(o.quantity*p.price) as revenue
from customers c 
join orders o
on c.customer_id=o.customer_id 
join products p 
on o.product_id= p.product_id
group by c.customers_name
order by revenue desc;

--(44)Top 5 Best-Selling Products
select top 5 
       p.product_name ,
       sum(o.quantity) as best_selling_products
from products p
join orders o
on p.product_id=o.product_id
group by p.product_name
order by best_selling_products desc;

--(45)Category Generating Highest Revenue
select p.category,
       sum(o.quantity *p.price) as revenue
from products p 
join orders o
on p.product_id=o.product_id
group by category
order by revenue desc;

--(46)Customers Spending Above Average
;with customer_sales as(
select o.customer_id,
       sum(o.quantity*p.price) as sales
from orders o 
join products p 
on o.product_id=p.product_id
group by customer_id
)
select * 
from customer_sales
where sales>(select avg(sales) from customer_sales);

--(47)Products Never Sold
select p.product_name
from products p 
left join orders o
on p.product_id=o.product_id
where order_id is  null;

--(48)Customers Who Never Ordered
select c.customers_name
from customers c
left join orders o
on c.customer_id=o.customer_id
where o.order_id is null;

--(49)Customer With Highest Number of Orders
select top 1 
customer_id ,
count(*) as total_orders
from orders
group by customer_id
order by total_orders desc;

--(50)Most Expensive Product Sold
 select top 1 *
 from products
 order by price desc;

--(51)Top 3 Categories by Revenue
 select top 3 
        p.category ,
        sum(o.quantity * p.price) as revenue
 from products p
 join orders o
 on p.product_id=o.product_id
 group by p.category
 order by revenue desc;

--(52)Products With Sales Above Average Product Sales
 ;with products_sales as(
 select p.product_name , 
       sum(o.quantity *p.price) as sales
 from products p
 join orders o
 on p.product_id=o.product_id
 group by product_name
 )
 select *
 from products_sales
 where sales>(select avg(sales) from products_sales);























































