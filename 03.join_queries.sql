--(27)Display customer name and order id
select c.customers_name , 
       o.order_id 
from customers c 
join orders o 
on c.customer_id=o.customer_id;

--(28)Display customer name, product name and quantity
select c.customers_name,
       p.product_name,
       o.quantity 
from customers c
join orders o 
on c.customer_id=o.customer_id 
join products p
on p.product_id=o.product_id;

--(29)Display customer name, city and product purchased
select c.customers_name, 
       c.city,
	   p.product_name 
from customers c 
join orders o 
on c.customer_id=o.customer_id
join products p
on p.product_id=o.product_id;

--(30)Show all orders with product price
select o.order_id ,
       p.price
from orders o  
left join products p 
on o.product_id=p.product_id;

--(31) Calculate order amount (price * quantity)
   select o.order_id ,
          c.customers_name,
	        p.product_name,
	        p.price,
	        o.quantity,
	        p.price * o.quantity as order_amount 
from customers c 
join orders o
on c.customer_id=o.customer_id
join products p
on p.product_id = o.product_id

--(32)show customer name, product name, quantity,price and order amount
 select c.customers_name,
        p.product_name,
        o.quantity,
        p.price ,
        p.price* o.quantity as order_amount
 from customers c 
 join orders o
 on c.customer_id=o.customer_id
 join products p
 on p.product_id=o.product_id

  

















