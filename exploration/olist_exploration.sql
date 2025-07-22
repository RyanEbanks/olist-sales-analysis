-- Creating tables to import the csv into SQL manually --
create table customers
(
customer_id varchar(255),
customer_unique_id varchar(255),
customer_zip_code_prefix int,
customer_city varchar(255),
customer_state varchar(255)
);

create table order_payments
(
order_id varchar(255),
payment_sequential int,
payment_type varchar(255),
payment_installments int,
payment_value double
);

create table orders 
(
order_id varchar(255),
customer_id varchar(255),
order_status varchar(255),
order_status_cleaned varchar(255),
order_purchase_timestamp datetime,
order_approved_at datetime,
order_approved_cleaned date,
order_delivered_carrier_date datetime,
order_delivered_customer_date datetime,
order_estimated_delivery_date datetime
);

-- Loading the files into the tables --

SHOW VARIABLES LIKE 'secure_file_priv';

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/o_customers.csv' into table customers
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;

select * from customers;
select * from customers limit 100;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/o_order_payments.csv' into table order_payments
fields terminated by ','
ignore 1 lines;

select * from order_payments limit 100;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/o_orders.csv' into table orders
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;

-- Initial join statement to connect the three tables together --
select c.customer_state, o.order_status_cleaned, o.order_approved_cleaned as order_approved_date, op.payment_value from customers c
inner join orders o on c.customer_id = o.customer_id
inner join order_payments op on o.order_id = op.order_id;
