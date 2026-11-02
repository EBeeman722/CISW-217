-- Primary Key: a column that uniquely identifies a row in a table (ssn, student id, etc...)

-- foreign key: a column that points to the primary key in another table

-- creating the primary table
-- create table customers(customer_id serial primary key, name text, email text, city text)

-- creating a child table
-- create table orders(id serial primary key, customer_id integer, product text, total numeric(10,2),foreign key(customer_id) references customers(customer_id))
-- customer id linked each customer back to their id on the other table

-- inserting data
-- insert into customers(name,email,city)
-- values('alice', 'alice@gmail.com', 'boise'),('brian', 'brian@gmail.com','twin falls'),('carmen','carmen@gmail.com', 'jerome');

-- insert into orders(customer_id,product,total)
-- values(1,'laptop', 999.99), (1, 'mouse', 25.50), (2, 'headphones', 89.99), (3, 'monitor', 199.99)

--viewing with a join
-- select customers.name,
-- customers.city,
-- orders.product,
-- orders.total
-- from orders
-- join customers -- defaults to inner join
-- on orders.customer_id = customers.customer_id
