--(42) Rank customers by number of orders
select customer_id ,
       count(*) as total_orders,
rank() over(order by count(*) desc) as ranking
from orders 
group by customer_id;

--(43) dense_Rank customers by number of orders
select customer_id ,
       count(*) as total_orders,
dense_rank() over(order by count(*) desc) as ranking
from orders
group by customer_id;

--(44) Row Number for orders based on order date
select order_id ,
       order_date,
row_number() over(order by order_date) as row_num
from orders;

--(45)Rank products by quantity sold
select product_id,
       sum(quantity) as total_quantity,
rank() over(order by sum(quantity)desc) as ranking
from orders
group by product_id

--(46)Dense Rank products by quantity sold
select product_id,
       sum(quantity) as total_quantity,
dense_rank() over(order by sum(quantity)desc) as ranking
from orders
group by product_id











































