/*use sql_store;
select 
	c.customer_id,
    c.first_name,
    o.order_id,
    s.name
from customers c
left join orders o
	on c.customer_id = o.customer_id
left join shippers s
	on o.shipper_id = s.shipper_id
order by o.order_id
use sql_store;
select 
	p.product_id,
    p.name,
    oi.quantity
from products p
left join order_items oi
	on p.product_id = oi.product_id
order by p.product_id
select 
	o.order_date,
    o.order_id,
    c.first_name,
    s.name as shipper,
    os.name as status
from orders o
left join customers c 
	on o.customer_id = c.customer_id
left join shippers s
	on o.shipper_id = s.shipper_id
left join order_statuses os
	on o.status = os.order_status_id
use sql_hr;
select 
	e.employee_id,
    e.first_name,
    em.first_name as manager
from employees e
left join employees em
	on e.reports_to = em.employee_id
use sql_store;
select 
    c.first_name,
    o.order_id,
    s.name
from customers c
join orders o
	-- on c.customer_id = o.customer_id
    using(customer_id)
left join shippers s
	using(shipper_id)*/
use sql_invoicing;
select 
	p.date,
    c.name as client,
    p.amount,
    pm.name
from payments p
join payment_methods pm
	on p.payment_method = pm.payment_method_id
join clients c
	using(client_id)