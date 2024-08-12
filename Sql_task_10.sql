select * from invoice

create table cust_invoice as(
	select distinct customer_id, billing_address, billing_city, billing_state, 
	billing_country, billing_postal from invoice
)

select * from cust_invoice
	
create table invoice_normalized as (
	select invoice_id, customer_id, invoice_date, total from invoice
)

select * from invoice_normalized

select * from invoice_normalized as ii
inner join cust_invoice as ci
on ii.customer_id = ci.customer_id

