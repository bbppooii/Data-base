/*use sql_store;
select *
from payments o
join clients c on o.customer_id = c.customer_id
join order_statuses os on o.status = os.order_status_id
select *
from order_items oi
join order_item_notes oin 
 	on oi.order_id = oin.order_id	
	and oi.product_id = oin.product_id
select *
from orders o
join customers c 
	on o.customer_id = c.customer_id
select *
from orders o, customers c
where o.customer_id = c.customer_id*/
